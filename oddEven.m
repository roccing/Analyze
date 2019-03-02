%EVEN component of spectrum
function [odd, ev]= oddEven(logSpec)
%Input: logSpec. Output: ev(value)
den=0;
for j=1:length(logSpec)      %calcolo il denominatore che è comune  a entrambi
    den=(logSpec(j)^2)+den;
end
den=den^(1/2);
%ev num(even=pari)
evNum=0;
for i=2:2:length(logSpec)
    evNum=evNum+(logSpec(i)^2);
end
evNum=evNum^(1/2);
oddNum=0;
%odd num(odd=dispari)
for i=1:2:length(logSpec)
    oddNum=oddNum+(logSpec(i)^2);
end
oddNum=oddNum^(1/2);
ev=evNum/den;
odd=oddNum/den;
end