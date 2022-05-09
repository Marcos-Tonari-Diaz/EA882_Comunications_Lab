num_bits = size_bin_mat(1)*size_bin_mat(2);
simulation_step = 1e-6;
bit_step = 0.01;
sample_iter_num = (bit_step/simulation_step);
out.simout.Data(:,:,1:end-1);
out_size = size(out.simout.Data(:,:,1:end-1));
out_sim = reshape(out.simout.Data(:,:,1:end-1), out_size(1,3), [])';
out_vect = zeros(1,num_bits);
j=1;
for i = 1:sample_iter_num:out_size(1,3)
    out_vect(j) = out_sim(1,uint32(i+(sample_iter_num/2)));
    j=j+1;
end
out_vect = out_vect(1:end-3);
out_vect = out_vect(1:56);
out_mat = reshape(out_vect, size_bin_mat(2), size_bin_mat(1))';
out_text = char(bi2de(out_mat(:,2:end)));
out_text