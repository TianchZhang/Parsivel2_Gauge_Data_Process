%Description:
%calculate average of DSD-parameters seasonly
% History:
% 2021.12.21 by zhangtc
%%
clear
load('D:\DATA\Parsivel_temporary\DSD_parameters_difseason.mat','RR_conv_*');
avercsum = mean([RR_conv_2019sum;RR_conv_2020sum]);
avercaut = mean([RR_conv_2019aut;RR_conv_2020aut]);
avercwin = mean([RR_conv_2019win;RR_conv_2020win]);
avercspr = mean([RR_conv_2019spr;RR_conv_2020spr]);
save('D:\DATA\Parsivel_temporary\averDSD_parameters_difseason.mat',...
    'avercsum');

