% Description:
% Rain case found in PL532 and Parsivel Data
% History:
%   2021.07.26 First Edition by  tc.zhang
% modified 2022.04.02
clear

load('D:\DATA\Parsivel_temporary\Rainevents-allR-3-30','Conv_day_30');
load('D:\DATA\Parsivel_temporary\Rainevents-allR-3-30','Stra_day_30');

listing = dir('D:\DATA\PLidar532\Parameter\*.h5');
pname = {};
for ik = 1:length(listing)
    pname = [pname;listing(ik).name(1:8)];
end
PL_conv_30 = {};
for ik = 1:length(Conv_day_30)
    if any(strcmp(Conv_day_30{ik,1},pname))
        PL_conv_30 = [PL_conv_30;Conv_day_30{ik,1}];
    end
end
PL_stra_30 = {};
for ik = 1:length(Stra_day_30)
    if any(strcmp(Stra_day_30{ik,1},pname))
        PL_stra_30 = [PL_stra_30;Stra_day_30{ik,1}];
    end
end
save('D:\DATA\Parsivel_temporary\PL_Rainevents.mat','PL_stra_30','PL_conv_30');
% save('E:\DATA\Parsivel_temporary\PL_Rainevents.mat','PL_Stra_day_30','PL_Stra_detal_30');