function convolucao = calculaConvolucao(f,m)
    [lin,n] = size(f);
    convolucao = f;
    for i=1:n
        if i == 1
            convolucao(1,i) = m(1)*f(1,i) + m(2)*f(1,i) + m(3)*f(1,i+1);
        elseif i == n
            convolucao(1,i) = m(1)*f(1,i-1) + m(2)*f(1,i) + m(3)*f(1,i);
        else
            convolucao(1,i) = m(1)*f(1,i-1) + m(2)*f(1,i) + m(3)*f(1,i+1);
        end
    end
    
        
        