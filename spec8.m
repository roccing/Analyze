%prendo in input il vettore di taglio, e il segnale e mi trovo la matrice con gli 8 spettri 
function [logSpec] = spec8(sig,cutVect, resolution)
%Input: sig & cutVect. Output: vect logSpec
logSpec(1,:)=giveSpectrum(sig(cutVect(1):cutVect(2)),resolution);
logSpec(2,:)=giveSpectrum(sig(cutVect(2):cutVect(3)),resolution);
logSpec(3,:)=giveSpectrum(sig(cutVect(3):cutVect(4)),resolution);
logSpec(4,:)=giveSpectrum(sig(cutVect(4):cutVect(5)),resolution);
logSpec(5,:)=giveSpectrum(sig(cutVect(5):cutVect(6)),resolution);
logSpec(6,:)=giveSpectrum(sig(cutVect(6):cutVect(7)),resolution);
logSpec(7,:)=giveSpectrum(sig(cutVect(7):cutVect(8)),resolution);
logSpec(8,:)=giveSpectrum(sig(cutVect(8):cutVect(9)),resolution);


end