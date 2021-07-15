
%Description:
%Classify the Rain Type
% History:
% 2021.05.06 by zhangtc

clear;
% load('E:\CODE\OTTparsivel2_mat\DSD_parameters.mat','central_dia_qc');
% file_root = 'E:\DATA\OTTParsivel\QC2019-\';
% file_day = dir([file_root,'*.h5']);
% 
% daymark_c = [];
% daymark_s = [];
% ND_conv = {};
% ND_stra ={};
% Nw_conv = {};
% Nw_stra = {};
% N0_stra = {};
% N0_conv = {};
% Dm_conv = {};
% Dm_stra = {};
% Delt_m_stra = {};
% Delt_m_conv = {};
% 
% LWC_stra = {};
% LWC_conv = {};
% RR_conv = {};
% RR_stra = {};
% Z_conv = {};
% Z_stra = {};
% 
% mu_stra = {};
% mu_conv = {};
% lamd_stra = {};
% lamd_conv = {};
% 
% for fnum = 1 : length(file_day)
%     fname = [file_root,file_day(fnum).name];
% 
%     typeflag = h5read(fname,'/typeflag');
%     if ~isempty(find(typeflag == 1))
%         daymark_c = [daymark_c;file_day(fnum).name(1:8)];
%         loc1 = find(typeflag == 1);
%         RR = h5read(fname,'/RR');
%         ND = h5read(fname,'/ND');
%         Nw = h5read(fname,'/Nw');
%         N0 = h5read(fname,'/N0');
%         Dm = h5read(fname,'/Dm');
%         Delt_m = h5read(fname,'/Delt_m');
%         LWC = h5read(fname,'/LWC');
%         Z = h5read(fname,'/Z');
%         mu = h5read(fname,'/mu');
%         lamd = h5read(fname,'/lamd');
% 
%         ND_conv = [ND_conv;ND(loc1,:)];
%         Nw_conv = [Nw_conv;Nw(loc1)];
%         N0_conv = [N0_conv;N0(loc1)];
%         Dm_conv = [Dm_conv;Dm(loc1)];
%         Delt_m_conv = [Delt_m_conv;Delt_m(loc1)];
% 
%         LWC_conv = [LWC_conv;LWC(loc1)];
%         RR_conv = [RR_conv;RR(loc1)];
%         Z_conv = [Z_conv;Z(loc1)];
% 
%         mu_conv = [mu_conv;mu(loc1)];
%         lamd_conv = [lamd_conv;lamd(loc1)];
%         clear loc_1 RR ND LWC Dm Nw Z Delt_m N0 mu lamd
%     end
%     if ~isempty(find(typeflag == 2))
%         daymark_s = [daymark_s;file_day(fnum).name(1:8)];
%         loc2 = find(typeflag == 2);
%         RR = h5read(fname,'/RR');
%         ND = h5read(fname,'/ND');
%         Nw = h5read(fname,'/Nw');
%         N0 = h5read(fname,'/N0');
%         Dm = h5read(fname,'/Dm');
%         Delt_m = h5read(fname,'/Delt_m');
%         LWC = h5read(fname,'/LWC');
%         Z = h5read(fname,'/Z');
%         mu = h5read(fname,'/mu');
%         lamd = h5read(fname,'/lamd');
% 
%         ND_stra =[ND_stra;ND(loc2,:)];
%         Nw_stra = [Nw_stra;Nw(loc2)];
%         N0_stra = [N0_stra;N0(loc2)];
%         Dm_stra = [Dm_stra;Dm(loc2)];
%         Delt_m_stra = [Delt_m_stra;Delt_m(loc2)];
% 
%         LWC_stra = [LWC_stra;LWC(loc2)];
%         RR_stra = [RR_stra;RR(loc2)];
%         Z_stra = [Z_stra;Z(loc2)];
% 
%         mu_stra = [mu_stra;mu(loc2)];
%         lamd_stra = [lamd_stra;lamd(loc2)];
%         clear loc_2 RR ND LWC Dm Nw Z Delt_m N0 mu lamd
%     end
% 
% end
% ND_conv = cell2mat(ND_conv);
% Nw_conv = log10(cell2mat(Nw_conv));
% N0_conv = cell2mat(N0_conv);
% Dm_conv = cell2mat(Dm_conv);
% Delt_m_conv = cell2mat(Delt_m_conv);
% 
% LWC_conv = cell2mat(LWC_conv);
% RR_conv = cell2mat(RR_conv);
% Z_conv = cell2mat(Z_conv);
% 
% mu_conv = cell2mat(mu_conv);
% lamd_conv = cell2mat(lamd_conv);
% 
% ND_stra = cell2mat(ND_stra);
% Nw_stra = log10(cell2mat(Nw_stra));
% N0_stra = cell2mat(N0_stra);
% Dm_stra = cell2mat(Dm_stra);
% Delt_m_stra = cell2mat(Delt_m_stra);
% 
% LWC_stra = cell2mat(LWC_stra);
% RR_stra = cell2mat(RR_stra);
% Z_stra = cell2mat(Z_stra);
% 
% mu_stra = cell2mat(mu_stra);
% lamd_stra = cell2mat(lamd_stra);
% 
% 
% save('E:\CODE\OTTparsivel2_mat\Raintype_data.mat',...
%     'daymark_c','daymark_s','ND_conv','ND_stra',...
%     'Nw_conv','Nw_stra','N0_stra','N0_conv',...
%     'Dm_conv','Dm_stra','Delt_m_stra','Delt_m_conv',...
%     'LWC_stra','LWC_conv','RR_conv','RR_stra','Z_conv','Z_stra',...
%     'mu_stra','mu_conv','lamd_stra','lamd_conv');


%%
load('E:\CODE\OTTparsivel2_mat\Raintype_data.mat','Dm_conv','RR_conv','Dm_stra','RR_stra');
figure;
Dm_RR_show(Dm_conv,RR_conv,Dm_stra,RR_stra);
saveas(gcf,'E:\DATA\OTTParsivel\Pictures\Dm-RR_all.png');
%%
%log10(Nw)-Dm
%all
load('E:\CODE\OTTparsivel2_mat\Raintype_data.mat','Dm_conv','Nw_conv','Dm_stra','Nw_stra');
figure;
Nw_Dm_show(Nw_conv,Dm_conv,Nw_stra,Dm_stra);
saveas(gcf,'E:\DATA\OTTParsivel\Pictures\Nw-Dm_all.png');
% close
%%
%log10(Nw)-Dm/.
% everyday
savepath = 'E:\DATA\OTTParsivel\Pictures\Nw-Dm\';
file_root = 'E:\DATA\OTTParsivel\QC2019-\';
file_day = dir([file_root,'*.h5']);
for fnum = 1 : length(file_day)
    fname = [file_root,file_day(fnum).name];
    Nw_conv = [];
    Dm_conv = [];
    Nw_stra= [];
    Dm_stra = [];
    typeflag = h5read(fname,'/typeflag');
    loc1 = find(typeflag == 1);
    loc2 = find(typeflag == 2);
 
    if length(loc1)+length(loc2) > 1
        Nw = h5read(fname,'/Nw');
        Dm = h5read(fname,'/Dm');
        Nw_conv = log10(Nw(loc1));
        Dm_conv = Dm(loc1);
        Nw_stra= log10(Nw(loc2));
        Dm_stra = Dm(loc2);

        figure;
        Nw_Dm_show(Nw_conv,Dm_conv,Nw_stra,Dm_stra);
        title({'log_{10}Nw-Dm'; file_day(fnum).name(1:8)});
        saveas(gcf,[savepath,file_day(fnum).name(1:8),'.png']);
        close

    end
end


%%
%Rain Rate Probability Distribution
load('E:\CODE\OTTparsivel2_mat\Raintype_data_non.mat','RR_conv','RR_stra');
rainrate = [cell2mat(RR_conv);cell2mat(RR_stra)];
figure;
ax1 = subplot(3,1,1);
h1 = histogram(rainrate);
h1.Normalization = 'probability';
h1.DisplayStyle = 'stairs';
h1.BinEdges = 0:2:150;
h1.LineWidth = 1.2;
ax1.YAxis.Scale = 'log';
ax1.FontSize = 12;
ax1.TickLength = [0.01 0.01];
ax1.LineWidth = 1.2;
ax1.XLim = [0 150];
ax1.XTick = 0:10:150;
ax1.YLim = [0 1e0];
ax1.YTick = [0 1e-4 1e-3 1e-2 1e-1 1e0];
title('Rain Rate Probability Distribution');
text(90,0.1,'All');

ax2 = subplot(3,1,2);
h2 = histogram(cell2mat(RR_conv));
h2.Normalization = 'probability';
h2.DisplayStyle = 'stairs';
h2.BinEdges = 0:2:150;
h2.LineWidth = 1.2;
ax2.YAxis.Scale = 'log';
ax2.FontSize = 12;
ax2.TickLength = [0.01 0.01];
ax2.LineWidth = 1.2;
ax2.XLim = [0 150];
ax2.XTick = 0:10:150;
ax2.YLim = [0 1e0];
ax2.YTick = [0 1e-4 1e-3 1e-2 1e-1 1e0];
text(90,0.1,'Convective');

ax3 = subplot(3,1,3);
h3 = histogram(cell2mat(RR_stra));
h3.Normalization = 'probability';
h3.DisplayStyle = 'stairs';
h3.BinEdges = 0:2:150;
h3.LineWidth = 1.2;
ax3.YAxis.Scale = 'log';
ax3.FontSize = 12;
ax3.TickLength = [0.01 0.01];
ax3.LineWidth = 1.2;
ax3.XLim = [0 150];
ax3.XTick = 0:10:150;
% ax1.XTickLabel = {'0','20','40','60','80','100','120'};
ax3.YLim = [0 1e0];
ax3.YTick = [0 1e-4 1e-3 1e-2 1e-1 1e0];
text(90,0.1,'Stratiform');

set(gcf,'Position',[1,1,600,400]);
saveas(gcf,'E:\DATA\OTTParsivel\Pictures\RainRate probability.png');
% close



