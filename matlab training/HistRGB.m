function h = HistRGB(img)
[lin, col, ~] = size(img);
h = [];
i = 1;
for R = 0: 64: 255
    for G = 0: 64: 255
        for B = 0: 64: 255
            ind = img(:,:,1) >= R & img(:,:,1) < R+64 & img(:,:,2) >= G & img(:,:,2) < G+64 & img(:,:,3) >= B & img(:,:,3) < B+64;
             h(i) = sum(sum(ind));
             i = i + 1;
        end
    end
end
