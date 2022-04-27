function nimg = retiraGrade(img)
    img = imbinarize(img);
    [lin,col,~] = size(img);
    isg = img(4:lin-4,4:col-4);
    [lin,col,~] = size(isg);
    
    for i=1:col
        if isg(:,i) == 0 
            isg(:,i) = isg(:,i)+1;
        end
    end
    nimg = isg;
    