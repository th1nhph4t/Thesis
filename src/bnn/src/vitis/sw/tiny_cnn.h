#pragma once

#include "config.h"
#include "network.h"
#include "nodes.h"

#include "input_layer.h"
#include "feedforward_layer.h"
#include "convolutional_layer.h"
#include "fully_connected_layer.h"
#include "average_pooling_layer.h"
#include "max_pooling_layer.h"
#include "linear_layer.h"
#include "lrn_layer.h"
#include "dropout_layer.h"
#include "arithmetic_layer.h"
#include "concat_layer.h"
#include "deconvolutional_layer.h"
#include "max_unpooling_layer.h"
#include "average_unpooling_layer.h"

#include "activation_function.h"
#include "loss_function.h"
#include "optimizer.h"

#include "weight_init.h"
#include "image.h"
#include "deform.h"
#include "product.h"
#include "graph_visualizer.h"

#include "mnist_parser.h"
#include "cifar10_parser.h"
#include "display.h"
#include "layer_factory.h"

#ifdef CNN_USE_CAFFE_CONVERTER
// experimental / require google protobuf
#include "layer_factory.h"
#endif

// shortcut version of layer names
namespace tiny_cnn {
namespace layers {

template <class T>
using conv = tiny_cnn::convolutional_layer<T>;

template <class T>
using max_pool = tiny_cnn::max_pooling_layer<T>;

template <class T>
using ave_pool = tiny_cnn::average_pooling_layer<T>;

template <class T>
using fc = tiny_cnn::fully_connected_layer<T>;

template <class T>
using dense = tiny_cnn::fully_connected_layer<T>;

using add = tiny_cnn::elementwise_add_layer;

using dropout = tiny_cnn::dropout_layer;

using input = tiny_cnn::input_layer;

template <class T>
using lrn = tiny_cnn::lrn_layer<T>;

using input = tiny_cnn::input_layer;

using concat = tiny_cnn::concat_layer;

template <class T>
using deconv = tiny_cnn::deconvolutional_layer<T>;

template <class T>
using max_unpooling = tiny_cnn::max_unpooling_layer<T>;

template <class T>
using average_unpooling = tiny_cnn::average_unpooling_layer<T>;

}
}
