% 8 parts cutter
function [cutVect] = cut8(sig)
%from a signal it return a vector of indices that divide the signal in 8
%intervals.
tmp=length(sig)/8;
cutVect=[1,tmp,2*tmp,3*tmp,4*tmp,5*tmp,6*tmp,7*tmp,length(sig)]; %divido per 8 e creo gli intevalli di indici

end