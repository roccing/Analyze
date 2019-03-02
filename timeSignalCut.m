function [sig,Begin,End] = timeSignalCut(ch, perc)
% function that cut a time signal from the beginning to its end, threshold
% perc of the max, beginning and end.
% Input [Channel] Output [Signal, BeginIndexOnChannel, EndIndexOnChannel]
for i=1:length(ch)
    if ch(i)>=max(ch)*(perc)
        break;
    end
end
Begin=i;
i=length(ch);
while i>2
    if ch(i)>=max(ch)*(perc)
        break;
    end
    i=i-1;
end
End=i;
sig=ch(Begin:End);

end