%come per brightness e irr, devo creare la funzione da 8 valori, in questo
%caso doppia perchè farà uscire even e odd
function [oddVector, evVector]= oddEven8(logSpecMatr)
%Input: logSpec. Output: ev(value)
oddVector=[0,0,0,0,0,0,0,0];
evVector=[0,0,0,0,0,0,0,0];
[x,y]=size(logSpecMatr);
for i=1:x
    [oddVector(i),evVector(i)]=oddEven(logSpecMatr(i,:));
end
end