function [logSpec]=giveSpectrum(sig,Res)
%from channel and an interval, return the spectrum normalized to 3.
%You can choose the resolution in the input.
%input[ch,A,B, Res] output[logSpec]
tmp=zeros(1,Res); 
for i=1:length(sig)
    tmp(i)=sig(i);
end
spec=abs(fft(tmp)); %questa cosa della risoluzione, credo, si può fare anche mettendo come 2ndo argomento di fft( , 11025)
logSpec=log10(1000*spec/max(spec));
logSpec=logSpec(1:floor(length(logSpec)/2));
 
end