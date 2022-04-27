function nimg = evitaWarp( img, tam, mask)
    [m,n] = size(img);
    padM = 0;
    padN = 0;    
    if strcmp(tam,'x2')
        padM = m;
        padN = n;
    else
        if strcmp(tam,'pow')
        x = 2^(log2(m)+1);
        y = 2^(log2(n)+1);
        padM = x-m;
        padN = y-n;        
        end
    end
        
    nimg = zeros(m+padM,n+padN);
    nimg(1:m,1:n) = img;
    nimg = uint8(nimg);
    
end
