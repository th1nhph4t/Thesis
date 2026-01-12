from pynq import Overlay, PL
from PIL import Image
import numpy as np
import cffi
import os
import tempfile

# Runtime constants
RUNTIME_HW = "python_hw"
RUNTIME_SW = "python_sw"

# Network constants
NETWORK_CNVW1A1 = "cnvW1A1"

# Platform detection 
if os.environ.get('BOARD') == 'Pynq-Z2':
    PLATFORM = "pynqZ2"
else:
    # Default to PYNQ-Z2 if not specified
    PLATFORM = "pynqZ2"
    os.environ['BOARD'] = 'Pynq-Z2'

# Directory paths
BNN_ROOT_DIR = os.path.dirname(os.path.realpath(__file__))
BNN_LIB_DIR = os.path.join(BNN_ROOT_DIR, 'libraries', PLATFORM)
BNN_BIT_DIR = os.path.join(BNN_ROOT_DIR, 'bitstreams', PLATFORM)
BNN_PARAM_DIR = os.path.join(BNN_ROOT_DIR, 'params')

# CFFI setup
_ffi = cffi.FFI()
_ffi.cdef("""
void load_parameters(const char* path);
int inference(const char* path, int results[64], int number_class, float *usecPerImage);
int* inference_multiple(const char* path, int number_class, int *image_number, float *usecPerImage, int enable_detail);
void free_results(int * result);
void deinit();
""")

_libraries = {}

def available_params(network):
    """Check available datasets for a given network"""
    if not os.path.exists(BNN_PARAM_DIR):
        return []
    
    datasets = os.listdir(BNN_PARAM_DIR)
    ret = []
    for d in datasets:
        param_path = os.path.join(BNN_PARAM_DIR, d)
        if os.path.isdir(param_path):
            supported_nets = os.listdir(param_path)
            if network in supported_nets:
                ret.append(d)
    return ret

class PynqBNN:
    """Interface for BNN hardware/software runtime"""
    
    def __init__(self, runtime, network, load_overlay=True):
        self.bitstream_name = None
        
        if runtime == RUNTIME_HW:
            self.bitstream_name = f"{network}-{PLATFORM}.bit"
            self.bitstream_path = os.path.join(BNN_BIT_DIR, self.bitstream_name)
            
            if PL.bitfile_name != self.bitstream_path:
                if load_overlay:
                    Overlay(self.bitstream_path).download()
                else:
                    raise RuntimeError("Incorrect Overlay loaded")
        
        dllname = f"{runtime}-{network}-{PLATFORM}.so"
        if dllname not in _libraries:
            _libraries[dllname] = _ffi.dlopen(os.path.join(BNN_LIB_DIR, dllname))
        
        self.interface = _libraries[dllname]
        self.num_classes = 0
        self.classes = []

    def __del__(self):
        if hasattr(self, 'interface'):
            self.interface.deinit()

    def load_parameters(self, params):
        """Load network parameters"""
        if not os.path.isabs(params):
            params = os.path.join(BNN_PARAM_DIR, params)
        
        if os.path.isdir(params):
            self.interface.load_parameters(params.encode())
            
            # Load class names
            classes_file = os.path.join(params, "classes.txt")
            if os.path.exists(classes_file):
                with open(classes_file) as f:
                    self.classes = [c.strip() for c in f.readlines()]
                self.classes = [c for c in self.classes if c]  # Remove empty strings
            else:
                print(f"Warning: classes.txt not found in {params}")
        else:
            raise FileNotFoundError(f"Parameter directory not found: {params}")

    def inference(self, path):
        """Single image inference"""
        usecperimage = _ffi.new("float *")
        result_ptr = self.interface.inference(path.encode(), _ffi.NULL, len(self.classes), usecperimage)
        
        print(f"Inference took {usecperimage[0]:.2f} microseconds")
        print(f"Classification rate: {1000000.0/usecperimage[0]:.2f} images per second")
        
        self.usecPerImage = usecperimage[0]
        return result_ptr

    def detailed_inference(self, path):
        """Detailed inference with all class scores"""
        details_ptr = _ffi.new("int[]", len(self.classes))
        usecperimage = _ffi.new("float *")
        
        self.interface.inference(path.encode(), details_ptr, len(self.classes), usecperimage)
        details_buf = _ffi.buffer(details_ptr, len(self.classes) * 4)
        
        print(f"Inference took {usecperimage[0]:.2f} microseconds")
        print(f"Classification rate: {1000000.0/usecperimage[0]:.2f} images per second")
        
        details_array = np.copy(np.frombuffer(details_buf, dtype=np.int32))
        self.usecPerImage = usecperimage[0]
        return details_array

class GTSRBClassifier:
    """Classifier for GTSRB (German Traffic Sign Recognition) dataset"""
    
    def __init__(self, network=NETWORK_CNVW1A1, params="gtsrb", runtime=RUNTIME_HW):
        """
        Initialize GTSRB classifier
        
        Args:
            network: Network architecture (default: cnvW1A1)
            params: Parameter set (default: gtsrb)
            runtime: Runtime mode (RUNTIME_HW or RUNTIME_SW)
        """
        available = available_params(network)
        if params not in available:
            raise ValueError(f"Parameters '{params}' not available for {network}. Available: {available}")
        
        self.net = network
        self.params = params
        self.runtime = runtime
        self.usecPerImage = 0.0
        
        # Initialize BNN
        self.bnn = PynqBNN(runtime, network)
        self.bnn.load_parameters(os.path.join(params, network))
        self.classes = self.bnn.classes
        
        print(f"GTSRB Classifier initialized with {len(self.classes)} classes")

    def preprocess_image(self, img, target_size=(32, 32)):
        """
        Preprocess image for GTSRB classification
        Traffic signs are typically resized to 32x32
        """
        # Convert to RGB if needed
        if img.mode != 'RGB':
            img = img.convert('RGB')
        
        # Resize image
        img = img.resize(target_size, Image.LANCZOS)
        
        return img

    def image_to_format(self, img, fp):
        """Convert image to binary format expected by BNN"""
        # Preprocess image
        img = self.preprocess_image(img)
        
        # Convert to numpy array
        img_array = np.array(img)
        
        # Split RGB channels
        r = img_array[:,:,0].flatten()
        g = img_array[:,:,1].flatten() 
        b = img_array[:,:,2].flatten()
        
        # Write label (dummy for single image)
        label = np.identity(1, dtype=np.uint8)
        fp.write(label.tobytes())
        fp.write(r.tobytes())
        fp.write(g.tobytes())
        fp.write(b.tobytes())

    def classify_image(self, img):
        """Classify a single traffic sign image"""
        with tempfile.NamedTemporaryFile() as tmp:
            self.image_to_format(img, tmp)
            tmp.flush()
            result = self.bnn.inference(tmp.name)
        
        self.usecPerImage = self.bnn.usecPerImage
        return result

    def classify_image_details(self, img):
        """Classify image with detailed scores for all classes"""
        with tempfile.NamedTemporaryFile() as tmp:
            self.image_to_format(img, tmp)
            tmp.flush()
            result = self.bnn.detailed_inference(tmp.name)
        
        self.usecPerImage = self.bnn.usecPerImage
        return result

    def classify_path(self, image_path):
        """Classify image from file path"""
        img = Image.open(image_path)
        return self.classify_image(img)

    def classify_paths(self, image_paths):
        """Classify multiple images from file paths"""
        images = [Image.open(path) for path in image_paths]
        return self.classify_images(images)

    def classify_images(self, images):
        """Classify multiple images"""
        with tempfile.NamedTemporaryFile() as tmp:
            for img in images:
                self.image_to_format(img, tmp)
            tmp.flush()
            result = self.bnn.inference_multiple(tmp.name)
        
        self.usecPerImage = self.bnn.usecPerImage
        return result

    def class_name(self, index):
        """Get class name from index"""
        if 0 <= index < len(self.classes):
            return self.classes[index]
        return f"Unknown_{index}"

    def get_top_predictions(self, scores, top_k=5):
        """Get top K predictions with class names and scores"""
        if len(scores) != len(self.classes):
            raise ValueError("Scores length doesn't match number of classes")
        
        # Get top K indices
        top_indices = np.argsort(scores)[-top_k:][::-1]
        
        predictions = []
        for idx in top_indices:
            predictions.append({
                'class_id': idx,
                'class_name': self.class_name(idx),
                'score': scores[idx]
            })
        
        return predictions

# Convenience function for quick usage
def create_gtsrb_classifier(runtime=RUNTIME_HW):
    """Create GTSRB classifier with default settings"""
    return GTSRBClassifier(
        network=NETWORK_CNVW1A1,
        params="gtsrb", 
        runtime=runtime
    )

# Example usage
if __name__ == "__main__":
    # Initialize classifier
    classifier = create_gtsrb_classifier()
    
    # Example classification
    # img_path = "path/to/traffic_sign.jpg"
    # result = classifier.classify_path(img_path)
    # print(f"Predicted class: {classifier.class_name(result)}")
