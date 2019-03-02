function [attackTime1,attackTime2, xcross1, xcross2, vectBR1, vectBR2, vectIr1, vectIr2,oddVector1,oddVector2, evenVector1,evenVector2]= Analyze(file, cutPerc, coeffResol)
%Input: fileAudio, cutPercent, coeffResolSpectrum. Output: attackTime1, attackTime2, Xcrossing1,
%Xcrossing2, vector of Brightness 1, vector of brightness 2, vector of
%spectrum irregularity 1, vector of spectrum irregularity 2, vector of odd1
%, vector of odd2, vector of even1, vector of even2.
%The setting parameters from input are: threshold of the cut(Eg 0.10->10%), frequency spectrum resolution(Eg 1/4), 
[ch1,ch2,fs]=readWave(file);
sig1=timeSignalCut(ch1, cutPerc);         % The input value cutPerc is the threshold percentage that sets the start of the signal
sig2=timeSignalCut(ch2, cutPerc);
attackTime1=AttackTime(sig1,fs);       % I calculate attackTime feature of sound
attackTime2=AttackTime(sig2,fs);
xcross1=XCross(sig1, 500);                 % I calculate xcrossing,
xcross2=XCross(sig2, 500);                 % The second parameter is the size of the interval in which the xcrossing is computed, after the max of the array
%I divide in 8 parts each channel to perform the freq analysis  
cutVect1=cut8(sig1);
cutVect2=cut8(sig2);
logSpectMatr1=spec8(sig1,cutVect1,fs*(coeffResol)); % I have a matrix with 8 freq. spectrums on its 8 rows, I decide the resolution (Eg 1/4)
logSpectMatr2=spec8(sig2,cutVect2,fs*(coeffResol));  
vectBR1=bright8(logSpectMatr1);  % here I compute the vectors of brightness values, staring from the spectrum matrix
vectBR2=bright8(logSpectMatr2); 
vectIr1=spIrr8(logSpectMatr1);  %here I compute the vectors of spectrum irregularity values, starting from the matrix
vectIr2=spIrr8(logSpectMatr2); 
[oddVector1,evenVector1]=oddEven8(logSpectMatr1); % I compute odd and even components of the spectrum, 4 arrays at all
[oddVector2,evenVector2]=oddEven8(logSpectMatr2); 
%---GRAPHIC PART--- NO CALCULATION
% subplot(6,2,1)
% plot(ch1)
% title('ch1')
% subplot(6,2,2)
% plot(ch2)
% title('ch2')
% subplot(6,2,3)
% plot(sig1)
% title('ch1 cutted')
% subplot(6,2,4)
% plot(sig2)
% title('ch2 cutted')
% subplot(6,2,5)
% stairs(vectBR1)
% title('Brightnesses1')
% subplot(6,2,6)
% stairs(vectBR2)
% title('Brightnesses2')
% subplot(6,2,7)
% stairs(vectIr1)
% title('Spec Irregularity 1')
% subplot(6,2,8)
% stairs(vectIr2)
% title('Spec Irregularity 2')
% subplot(6,2,9)
% stairs(oddVector1)
% title('Odd component ratio 1')
% subplot(6,2,10)
% stairs(oddVector2)
% title('Odd component ratio 2')
% subplot(6,2,11)
% stairs(evenVector1)
% title('Even component ratio 1')
% subplot(6,2,12)
% stairs(evenVector2)
% title('Even component ratio 2')
subplot(8,2,1)
plot(logSpectMatr1(1,:))
title('Spectrum ch1 n1')
subplot(8,2,2)
plot(logSpectMatr2(1,:))
title('Spectrum ch2 n1')
subplot(8,2,3)
plot(logSpectMatr1(2,:))
title('Spectrum ch1 n2')
subplot(8,2,4)
plot(logSpectMatr2(2,:))
title('Spectrum ch2 n2')
subplot(8,2,5)
plot(logSpectMatr1(3,:))
title('Spectrum ch1 n3')
subplot(8,2,6)
plot(logSpectMatr2(3,:))
title('Spectrum ch2 n3')
subplot(8,2,7)
plot(logSpectMatr1(4,:))
title('Spectrum ch1 n4')
subplot(8,2,8)
plot(logSpectMatr2(4,:))
title('Spectrum ch2 n4')
subplot(8,2,9)
plot(logSpectMatr1(5,:))
title('Spectrum ch1 n5')
subplot(8,2,10)
plot(logSpectMatr2(5,:))
title('Spectrum ch2 n5')
subplot(8,2,11)
plot(logSpectMatr1(6,:))
title('Spectrum ch1 n6')
subplot(8,2,12)
plot(logSpectMatr2(6,:))
title('Spectrum ch2 n6')
subplot(8,2,13)
plot(logSpectMatr1(7,:))
title('Spectrum ch1 n7')
subplot(8,2,14)
plot(logSpectMatr2(7,:))
title('Spectrum ch2 n7')
subplot(8,2,15)
plot(logSpectMatr1(8,:))
title('Spectrum ch1 n8')
subplot(8,2,16)
plot(logSpectMatr2(8,:))
title('Spectrum ch2 n8')
end
