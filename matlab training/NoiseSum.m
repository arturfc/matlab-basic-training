function nimg = NoiseSum(img,n)
    [lin,col,~] = size(img);
    figs = zeros(lin, col, n);
    for i = 1:n
        figs(:,:,i) = imnoise(img);
    end
     
    figs = sort(figs,3);
    nimg = figs(:,:,floor(n/2));
    nimg = uint8(nimg);