function nimg = rotacionarTransform(img,ang)
    R = rotateBand(img(:,:,1), ang);
    G = rotateBand(img(:,:,2), ang);
    B = rotateBand(img(:,:,3), ang);
    nimg = cat(3,R,G,B);

function nimg  = rotateBand(img, ang)
    [lin, col,~] = size(img);
    nimg = zeros(lin, col);
    matR = [cosd(ang) -sind(ang) 0; sind(ang) cosd(ang) 0 ; 0 0 1];
    maT1 = maketform('composite',[1 0 floor(lin/2); 0 1 floor(col/2); 0 0 1], matR, [1 0 -floor(lin/2); 0 1 -floor(col/2); 0 0 1]);
    maT2 = maketform('affine', [floor(lin/2) 0 0; 0 floor(col/2) 0; 0 0 1]);
    mat = maT2 * matR * maT1;
    nimg = imtransform(img, maT1);
    
    
    nimg = uint8(nimg);
    