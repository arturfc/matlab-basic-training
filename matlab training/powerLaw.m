function nimg = powerLaw(img,c,lambda)
   img = im2double(img);
   nimg = c.*img.^lambda;