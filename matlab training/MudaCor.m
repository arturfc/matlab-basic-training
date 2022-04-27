function nimg = MudaCor(img,mask)
    
    mask = mask > 100;
    R = img + 10;
    G = img + 10;
    B = img + 80;
    R(mask) = img(mask);
    G(mask) = img(mask);
    B(mask) = img(mask);
    nimg = cat(3,R,G,B);
    