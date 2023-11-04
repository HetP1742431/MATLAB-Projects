% Read barbaraLarge.jpg (original) file into a matrix barbaraOG
barbaraOG = imread("barbaraLarge.jpg");

% display the image, and alongside display the colorbar
figure, imshow(barbaraOG); title("Original Barbara Image"), colorbar;

% define the resize factor array
resize_factor = [0.9, 0.7, 0.5];
for i = resize_factor(1:3)
    % resize the images with and without antialiasing
    barbaraResized = imresize(barbaraOG, i, 'nearest', 'antialiasing', 0); % antialiasing turned off
    barbaraResizedAA = imresize(barbaraOG, i, 'nearest', 'antialiasing', 1); % antialiasing turned on
    
    % image titles
    imgTitle = sprintf("Barbara Image resized by %0.1f of original size without anti-aliasing", i);
    imgTitleAA = sprintf("Barbara Image resized by %0.1f of original size with anti-aliasing", i);
    
    % display the resized images with colorbar alongside
    figure, imshow(barbaraResized); title(imgTitle), colorbar;
    figure, imshow(barbaraResizedAA); title(imgTitleAA), colorbar;
end