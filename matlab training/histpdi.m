function h=histpdi(g,NCMAX)
for i=1:NCMAX
h(i)=sum(sum(g==(i-1)));
end
h=h/(size(g,1)*size(g,2));
plot(h);
