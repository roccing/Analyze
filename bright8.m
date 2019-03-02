%qui partendo dalla matrice degli spettri devo calcolare un vettore di
%valori numerici di brightness
function [brVect] = bright8(logSpecMatr)
%Input: vettore di logSpec. Output: vettore di valori brightness
brVect=[0,0,0,0,0,0,0,0];
[x,y]=size(logSpecMatr);
for i=1:x
    
    brVect(i)=Brightness(logSpecMatr(i,:));
end
end