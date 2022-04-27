function nimg = contrastStretching(img,m,e)
    img = im2double(img);
    nimg = 1./(1+(m./img).^e);