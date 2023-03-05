function reconstructed_img = PCA_denoise(noisy_img, k)
    [coeff, score, latent, tsquared, explained, mu] = pca(double(noisy_img));

    % Select the number of principal components to keep
    num_components = k;

    % Reconstruct the image with only the specified number of principal components
    % coeff = eigenvectors
    % score = coordinates of the input image in the new PC coordinate system.
    %Each column of "score" represents an image in the PC space, and the number of columns is equal to the number of image pixels.
    % mu = mean
    reconstructed_img = score(:,1:num_components)*coeff(:,1:num_components)' + mu;
    %Reconstruct the image by multiplying the score matrix with the top "k" eigenvectors, and adding back the mean of the original matrix.
end
