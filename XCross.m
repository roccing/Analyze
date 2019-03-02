%Xcrossing 
function [xcross]= XCross(sig, intv)
%from a channel is calculated the xcrossing feature 
% Input: signal. Output: Xcrossing
A=0;
[ymax,i]=max(sig);
if intv<=1
    intv=length(sig)*1/10; %pongo l'intervallo su cui calcolare xcross di grandezza 1/10 del segnale. nel caso intv non sia inserito 
end
   
if i+intv>=length(sig)   % dato che calcolo a partire dal punto di massimo, se supero la grandezza dell'array mi fermo
    intv=length(sig)-i;
end
for j = i : i+intv
     if sig(j)<0 && sig(j+1)>0
       A=A+1;
     end
     if sig(j)>0 && sig(j+1)<0
       A=A+1;
     end
end
xcross=A;
end