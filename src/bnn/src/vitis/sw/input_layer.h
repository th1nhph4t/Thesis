
#pragma once
#include "layer.h"

namespace tiny_cnn {

class input_layer : public layer {
public:
    explicit input_layer(const shape3d& shape)
    : layer({vector_type::data}, {vector_type::data}), shape_(shape) {}

    explicit input_layer(cnn_size_t in_dim)
    : layer({ vector_type::data }, { vector_type::data }), shape_(shape3d(in_dim,1,1)) {}

    std::vector<shape3d> in_shape() const override { return { shape_ }; }
    std::vector<shape3d> out_shape() const override { return { shape_ }; }
    std::string layer_type() const override { return "input"; }



    void forward_propagation(cnn_size_t index,
                             const std::vector<tensor_t*>& in_data,
                             std::vector<tensor_t*>& out_data) override {
        CNN_UNREFERENCED_PARAMETER(index);
        *out_data[0] = *in_data[0];
    }

    void back_propagation(cnn_size_t                    index,
                          const std::vector<tensor_t*>& in_data,
                          const std::vector<tensor_t*>& out_data,
                          std::vector<tensor_t*>&       out_grad,
                          std::vector<tensor_t*>&       in_grad) override {
        // do nothing
        CNN_UNREFERENCED_PARAMETER(index);
        CNN_UNREFERENCED_PARAMETER(in_data);
        CNN_UNREFERENCED_PARAMETER(out_data);
        CNN_UNREFERENCED_PARAMETER(out_grad);
        CNN_UNREFERENCED_PARAMETER(in_grad);
    }

private:
    shape3d shape_;
};

} // namespace tiny_cnn
