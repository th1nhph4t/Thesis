
#pragma once
#include "util.h"
#include "layer.h"

namespace tiny_cnn {

/**
 * element-wise add N vectors
 **/
class elementwise_add_layer : public layer {
public:
    elementwise_add_layer(cnn_size_t num_args, cnn_size_t dim)
    : layer(std::vector<vector_type>(num_args, vector_type::data), {vector_type::data}), num_args_(num_args), dim_(dim) {}

    std::string layer_type() const override {
        return "elementwise-add";
    }

    std::vector<shape3d> in_shape() const override {
        return std::vector<shape3d>(num_args_, shape3d(dim_,1,1));
    }

    std::vector<shape3d> out_shape() const override {
        return{ shape3d(dim_,1,1) };
    }

    void forward_propagation(cnn_size_t worker_index,
                             const std::vector<tensor_t*>& in_data,
                             std::vector<tensor_t*>& out_data) override {
        const tensor_t& in1 = *in_data[0];
        tensor_t& out = *out_data[0];

        CNN_UNREFERENCED_PARAMETER(worker_index);

        out = in1;

        // @todo parallelize
        for (cnn_size_t sample = 0, sample_count = in1.size(); sample < sample_count; ++sample) {
            for (cnn_size_t i = 1; i < num_args_; i++) {
                std::transform((*in_data[i])[sample].begin(),
                               (*in_data[i])[sample].end(),
                               out[sample].begin(),
                               out[sample].begin(),
                               [](float_t x, float_t y){ return x + y; });
            }
        }
    }

    void back_propagation(cnn_size_t                    worker_index,
                          const std::vector<tensor_t*>& in_data,
                          const std::vector<tensor_t*>& out_data,
                          std::vector<tensor_t*>&       out_grad,
                          std::vector<tensor_t*>&       in_grad) override {
        CNN_UNREFERENCED_PARAMETER(worker_index);
        CNN_UNREFERENCED_PARAMETER(in_data);
        CNN_UNREFERENCED_PARAMETER(out_data);
        for (cnn_size_t i = 0; i < num_args_; i++)
            *in_grad[i] = *out_grad[0];
    }
private:
    cnn_size_t num_args_;
    cnn_size_t dim_;
};

} // namespace tiny_cnn
