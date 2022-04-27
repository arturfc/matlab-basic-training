function nimg = EscalaN(inputImage,dx,dy,tipo)
    scale = [dx dy];
    oldSize = size(inputImage);
    newSize = max(floor(scale.*oldSize(1:2)),1);

    %divide um intervalo em n particoes
    rowIndex = linspace(1,oldSize(1),newSize(1));
    colIndex = linspace(1,oldSize(2),newSize(2));
    if tipo == 1 %com interpolacao
        [lin,col,~] = size(inputImage);
        mat = eye(newSize);
        mat(1,1) = scale(1);
        mat(2,2) = scale(2);
        
        nCoords = mat * [ rowIndex; colIndex; ones(1, )];
        
        outputImage =interp2(double(inputImage), reshape(nCoords(1,:),lin,col), reshape(nCoords(2,:),lin,col));
    else %sem interpolacao
        %Calcula um conjunto de amostras de indices:
        rowIndex = min(round(rowIndex),oldSize(1));
        colIndex = min(round(colIndex),oldSize(2));
        %A partir da antiga imagem, gera a nova com os
        %indices encontrados
        outputImage = inputImage(rowIndex,colIndex,:);
    end

    nimg = uint8(outputImage);