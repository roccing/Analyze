function [Ir] = specIrregularity(logSpec)
% devo tirare fuori tutto tranne specIrr
Sum=0;
for k= 2:length(logSpec)-1
    Sum=Sum+abs(log10(logSpec(k)/((logSpec(k-1))*(logSpec(k))*(logSpec(k+1)))^(1/3)));
end
Ir=log10(20*Sum);

end