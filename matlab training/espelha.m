function nimg = espelha(img)
    [lin,col, ~] = size(img);
    nimg = img(:,col:-1:1,:);
    nimg = img(lin:-1:1,:,:);
    nimg = uint8(nimg);
    