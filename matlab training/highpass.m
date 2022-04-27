function nimg = highpass(img, G)
    img2 = im2double(img);
    mask = [0 1  0; 1 -4 1; 0 1 0];
    simg = imfilter(img2, mask, 'replicate');
    img = im2double(img);
    nimg = ((1+G) .* img) - (G .* simg);