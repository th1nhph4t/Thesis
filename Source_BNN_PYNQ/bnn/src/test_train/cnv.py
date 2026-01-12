
import lasagne
import quantization as q
import quantized_net as qn

def genCnv(input, num_outputs, learning_parameters):
    # A function to generate the cnv network topology which matches the overlay for the Pynq board.
    # WARNING: If you change this file, it's likely the resultant weights will not fit on the Pynq overlay.
    if num_outputs < 1 or num_outputs > 64:
        error("num_outputs should be in the range of 1 to 64.")
    if learning_parameters.activation_bits == 1:
        act_quant = q.QuantizationBinary()
    else:
        act_quant = q.QuantizationFixed(learning_parameters.activation_bits,
            learning_parameters.activation_bits - 2)
    activation = qn.FixedHardTanH(act_quant)
    if learning_parameters.weight_bits == 1:
        weight_quant = q.QuantizationBinary()
    else:
        weight_quant = q.QuantizationFixed(learning_parameters.weight_bits,
            learning_parameters.weight_bits - 2)
    input_quant = q.QuantizationFixed(8, 7, narrow_range=False)
    W_LR_scale = learning_parameters.W_LR_scale
    epsilon = learning_parameters.epsilon
    alpha = learning_parameters.alpha

    cnn = lasagne.layers.InputLayer(
            shape=(None, 3, 32, 32),
            input_var=input)
    
    # Quantize the inputs.
    # Precondition: inputs have already been scaled to [-1, 1]
    cnn = lasagne.layers.NonlinearityLayer(
            cnn,
            nonlinearity=qn.FixedHardTanH(input_quant)) 
            
    # 64C3-64C3-P2             
    cnn = qn.Conv2DLayer(
            cnn, 
            quantization=weight_quant,
            W_LR_scale=W_LR_scale,
            num_filters=64, 
            filter_size=(3, 3),
            pad='valid',
            flip_filters=False,
            nonlinearity=lasagne.nonlinearities.identity)
    
    cnn = lasagne.layers.BatchNormLayer(
            cnn,
            epsilon=epsilon, 
            alpha=alpha)
                
    cnn = lasagne.layers.NonlinearityLayer(
            cnn,
            nonlinearity=activation) 
            
    cnn = qn.Conv2DLayer(
            cnn, 
            quantization=weight_quant,
            W_LR_scale=W_LR_scale,
            num_filters=64, 
            filter_size=(3, 3),
            pad='valid',
            flip_filters=False,
            nonlinearity=lasagne.nonlinearities.identity)
    
    cnn = lasagne.layers.MaxPool2DLayer(cnn, pool_size=(2, 2), ignore_border=False)
    
    cnn = lasagne.layers.BatchNormLayer(
            cnn,
            epsilon=epsilon, 
            alpha=alpha)
                
    cnn = lasagne.layers.NonlinearityLayer(
            cnn,
            nonlinearity=activation) 
            
    # 256C3-256C3-P2             
    cnn = qn.Conv2DLayer(
            cnn, 
            quantization=weight_quant,
            W_LR_scale=W_LR_scale,
            num_filters=128, 
            filter_size=(3, 3),
            pad='valid',
            flip_filters=False,
            nonlinearity=lasagne.nonlinearities.identity)
    
    cnn = lasagne.layers.BatchNormLayer(
            cnn,
            epsilon=epsilon, 
            alpha=alpha)
                
    cnn = lasagne.layers.NonlinearityLayer(
            cnn,
            nonlinearity=activation) 
            
    cnn = qn.Conv2DLayer(
            cnn, 
            quantization=weight_quant,
            W_LR_scale=W_LR_scale,
            num_filters=128, 
            filter_size=(3, 3),
            pad='valid',
            flip_filters=False,
            nonlinearity=lasagne.nonlinearities.identity)
    
    cnn = lasagne.layers.MaxPool2DLayer(cnn, pool_size=(2, 2), ignore_border=False)
    
    cnn = lasagne.layers.BatchNormLayer(
            cnn,
            epsilon=epsilon, 
            alpha=alpha)
                
    cnn = lasagne.layers.NonlinearityLayer(
            cnn,
            nonlinearity=activation) 
            
    # 256C3-256C3              
    cnn = qn.Conv2DLayer(
            cnn, 
            quantization=weight_quant,
            W_LR_scale=W_LR_scale,
            num_filters=256, 
            filter_size=(3, 3),
            pad='valid',
            flip_filters=False,
            nonlinearity=lasagne.nonlinearities.identity)
    
    cnn = lasagne.layers.BatchNormLayer(
            cnn,
            epsilon=epsilon, 
            alpha=alpha)
                
    cnn = lasagne.layers.NonlinearityLayer(
            cnn,
            nonlinearity=activation) 
                  
    cnn = qn.Conv2DLayer(
            cnn, 
            quantization=weight_quant,
            W_LR_scale=W_LR_scale,
            num_filters=256, 
            filter_size=(3, 3),
            pad='valid',
            flip_filters=False,
            nonlinearity=lasagne.nonlinearities.identity)
    
    cnn = lasagne.layers.BatchNormLayer(
            cnn,
            epsilon=epsilon, 
            alpha=alpha)
                
    cnn = lasagne.layers.NonlinearityLayer(
            cnn,
            nonlinearity=activation) 
    
    # print(cnn.output_shape)
    
    # 1024FP-1024FP-10FP            
    cnn = qn.DenseLayer(
                cnn, 
                quantization=weight_quant,
                W_LR_scale=W_LR_scale,
                nonlinearity=lasagne.nonlinearities.identity,
                num_units=512)      
                  
    cnn = lasagne.layers.BatchNormLayer(
            cnn,
            epsilon=epsilon, 
            alpha=alpha)
                
    cnn = lasagne.layers.NonlinearityLayer(
            cnn,
            nonlinearity=activation) 
            
    cnn = qn.DenseLayer(
                cnn, 
                quantization=weight_quant,
                W_LR_scale=W_LR_scale,
                nonlinearity=lasagne.nonlinearities.identity,
                num_units=512)      
                  
    cnn = lasagne.layers.BatchNormLayer(
            cnn,
            epsilon=epsilon, 
            alpha=alpha)
                
    cnn = lasagne.layers.NonlinearityLayer(
            cnn,
            nonlinearity=activation) 
    
    cnn = qn.DenseLayer(
                cnn, 
                quantization=weight_quant,
                W_LR_scale=W_LR_scale,
                nonlinearity=lasagne.nonlinearities.identity,
                num_units=num_outputs,
                b=None)
                  
    cnn = lasagne.layers.BatchNormLayer(
            cnn,
            epsilon=epsilon, 
            alpha=alpha,
            axes=(0,1))
    return cnn

