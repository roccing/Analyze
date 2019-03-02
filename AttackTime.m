%ATTACK TIME
function [AtTime]= AttackTime(sig, fs)
%from a channel its calculated the attack time, dividing the indexes by
%fs
% Input[signal, ], output[Attack time]
[Ymax,i]=max(sig); %trovo l'indice col valore massimo
AtTime=i/fs; %il numero di valori diviso per la frequenza(1/s)
end