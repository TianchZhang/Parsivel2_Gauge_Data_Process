% Description:
% Rain case found in PL532 and Parsivel Data
% History:
%   2021.07.26 First Edition by  tc.zhang
% modified 2022.04.02
clear

load('D:\DATA\Parsivel_temporary\Rainevents-allR-3-30','Conv_day_30');
load('D:\DATA\Parsivel_temporary\Rainevents-allR-3-30','Stra_day_30');

listing = dir('E:\DATA\PLidar532\h5_parameters\*.h5');
pname = {};
for ik = 1:length(listing)
    pname = [pname;listing(ik).name(1:8)];
end
PL_conv_30 = {};
for ik = 1:length(Conv_day_30)
    if any(strcmp(Conv_day_30{ik,1},pname))
        tempconv = h5read(['E:\DATA\OTTParsivel\nonQC2019mR-\',Conv_day_30{ik,1},'.h5'],'/typeflag');
        if length(find(tempconv ==1)) >20
            PL_conv_30 = [PL_conv_30;Conv_day_30{ik,1}];
        end
    end
end
PL_stra_30 = {};
for ik = 1:length(Stra_day_30)
    if any(strcmp(Stra_day_30{ik,1},pname))
        tempstra = h5read(['E:\DATA\OTTParsivel\nonQC2019mR-\',Stra_day_30{ik,1},'.h5'],'/typeflag');
        if length(find(tempstra ==2)) >20
            PL_stra_30 = [PL_stra_30;Stra_day_30{ik,1}];
        end
    end
end
PL_ltstra_30 = {};
for ik = 1:length(Stra_day_30)
    if any(strcmp(Stra_day_30{ik,1},pname))
        tempstra = h5read(['E:\DATA\OTTParsivel\nonQC2019mR-\',Stra_day_30{ik,1},'.h5'],'/typeflag');
        tempnw = h5read(['E:\DATA\OTTParsivel\nonQC2019mR-\',Stra_day_30{ik,1},'.h5'],'/Nw');
        if length(find(tempstra ==2 & log10(tempnw)>4.4)) >20
            PL_ltstra_30 = [PL_ltstra_30;Stra_day_30{ik,1}];
        end
    end
end
save('D:\DATA\Parsivel_temporary\PL_Rainevents.mat','PL_stra_30','PL_ltstra_30','PL_conv_30');
save('E:\DATA\Parsivel_temporary\PL_Rainevents.mat','PL_stra_30','PL_ltstra_30','PL_conv_30');