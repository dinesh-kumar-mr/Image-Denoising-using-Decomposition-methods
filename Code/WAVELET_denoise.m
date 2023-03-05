function img_denoised = WAVELET_denoise(imgn1, threshold)
    % Perform the wavelet transform
    [c,s] = wavedec2(imgn1,2,'db1');
    % Apply the threshold to the coefficients
    c = wthresh(c,'s',threshold);
    % Perform the inverse wavelet transform
    img_denoised = waverec2(c,s,'db1');
end