function img_denoised = SVD_denoise(imgn1, threshold)
    % Perform SVD on the image
    [U,S,V] = svd(double(imgn1));
    % Replace all singular values below the threshold with zero
    S(S < threshold) = 0;
    % Reconstruct the image using the modified S matrix
    img_denoised = U*S*V';
    % Convert the image back to uint8 and display
    %img_denoised = uint8(img_denoised);
end
