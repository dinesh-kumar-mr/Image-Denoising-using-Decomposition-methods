function I_denoised = NMF_denoise(I,T)
% Perform NMF on the noisy image
[W,H] = nnmf(I,T);
% Reconstruct the denoised image
I_denoised = W*H;
% Display the original and denoised images
end
