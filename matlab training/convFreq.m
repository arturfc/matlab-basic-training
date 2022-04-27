function nimg = convFreq(img, mask)
    img = double(img);
    [row, col] = size(img);
    maskF = zeros(row, col);
    maskF(1:size(mask,1), 1:size(mask,2)) = mask;
    nimg = fft2(img) .* fft2(maskF);
    nimg = abs(ifft2(nimg));
end
