function nimg = efeitoOnda2(img)
    img = double(img);
    [row,col,~]= size(img);
  
    [I,J] = meshgrid(1:row,1:col);
    
    x = I + 20*sin(2*pi.*J./80);
    y = J + 20*sin(2*pi.*I./80);
    
    img = interp2(double(img),y,x);
    nimg = uint8(img);