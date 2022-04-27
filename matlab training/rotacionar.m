function nimg = rotacionar(img,ang)
    R = rotateBand(img(:,:,1), ang);
    G = rotateBand(img(:,:,2), ang);
    B = rotateBand(img(:,:,3), ang);
    nimg = cat(3,R,G,B);

function nimg  = rotateBand(img, ang)
    [lin, col,~] = size(img);
    nimg = zeros(lin, col);
    matR = [cosd(ang) -sind(ang) 0;sind(ang) cosd(ang) 0 ; 0 0 1];
    maT1 = [1 0 -floor(lin/2); 0 1 -floor(col/2); 0 0 1];
    maT2 = [1 0 floor(lin/2); 0 1 floor(col/2); 0 0 1];
    mat = maT2 * matR * maT1;
    
    [I,J] = ndgrid(1:lin,1:col);
    nCoords = mat * [I(:)';J(:)';ones(1,lin*col)];
    nI = nCoords(1,:);
    nJ = nCoords(2,:);
    
    nimg = interp2(double(img), reshape(nI,lin,col), reshape(nJ,lin,col));
    nimg = uint8(nimg);
    