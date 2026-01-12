
#pragma once
#include "layer.h"
#include "activation_function.h"

namespace tiny_cnn {

/**
 * single-input, single-output network with activation function
 **/
template<typename Activation>
class feedforward_layer : public layer {
public:
    explicit feedforward_layer(const std::vector<vector_type>& in_data_type)
        : layer(in_data_type, std_output_order(true)) {}
    activation::function& activation_function() { return h_; }
    std::pair<float_t, float_t> out_value_range() const override { return h_.scale(); }

protected:

    void backward_activation(const tensor_t& prev_delta, const tensor_t& this_out, tensor_t& curr_delta) {

        // @todo consider parallelism
        for (cnn_size_t sample = 0, sample_count = this_out.size(); sample < sample_count; ++sample) {
            const vec_t& out_vec = this_out[sample];
            const vec_t& prev_delta_vec = prev_delta[sample];
            vec_t& curr_delta_vec = curr_delta[sample];

            const cnn_size_t len = prev_delta_vec.size();
            
            if (h_.one_hot()) {
                for (cnn_size_t c = 0; c < len; c++) {
                    curr_delta_vec[c] = prev_delta_vec[c] * h_.df(out_vec[c]);
                }
            }
            else {
                for (cnn_size_t c = 0; c < len; c++) {
                    vec_t df = h_.df(out_vec, c);
                    curr_delta_vec[c] = vectorize::dot(&prev_delta_vec[0], &df[0], len);
                }
            }
        }
    }

    Activation h_;
};

} // namespace tiny_cnn
