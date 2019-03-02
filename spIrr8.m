%spectrum irregularity 8, qui faccio come in bright8, mi calcolo un vettore
%di valori di spectrum irregularuty.
function [IrrVect] = spIrr8(logSpecMatr)
%Input: vettore di logSpec. Output: vettore di valori brightness
IrrVect=[0,0,0,0,0,0,0,0];
[x,y]=size(logSpecMatr);
for i=1:x
    
    IrrVect(i)=specIrregularity(logSpecMatr(i,:));
end
end