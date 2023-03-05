function denoised_img = DCT_denoise(imgn1, threshold)
    % Perform DCT on the image
    dct_img = dct2(imgn1);
    % Set DCT coefficients below the threshold to zero
    dct_img(abs(dct_img) < threshold) = 0;
    % Apply the inverse DCT to the thresholded image
    denoised_img = idct2(dct_img);
end
