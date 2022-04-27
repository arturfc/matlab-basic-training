function result = enrelaca(A,B)
    [lin1,col1] = size(A);
    [lin2,col2] = size(B);
    result = zeros(lin1+lin2,col1);
    result(1:2:end,:) = A;
    result(2:2:end,:) = B;
    
    for i=2:2:lin1+lin2
        media = sum(result(i,:))/col1;
        result(i,:) = result(i,:)+media;
    end
    
    
    
    
    
    
    
    
    
    
    
    