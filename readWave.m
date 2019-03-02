function [ch1,ch2,fs] = readWave(track)
%from a stereo file it returns the two channels and the freq of reading
%input=[file] output=[ch1,ch2,fs]
[Y,fsTMP]=audioread(track);
ch1=Y(:,1);
ch2=Y(:,2);
fs=fsTMP;

end

