%Description:
%calculate average of DSD-parameters seasonly
% History:
% 2021.12.21 by zhangtc
%%
clear
load('D:\DATA\Parsivel_temporary\DSD_parameters_difseason.mat','RR_conv_*');
avercsumRR = mean([RR_conv_2019sum;RR_conv_2020sum]);avercsumRainfall = sum([RR_conv_2019sum;RR_conv_2020sum])./60;
avercautRR = mean([RR_conv_2019aut;RR_conv_2020aut]);avercautRainfall = sum([RR_conv_2019aut;RR_conv_2020aut])./60;
avercwinRR = mean([RR_conv_2019win;RR_conv_2020win]);avercwinRainfall = sum([RR_conv_2019win;RR_conv_2020win])./60;
avercsprRR = mean([RR_conv_2019spr;RR_conv_2020spr]);avercsprRainfall = sum([RR_conv_2019spr;RR_conv_2020spr])./60;
avercRR = mean(RR_conv_all);cRainfall = sum(RR_conv_all)./60;
avercsumRRmin = min([RR_conv_2019sum;RR_conv_2020sum]);
avercautRRmin = min([RR_conv_2019aut;RR_conv_2020aut]);
avercwinRRmin = min([RR_conv_2019win;RR_conv_2020win]);
avercsprRRmin = min([RR_conv_2019spr;RR_conv_2020spr]);
avercRRmin = min(RR_conv_all);
avercsumRRmax = max([RR_conv_2019sum;RR_conv_2020sum]);
avercautRRmax = max([RR_conv_2019aut;RR_conv_2020aut]);
avercwinRRmax = max([RR_conv_2019win;RR_conv_2020win]);
avercsprRRmax = max([RR_conv_2019spr;RR_conv_2020spr]);
avercRRmax = max(RR_conv_all);
save('D:\DATA\Parsivel_temporary\averDSD_parameters_difseason.mat',...
    'avercsumRR','avercautRR','avercwinRR','avercsprRR','avercRR');
save('D:\DATA\Parsivel_temporary\averDSD_parameters_difseason.mat',...
    'avercsumRainfall','avercautRainfall','avercwinRainfall','avercsprRainfall','cRainfall','-append');
save('D:\DATA\Parsivel_temporary\averDSD_parameters_difseason.mat',...
    'avercsumRRmin','avercautRRmin','avercwinRRmin','avercsprRRmin','avercRRmin','-append');
save('D:\DATA\Parsivel_temporary\averDSD_parameters_difseason.mat',...
    'avercsumRRmax','avercautRRmax','avercwinRRmax','avercsprRRmax','avercRRmax','-append');
save('E:\DATA\Parsivel_temporary\averDSD_parameters_difseason.mat',...
    'avercsumRR','avercautRR','avercwinRR','avercsprRR','avercRR');
save('E:\DATA\Parsivel_temporary\averDSD_parameters_difseason.mat',...
    'avercsumRainfall','avercautRainfall','avercwinRainfall','avercsprRainfall','cRainfall','-append');
save('E:\DATA\Parsivel_temporary\averDSD_parameters_difseason.mat',...
    'avercsumRRmin','avercautRRmin','avercwinRRmin','avercsprRRmin','avercRRmin','-append');
save('E:\DATA\Parsivel_temporary\averDSD_parameters_difseason.mat',...
    'avercsumRRmax','avercautRRmax','avercwinRRmax','avercsprRRmax','avercRRmax','-append');
clear -regexp RR_conv_
load('D:\DATA\Parsivel_temporary\DSD_parameters_difseason.mat','RR_stra_*');
averssumRR = mean([RR_stra_2019sum;RR_stra_2020sum]);averssumRainfall = sum([RR_stra_2019sum;RR_stra_2020sum])./60;
aversautRR = mean([RR_stra_2019aut;RR_stra_2020aut]);aversautRainfall = sum([RR_stra_2019aut;RR_stra_2020aut])./60;
averswinRR = mean([RR_stra_2019win;RR_stra_2020win]);averswinRainfall = sum([RR_stra_2019win;RR_stra_2020win])./60;
averssprRR = mean([RR_stra_2019spr;RR_stra_2020spr]);averssprRainfall = sum([RR_stra_2019spr;RR_stra_2020spr])./60;
aversRR = mean(RR_stra_all);sRainfall = sum(RR_stra_all)./60;
averssumRRmin = min([RR_stra_2019sum;RR_stra_2020sum]);
aversautRRmin = min([RR_stra_2019aut;RR_stra_2020aut]);
averswinRRmin = min([RR_stra_2019win;RR_stra_2020win]);
averssprRRmin = min([RR_stra_2019spr;RR_stra_2020spr]);
aversRRmin = min(RR_stra_all);
averssumRRmax = max([RR_stra_2019sum;RR_stra_2020sum]);
aversautRRmax = max([RR_stra_2019aut;RR_stra_2020aut]);
averswinRRmax = max([RR_stra_2019win;RR_stra_2020win]);
averssprRRmax = max([RR_stra_2019spr;RR_stra_2020spr]);
aversRRmax = max(RR_stra_all);
save('D:\DATA\Parsivel_temporary\averDSD_parameters_difseason.mat',...
    'averssumRR','aversautRR','averswinRR','averssprRR','aversRR','-append');
save('D:\DATA\Parsivel_temporary\averDSD_parameters_difseason.mat',...
    'averssumRainfall','aversautRainfall','averswinRainfall','averssprRainfall','sRainfall','-append');
save('D:\DATA\Parsivel_temporary\averDSD_parameters_difseason.mat',...
    'averssumRRmin','aversautRRmin','averswinRRmin','averssprRRmin','aversRRmin','-append');
save('D:\DATA\Parsivel_temporary\averDSD_parameters_difseason.mat',...
    'averssumRRmax','aversautRRmax','averswinRRmax','averssprRRmax','aversRRmax','-append');
save('E:\DATA\Parsivel_temporary\averDSD_parameters_difseason.mat',...
    'averssumRR','aversautRR','averswinRR','averssprRR','aversRR','-append');
save('E:\DATA\Parsivel_temporary\averDSD_parameters_difseason.mat',...
    'averssumRainfall','aversautRainfall','averswinRainfall','averssprRainfall','sRainfall','-append');
save('E:\DATA\Parsivel_temporary\averDSD_parameters_difseason.mat',...
    'averssumRRmin','aversautRRmin','averswinRRmin','averssprRRmin','aversRRmin','-append');
save('E:\DATA\Parsivel_temporary\averDSD_parameters_difseason.mat',...
    'averssumRRmax','aversautRRmax','averswinRRmax','averssprRRmax','aversRRmax','-append');
clear -regexp RR_stra_
%%
% clear
load('D:\DATA\Parsivel_temporary\DSD_parameters_difseason.mat','LWC_conv_*');
avercsumLWC = mean([LWC_conv_2019sum;LWC_conv_2020sum]);
avercautLWC = mean([LWC_conv_2019aut;LWC_conv_2020aut]);
avercwinLWC = mean([LWC_conv_2019win;LWC_conv_2020win]);
avercsprLWC = mean([LWC_conv_2019spr;LWC_conv_2020spr]);
avercLWC = mean(LWC_conv_all);
save('D:\DATA\Parsivel_temporary\averDSD_parameters_difseason.mat',...
    'avercsumLWC','avercautLWC','avercwinLWC','avercsprLWC','avercLWC','-append');
save('E:\DATA\Parsivel_temporary\averDSD_parameters_difseason.mat',...
    'avercsumLWC','avercautLWC','avercwinLWC','avercsprLWC','avercLWC','-append');
clear -regexp LWC_conv_
load('D:\DATA\Parsivel_temporary\DSD_parameters_difseason.mat','LWC_stra_*');
averssumLWC = mean([LWC_stra_2019sum;LWC_stra_2020sum]);
aversautLWC = mean([LWC_stra_2019aut;LWC_stra_2020aut]);
averswinLWC = mean([LWC_stra_2019win;LWC_stra_2020win]);
averssprLWC = mean([LWC_stra_2019spr;LWC_stra_2020spr]);
aversLWC = mean(LWC_stra_all);
save('D:\DATA\Parsivel_temporary\averDSD_parameters_difseason.mat',...
    'averssumLWC','aversautLWC','averswinLWC','averssprLWC','aversLWC','-append');
save('E:\DATA\Parsivel_temporary\averDSD_parameters_difseason.mat',...
    'averssumLWC','aversautLWC','averswinLWC','averssprLWC','aversLWC','-append');
clear -regexp LWC_stra_
%%
% clear
load('D:\DATA\Parsivel_temporary\DSD_parameters_difseason.mat','Dm_conv_*');
avercsumDm = mean([Dm_conv_2019sum;Dm_conv_2020sum]);
avercautDm = mean([Dm_conv_2019aut;Dm_conv_2020aut]);
avercwinDm = mean([Dm_conv_2019win;Dm_conv_2020win]);
avercsprDm = mean([Dm_conv_2019spr;Dm_conv_2020spr]);
avercDm = mean(Dm_conv_all);
save('D:\DATA\Parsivel_temporary\averDSD_parameters_difseason.mat',...
    'avercsumDm','avercautDm','avercwinDm','avercsprDm','avercDm','-append');
save('E:\DATA\Parsivel_temporary\averDSD_parameters_difseason.mat',...
    'avercsumDm','avercautDm','avercwinDm','avercsprDm','avercDm','-append');
clear -regexp Dm_conv_
load('D:\DATA\Parsivel_temporary\DSD_parameters_difseason.mat','Dm_stra_*');
averssumDm = mean([Dm_stra_2019sum;Dm_stra_2020sum]);
aversautDm = mean([Dm_stra_2019aut;Dm_stra_2020aut]);
averswinDm = mean([Dm_stra_2019win;Dm_stra_2020win]);
averssprDm = mean([Dm_stra_2019spr;Dm_stra_2020spr]);
aversDm = mean(Dm_stra_all);
save('D:\DATA\Parsivel_temporary\averDSD_parameters_difseason.mat',...
    'averssumDm','aversautDm','averswinDm','averssprDm','aversDm','-append');
save('E:\DATA\Parsivel_temporary\averDSD_parameters_difseason.mat',...
    'averssumDm','aversautDm','averswinDm','averssprDm','aversDm','-append');
clear -regexp Dm_stra_
%%
% clear
load('D:\DATA\Parsivel_temporary\DSD_parameters_difseason.mat','Delt_m_conv_*');
avercsumDelt_m = mean([Delt_m_conv_2019sum;Delt_m_conv_2020sum]);
avercautDelt_m = mean([Delt_m_conv_2019aut;Delt_m_conv_2020aut]);
avercwinDelt_m = mean([Delt_m_conv_2019win;Delt_m_conv_2020win]);
avercsprDelt_m = mean([Delt_m_conv_2019spr;Delt_m_conv_2020spr]);
avercDelt_m = mean(Delt_m_conv_all);
save('D:\DATA\Parsivel_temporary\averDSD_parameters_difseason.mat',...
    'avercsumDelt_m','avercautDelt_m','avercwinDelt_m','avercsprDelt_m','avercDelt_m','-append');
save('E:\DATA\Parsivel_temporary\averDSD_parameters_difseason.mat',...
    'avercsumDelt_m','avercautDelt_m','avercwinDelt_m','avercsprDelt_m','avercDelt_m','-append');
clear -regexp Delt_m_conv_
load('D:\DATA\Parsivel_temporary\DSD_parameters_difseason.mat','Delt_m_stra_*');
averssumDelt_m = mean([Delt_m_stra_2019sum;Delt_m_stra_2020sum]);
aversautDelt_m = mean([Delt_m_stra_2019aut;Delt_m_stra_2020aut]);
averswinDelt_m = mean([Delt_m_stra_2019win;Delt_m_stra_2020win]);
averssprDelt_m = mean([Delt_m_stra_2019spr;Delt_m_stra_2020spr]);
aversDelt_m = mean(Delt_m_stra_all);
save('D:\DATA\Parsivel_temporary\averDSD_parameters_difseason.mat',...
    'averssumDelt_m','aversautDelt_m','averswinDelt_m','averssprDelt_m','aversDelt_m','-append');
save('E:\DATA\Parsivel_temporary\averDSD_parameters_difseason.mat',...
    'averssumDelt_m','aversautDelt_m','averswinDelt_m','averssprDelt_m','aversDelt_m','-append');
clear -regexp Delt_m_stra_
%%
% clear
load('D:\DATA\Parsivel_temporary\DSD_parameters_difseason.mat','Nw_conv_*');
avercsumlogNw = mean([Nw_conv_2019sum;Nw_conv_2020sum]);
avercautlogNw = mean([Nw_conv_2019aut;Nw_conv_2020aut]);
avercwinlogNw = mean([Nw_conv_2019win;Nw_conv_2020win]);
avercsprlogNw = mean([Nw_conv_2019spr;Nw_conv_2020spr]);
averclogNw = mean(Nw_conv_all);
save('D:\DATA\Parsivel_temporary\averDSD_parameters_difseason.mat',...
    'avercsumlogNw','avercautlogNw','avercwinlogNw','avercsprlogNw','averclogNw','-append');
save('E:\DATA\Parsivel_temporary\averDSD_parameters_difseason.mat',...
    'avercsumlogNw','avercautlogNw','avercwinlogNw','avercsprlogNw','averclogNw','-append');
clear -regexp Nw_conv_
load('D:\DATA\Parsivel_temporary\DSD_parameters_difseason.mat','Nw_stra_*');
averssumlogNw = mean([Nw_stra_2019sum;Nw_stra_2020sum]);
aversautlogNw = mean([Nw_stra_2019aut;Nw_stra_2020aut]);
averswinlogNw = mean([Nw_stra_2019win;Nw_stra_2020win]);
averssprlogNw = mean([Nw_stra_2019spr;Nw_stra_2020spr]);
averslogNw = mean(Nw_stra_all);
save('D:\DATA\Parsivel_temporary\averDSD_parameters_difseason.mat',...
    'averssumlogNw','aversautlogNw','averswinlogNw','averssprlogNw','averslogNw','-append');
save('E:\DATA\Parsivel_temporary\averDSD_parameters_difseason.mat',...
    'averssumlogNw','aversautlogNw','averswinlogNw','averssprlogNw','averslogNw','-append');
clear -regexp Nw_stra_