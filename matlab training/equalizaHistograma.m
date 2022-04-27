function nimg = equalizaHistograma(img)
    fileID = fopen('histograma.txt','r');
    formatSpec = '%f';
    histogramaAlvo = fscanf(fileID, formatSpec,[1 Inf]);
    
    [lin, col, ~] = size(img);
    n = lin*col;
    hist = imhist(img)/n;
   
    F1 = cumsum(hist);
    F2 = cumsum(histogramaAlvo);
        
    diff = abs(F1 - F2);
    minDiff = min(diff);
     
    nimg = minDiff(img+1);
    nimg = uint8(nimg*255);
   