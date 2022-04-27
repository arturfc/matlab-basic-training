function hc = histcpdi(g,NCMAX)
for i=1:NCMAX
h(i)=(1/(size(g,1)*size(g,2)))*sum(sum(g==(i-1)));
end
for i=1:NCMAX
if i==1
hc(i)=h(i);
else
hc(i)=h(i)+sum(h(1:i-1));
end
end
plot(hc);
