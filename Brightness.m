function [BR]= Brightness(logSpec)
%Input: logSpec. Output: BR(value)
den=0;
num=0;
for i=1 : length(logSpec)
    add=(logSpec(i)^2)*i;
    num=num+add;
end
add=0;
for i=1 : length(logSpec)
    add=logSpec(i)^2;
    den=den+add;
end
BR=num/den;
end