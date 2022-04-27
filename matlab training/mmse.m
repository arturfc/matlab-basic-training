function g = mmse(img)
    img = double(img);
	medias = colfilt(img, [5 5],'sliding',@mean);
    variancia = colfilt(img, [5 5],'sliding',@var);
    
    alfa = 50./variancia;
    
    alfa(alfa>1)=1;
    
    g = (1 - alfa) .* img + alfa .* medias;
    g = uint8(g);
    
    
    
    
    
  