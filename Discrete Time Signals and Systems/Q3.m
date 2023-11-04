vase = imread("vase.jpg"); % Read vase.jpg file into a matrix vase
[row, column] = size(vase); % Return the number of row and column in Matrix vase
maxPixel = max(max(vase)); % Find the maximum pixel in Matrix vase

vase_bright = vase + 30; % Create a brighter version of the .jpg file

% Write the matrix into a .jpg file
imwrite(vase_bright,'vase_bright.jpg','jpg','Quality', 100);