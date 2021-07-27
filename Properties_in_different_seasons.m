
%Description:
%Properties of raindrops in different seasons
% History:
% 2021.06.20 by zhangtc
%%
% figure;
clear
load('E:\CODE\OTTparsivel2_mat\data_parameters\Classification_data.mat');
DmNw_RR_show(Dm_conv_all,Nw_conv_all,RR_conv_all,Dm_stra_all,Nw_stra_all,RR_stra_all);
saveas(gcf,'E:\DATA\OTTParsivel\Pictures\DmNW-RR_den.png');
% suptitle({'Dm-R','2019.06-2021.05'});
%%
%ND
load('E:\CODE\OTTparsivel2_mat\data_parameters\DSD_parameters.mat','central_diameter');
load('E:\CODE\OTTparsivel2_mat\data_parameters\Classification_data.mat');
ND_conv = mean(ND_conv_all);
ND_stra = mean(ND_stra_all);
ND_all = mean([ND_conv_all;ND_stra_all]);
subplot(2,2,1)
p1=plot(central_diameter,mean([ND_conv_2019spr;ND_conv_2020spr]),'r');
p1.Marker = 'd';
p1.MarkerSize = 2;
p1.MarkerFaceColor = 'r';
p1.LineStyle = ':';
hold on
p2=plot(central_diameter,mean([ND_conv_2019sum;ND_conv_2020sum]),'b');
p2.Marker = 'd';
p2.MarkerSize = 2;
p2.MarkerFaceColor = 'b';
p2.LineStyle = ':';
p3=plot(central_diameter,mean([ND_conv_2019aut;ND_conv_2020aut]),'g');
p3.Marker = 'd';
p3.MarkerSize = 2;
p3.MarkerFaceColor = 'g';
p3.LineStyle = ':';
p4=plot(central_diameter,mean([ND_conv_2019win;ND_conv_2020win]),'c');
p4.Marker = 'd';
p4.MarkerSize = 2;
p4.MarkerFaceColor = 'c';
p4.LineStyle = ':';
legend('Spr.','Sum.','Aut.','Win.');
hold off
ax = gca;
ax.XLim = [0 8];
ax.XTick = 0:1:8;
ax.YScale = 'log';
ax.YLim = [0.0001 10000];
ax.Box = 'on';
ax.FontSize = 10;
ax.TickLength = [0.01 0.01];
ax.LineWidth = 1.5;
% ax.XLabel.String = 'D(mm)';
ax.YLabel.String = 'N(D)(m^{-3}\cdotmm^{-1})';
text(0.5,0.0008,{'(a) Convective'});
subplot(2,2,2)
p1=plot(central_diameter,mean([ND_stra_2019spr;ND_stra_2020spr]),'r');
p1.Marker = 's';
p1.MarkerSize = 2;
p1.MarkerFaceColor = 'r';
p1.LineStyle = ':';
hold on
p2=plot(central_diameter,mean([ND_stra_2019sum;ND_stra_2020sum]),'b');
p2.Marker = 's';
p2.MarkerSize = 2;
p2.MarkerFaceColor = 'b';
p2.LineStyle = ':';
p3=plot(central_diameter,mean([ND_stra_2019aut;ND_stra_2020aut]),'g');
p3.Marker = 's';
p3.MarkerSize = 2;
p3.MarkerFaceColor = 'g';
p3.LineStyle = ':';
p4=plot(central_diameter,mean([ND_stra_2019win;ND_stra_2020win]),'c');
p4.Marker = 's';
p4.MarkerSize = 2;
p4.MarkerFaceColor = 'c';
p4.LineStyle = ':';
legend('Spr.','Sum.','Aut.','Win.');
hold off
ax = gca;
ax.XLim = [0 8];
ax.XTick = 0:1:8;
ax.YScale = 'log';
ax.YLim = [0.0001 10000];
ax.Box = 'on';
ax.FontSize = 10;
ax.TickLength = [0.01 0.01];
ax.LineWidth = 1.5;
% ax.XLabel.String = 'D(mm)';
% ax.YLabel.String = 'N(D)(m^{-3}\cdotmm^{-1})';
text(0.5,0.0008,{'(b) Stratiform'});
subplot(2,2,3)
p1=plot(central_diameter,ND_conv,'b');
p1.Marker = 'd';
p1.MarkerSize = 2;
p1.MarkerFaceColor = 'b';
p1.LineStyle = ':';
hold on
p2=plot(central_diameter,ND_stra,'g');
p2.Marker = 's';
p2.MarkerSize = 2;
p2.MarkerFaceColor = 'g';
p2.LineStyle = ':';
p3=plot(central_diameter,ND_all,'k');
p3.Marker = 'o';
p3.MarkerSize = 2;
p3.MarkerFaceColor = 'k';
p3.LineStyle = ':';
legend('Convective','Stratiform','Total');
hold off
ax = gca;
ax.XLim = [0 8];
ax.XTick = 0:1:8;
ax.YScale = 'log';
ax.YLim = [0.0001 10000];
ax.Box = 'on';
ax.FontSize = 10;
ax.TickLength = [0.01 0.01];
ax.LineWidth = 1.5;
ax.XLabel.String = 'D(mm)';
ax.YLabel.String = 'N(D)(m^{-3}\cdotmm^{-1})';
text(0.5,0.0008,{'(c) Total'});


set(gcf,'Position',[0 0 900 600]);
saveas(gcf,'E:\DATA\OTTParsivel\Pictures\DSD.png');
%%
mean(Delt_m_conv_all)
mean(Delt_m_stra_all)

mean([Delt_m_conv_2019spr;Delt_m_conv_2020spr])
mean([Delt_m_conv_2019sum;Delt_m_conv_2020sum])
mean([Delt_m_conv_2019aut;Delt_m_conv_2020aut])
mean([Delt_m_conv_2019win;Delt_m_conv_2020win])
mean([Delt_m_stra_2019spr;Delt_m_stra_2020spr])
mean([Delt_m_stra_2019sum;Delt_m_stra_2020sum])
mean([Delt_m_stra_2019aut;Delt_m_stra_2020aut])
mean([Delt_m_stra_2019win;Delt_m_stra_2020win])
%%
mu_lamd_show(mu_conv_all,lamd_conv_all,mu_stra_all,lamd_stra_all)
%%
Z_RR_show(Z_conv_all,RR_conv_all,Z_stra_all,RR_stra_all);

%%
%Nw-Dm
figure(1);
e1=errorbar(mean([Dm_stra_2019spr;Dm_stra_2020spr]),mean([Nw_stra_2019spr;Nw_stra_2020spr]),...
    std([Nw_stra_2019spr;Nw_stra_2020spr]),std([Nw_stra_2019spr;Nw_stra_2020spr]),...
    std([Dm_stra_2019spr;Dm_stra_2020spr]),std([Dm_stra_2019spr;Dm_stra_2020spr]),'s');
e1.MarkerSize = 10;
e1.Color = 'r';
e1.MarkerFaceColor='r';
e1.CapSize = 5;
hold on
e1=errorbar(mean([Dm_stra_2019sum;Dm_stra_2020sum]),mean([Nw_stra_2019sum;Nw_stra_2020sum]),...
    std([Nw_stra_2019sum;Nw_stra_2020sum]),std([Nw_stra_2019sum;Nw_stra_2020sum]),...
    std([Dm_stra_2019sum;Dm_stra_2020sum]),std([Dm_stra_2019sum;Dm_stra_2020sum]),'s');
e1.MarkerSize = 10;
e1.Color = 'b';
e1.MarkerFaceColor='b';
e1.CapSize = 5;
hold on
e1=errorbar(mean([Dm_stra_2019aut;Dm_stra_2020aut]),mean([Nw_stra_2019aut;Nw_stra_2020aut]),...
    std([Nw_stra_2019aut;Nw_stra_2020aut]),std([Nw_stra_2019aut;Nw_stra_2020aut]),...
    std([Dm_stra_2019aut;Dm_stra_2020aut]),std([Dm_stra_2019aut;Dm_stra_2020aut]),'s');
e1.MarkerSize = 10;
e1.Color = 'g';
e1.MarkerFaceColor='g';
e1.CapSize = 5;
hold on
e1=errorbar(mean([Dm_stra_2019win;Dm_stra_2020win]),mean([Nw_stra_2019win;Nw_stra_2020win]),...
    std([Nw_stra_2019win;Nw_stra_2020win]),std([Nw_stra_2019win;Nw_stra_2020win]),...
    std([Dm_stra_2019win;Dm_stra_2020win]),std([Dm_stra_2019win;Dm_stra_2020win]),'s');
e1.MarkerSize = 10;
e1.Color = 'c';
e1.MarkerFaceColor='c';
e1.CapSize = 5;
hold on
e1=errorbar(mean([Dm_conv_2019spr;Dm_conv_2020spr]),mean([Nw_conv_2019spr;Nw_conv_2020spr]),...
    std([Nw_conv_2019spr;Nw_conv_2020spr]),std([Nw_conv_2019spr;Nw_conv_2020spr]),...
    std([Dm_conv_2019spr;Dm_conv_2020spr]),std([Dm_conv_2019spr;Dm_conv_2020spr]),'d');
e1.MarkerSize = 10;
e1.Color = 'r';
e1.MarkerFaceColor='r';
e1.CapSize = 5;
hold on
e1=errorbar(mean([Dm_conv_2019sum;Dm_conv_2020sum]),mean([Nw_conv_2019sum;Nw_conv_2020sum]),...
    std([Nw_conv_2019sum;Nw_conv_2020sum]),std([Nw_conv_2019sum;Nw_conv_2020sum]),...
    std([Dm_conv_2019sum;Dm_conv_2020sum]),std([Dm_conv_2019sum;Dm_conv_2020sum]),'d');
e1.MarkerSize = 10;
e1.Color = 'b';
e1.MarkerFaceColor='b';
e1.CapSize = 5;
hold on
e1=errorbar(mean([Dm_conv_2019aut;Dm_conv_2020aut]),mean([Nw_conv_2019aut;Nw_conv_2020aut]),...
    std([Nw_conv_2019aut;Nw_conv_2020aut]),std([Nw_conv_2019aut;Nw_conv_2020aut]),...
    std([Dm_conv_2019aut;Dm_conv_2020aut]),std([Dm_conv_2019aut;Dm_conv_2020aut]),'d');
e1.MarkerSize = 10;
e1.Color = 'g';
e1.MarkerFaceColor='g';
e1.CapSize = 5;
hold on
e1=errorbar(mean([Dm_conv_2019win;Dm_conv_2020win]),mean([Nw_conv_2019win;Nw_conv_2020win]),...
    std([Nw_conv_2019win;Nw_conv_2020win]),std([Nw_conv_2019win;Nw_conv_2020win]),...
    std([Dm_conv_2019win;Dm_conv_2020win]),std([Dm_conv_2019win;Dm_conv_2020win]),'d');
e1.MarkerSize = 10;
e1.Color = 'c';
e1.MarkerFaceColor='c';
e1.CapSize = 5;
legend('Str.-spr.','Str.-sum.','Str.-aut.','Str.-win.',...
    'Con.-spr.','Con.-sum.','Con.-aut.','Con.-win.');
ax = gca;
ax.Box = 'on';
ax.FontSize = 12;
ax.TickLength = [0.01 0.01];
ax.LineWidth = 1.5;
ax.XLabel.String = 'Dm(mm)';
ax.YLabel.String = 'log_{10}Nw(mm^{-1}m^{-3})';
ax.XLim = [0 3.0];
ax.YLim = [2 6];
% legend('Convective','Stratiform');
rectangle('Position',[1.5 4.0 0.25 0.5],'LineWidth',2,'EdgeColor',[0.6 0.6 0.6]);
rectangle('Position',[2.0 3.0 0.75 0.5],'LineWidth',2,'EdgeColor',[0.6 0.6 0.6]);
text(1.5,4.8,{'Bringi et al.(2003)','Maritime con.'},'FontSize',12,'Color',[0.4 0.4 0.4]);
text(2.0,2.7,{'Bringi et al.(2003)','Continental con.'},'FontSize',12,'Color',[0.4 0.4 0.4]);
% line([0 3.9],[3.9 3.9],'Color',[0.6 0.6 0.6],'LineStyle','--','LineWidth',2);
% text(0.1,4.05,'MP-Nw','FontSize',12);
% hold on
% x1= 0.5:0.1:2;
% y1 = -1.6*x1+5.8;
% plot(x1,y1,'Color',[0.6 0.6 0.6],'LineStyle','--','LineWidth',2);


%%
%Dm_Nw-Probability
figure(1);
ax1 = subplot(3,1,1);
h1 = histogram([Nw_conv_all;Nw_stra_all],1.65:0.1:5.95);
h1.Normalization = 'probability';
h1.FaceColor = '[0 0.5 1]';
% h1.FaceAlpha = 0.3;
hold on
h2 = histogram([Dm_conv_all;Dm_stra_all],0.05:0.1:5.95);
h2.Normalization = 'probability';
h2.FaceColor = '[0 1 0.5]';
% h2.FaceAlpha = 0.3;
ax1.Box = 'on';
ax1.FontSize = 12;
ax1.TickLength = [0.01 0.01];
ax1.LineWidth = 1.5;
% ax.XLabel.String = 'Dm(mm)';
ax1.YLabel.String = 'Probability(%)';
ax1.XLim = [0 6.0]; 
ax1.YLim = [0 0.2]; 
ax1.YTick = 0:0.05:0.2;
ax1.YTickLabel = {'0','5','10','15','20'};
text(0.05,0.17,'(a)Total','FontSize',10);
text(2,0.13,{'Mean = 1.17','STD = 0.39','SK = 1.49'});
text(4.5,0.13,{'Mean = 3.93','STD = 0.51','SK = 0.25'});

ax2 = subplot(3,1,2);
h1 = histogram(Nw_conv_all,1.65:0.1:5.95);
h1.Normalization = 'probability';
h1.FaceColor = '[0 0.5 1]';
% h1.FaceAlpha = 0.3;
hold on
h2 = histogram(Dm_conv_all,0.05:0.1:5.95);
h2.Normalization = 'probability';
h2.FaceColor = '[0 1 0.5]';
% h2.FaceAlpha = 0.3;
ax2.Box = 'on';
ax2.FontSize = 12;
ax2.TickLength = [0.01 0.01];
ax2.LineWidth = 1.5;
% ax.XLabel.String = 'Dm(mm)';
ax2.YLabel.String = 'Probability(%)';
ax2.XLim = [0 6.0]; 
ax2.YLim = [0 0.2]; 
ax2.YTick = 0:0.05:0.2;
ax2.YTickLabel = {'0','5','10','15','20'};
text(0.05,0.17,'(b)Convective','FontSize',10);
text(2,0.13,{'Mean = 1.84','STD = 0.47','SK = 1.72'});
text(4.5,0.13,{'Mean = 3.92','STD = 0.35','SK = -2.16'});

ax3 = subplot(3,1,3);
h1 = histogram(Nw_stra_all,1.65:0.1:5.95);
h1.Normalization = 'probability';
h1.FaceColor = '[0 0.5 1]';
% h1.FaceAlpha = 0.3;
hold on
h2 = histogram([Dm_stra_all],0.05:0.1:5.95);
h2.Normalization = 'probability';
h2.FaceColor = '[0 1 0.5]';
% h2.FaceAlpha = 0.3;
ax3.Box = 'on';
ax3.FontSize = 12;
ax3.TickLength = [0.01 0.01];
ax3.LineWidth = 1.5;
% ax.XLabel.String = 'Dm(mm)';
ax3.YLabel.String = 'Probability(%)';
ax3.XLim = [0 6.0]; 
ax3.YLim = [0 0.2]; 
ax3.YTick = 0:0.05:0.2;
ax3.YTickLabel = {'0','5','10','15','20'};
ax3.XLabel.String = 'Dm(mm)                                                    log_{10}Nw(mm^{-1}m^{-3})';
text(0.05,0.17,'(c)Stratiform','FontSize',10);
text(2,0.13,{'Mean = 1.09','STD = 0.30','SK = 0.62'});
text(4.5,0.13,{'Mean = 3.93','STD = 0.53','SK = 0.32'});

set(gcf,'Position',[0 0 800 500]);

%%
%2019.06-2021.05
clear
load('E:\CODE\OTTparsivel2_mat\data_parameters\Rainevents_30.mat','Rainev_day');
load('E:\CODE\OTTparsivel2_mat\data_parameters\Rainevents_30.mat','Rainev_detal');

%
ND_conv_2019sum = [];
ND_stra_2019sum =[];
Nw_conv_2019sum = [];
Nw_stra_2019sum = [];
N0_stra_2019sum = [];
N0_conv_2019sum = [];
Dm_conv_2019sum = [];
Dm_stra_2019sum = [];
Delt_m_stra_2019sum = [];
Delt_m_conv_2019sum = [];
LWC_stra_2019sum = [];
LWC_conv_2019sum = [];
RR_conv_2019sum = [];
RR_stra_2019sum = [];
Z_conv_2019sum = [];
Z_stra_2019sum = [];
mu_stra_2019sum = [];
mu_conv_2019sum = [];
lamd_stra_2019sum = [];
lamd_conv_2019sum = [];
%
ND_conv_2019aut = [];
ND_stra_2019aut =[];
Nw_conv_2019aut = [];
Nw_stra_2019aut = [];
N0_stra_2019aut = [];
N0_conv_2019aut = [];
Dm_conv_2019aut = [];
Dm_stra_2019aut = [];
Delt_m_stra_2019aut = [];
Delt_m_conv_2019aut = [];
LWC_stra_2019aut = [];
LWC_conv_2019aut = [];
RR_conv_2019aut = [];
RR_stra_2019aut= [];
Z_conv_2019aut = [];
Z_stra_2019aut = [];
mu_stra_2019aut = [];
mu_conv_2019aut = [];
lamd_stra_2019aut = [];
lamd_conv_2019aut = [];
%
ND_conv_2019win = [];
ND_stra_2019win =[];
Nw_conv_2019win = [];
Nw_stra_2019win = [];
N0_stra_2019win = [];
N0_conv_2019win = [];
Dm_conv_2019win = [];
Dm_stra_2019win = [];
Delt_m_stra_2019win = [];
Delt_m_conv_2019win = [];
LWC_stra_2019win = [];
LWC_conv_2019win = [];
RR_conv_2019win = [];
RR_stra_2019win = [];
Z_conv_2019win = [];
Z_stra_2019win = [];
mu_stra_2019win = [];
mu_conv_2019win = [];
lamd_stra_2019win = [];
lamd_conv_2019win = [];
%
ND_conv_2019spr = [];
ND_stra_2019spr =[];
Nw_conv_2019spr = [];
Nw_stra_2019spr = [];
N0_stra_2019spr = [];
N0_conv_2019spr = [];
Dm_conv_2019spr = [];
Dm_stra_2019spr = [];
Delt_m_stra_2019spr = [];
Delt_m_conv_2019spr = [];
LWC_stra_2019spr = [];
LWC_conv_2019spr = [];
RR_conv_2019spr = [];
RR_stra_2019spr = [];
Z_conv_2019spr = [];
Z_stra_2019spr = [];
mu_stra_2019spr = [];
mu_conv_2019spr = [];
lamd_stra_2019spr = [];
lamd_conv_2019spr = [];
%
ND_conv_2019sum_ev = [];
ND_stra_2019sum_ev =[];
Nw_conv_2019sum_ev = [];
Nw_stra_2019sum_ev = [];
N0_stra_2019sum_ev = [];
N0_conv_2019sum_ev = [];
Dm_conv_2019sum_ev = [];
Dm_stra_2019sum_ev = [];
Delt_m_stra_2019sum_ev = [];
Delt_m_conv_2019sum_ev = [];
LWC_stra_2019sum_ev = [];
LWC_conv_2019sum_ev = [];
RR_conv_2019sum_ev = [];
RR_stra_2019sum_ev = [];
Z_conv_2019sum_ev = [];
Z_stra_2019sum_ev = [];
mu_stra_2019sum_ev = [];
mu_conv_2019sum_ev = [];
lamd_stra_2019sum_ev = [];
lamd_conv_2019sum_ev = [];
%
ND_conv_2019aut_ev = [];
ND_stra_2019aut_ev =[];
Nw_conv_2019aut_ev = [];
Nw_stra_2019aut_ev = [];
N0_stra_2019aut_ev = [];
N0_conv_2019aut_ev = [];
Dm_conv_2019aut_ev = [];
Dm_stra_2019aut_ev = [];
Delt_m_stra_2019aut_ev = [];
Delt_m_conv_2019aut_ev = [];
LWC_stra_2019aut_ev = [];
LWC_conv_2019aut_ev = [];
RR_conv_2019aut_ev = [];
RR_stra_2019aut_ev = [];
Z_conv_2019aut_ev = [];
Z_stra_2019aut_ev = [];
mu_stra_2019aut_ev = [];
mu_conv_2019aut_ev = [];
lamd_stra_2019aut_ev = [];
lamd_conv_2019aut_ev = [];
%
ND_conv_2019win_ev = [];
ND_stra_2019win_ev =[];
Nw_conv_2019win_ev = [];
Nw_stra_2019win_ev = [];
N0_stra_2019win_ev = [];
N0_conv_2019win_ev = [];
Dm_conv_2019win_ev = [];
Dm_stra_2019win_ev = [];
Delt_m_stra_2019win_ev = [];
Delt_m_conv_2019win_ev = [];
LWC_stra_2019win_ev = [];
LWC_conv_2019win_ev = [];
RR_conv_2019win_ev = [];
RR_stra_2019win_ev = [];
Z_conv_2019win_ev = [];
Z_stra_2019win_ev = [];
mu_stra_2019win_ev = [];
mu_conv_2019win_ev = [];
lamd_stra_2019win_ev = [];
lamd_conv_2019win_ev = [];
%
ND_conv_2019spr_ev = [];
ND_stra_2019spr_ev =[];
Nw_conv_2019spr_ev = [];
Nw_stra_2019spr_ev = [];
N0_stra_2019spr_ev = [];
N0_conv_2019spr_ev = [];
Dm_conv_2019spr_ev = [];
Dm_stra_2019spr_ev = [];
Delt_m_stra_2019spr_ev = [];
Delt_m_conv_2019spr_ev = [];
LWC_stra_2019spr_ev = [];
LWC_conv_2019spr_ev = [];
RR_conv_2019spr_ev = [];
RR_stra_2019spr_ev = [];
Z_conv_2019spr_ev = [];
Z_stra_2019spr_ev = [];
mu_stra_2019spr_ev = [];
mu_conv_2019spr_ev = [];
lamd_stra_2019spr_ev = [];
lamd_conv_2019spr_ev = [];
%
ND_conv_2020sum = [];
ND_stra_2020sum =[];
Nw_conv_2020sum = [];
Nw_stra_2020sum = [];
N0_stra_2020sum = [];
N0_conv_2020sum = [];
Dm_conv_2020sum = [];
Dm_stra_2020sum = [];
Delt_m_stra_2020sum = [];
Delt_m_conv_2020sum = [];
LWC_stra_2020sum = [];
LWC_conv_2020sum = [];
RR_conv_2020sum = [];
RR_stra_2020sum = [];
Z_conv_2020sum = [];
Z_stra_2020sum = [];
mu_stra_2020sum = [];
mu_conv_2020sum = [];
lamd_stra_2020sum = [];
lamd_conv_2020sum = [];
%
ND_conv_2020aut = [];
ND_stra_2020aut =[];
Nw_conv_2020aut = [];
Nw_stra_2020aut = [];
N0_stra_2020aut = [];
N0_conv_2020aut = [];
Dm_conv_2020aut = [];
Dm_stra_2020aut = [];
Delt_m_stra_2020aut = [];
Delt_m_conv_2020aut = [];
LWC_stra_2020aut = [];
LWC_conv_2020aut = [];
RR_conv_2020aut = [];
RR_stra_2020aut= [];
Z_conv_2020aut = [];
Z_stra_2020aut = [];
mu_stra_2020aut = [];
mu_conv_2020aut = [];
lamd_stra_2020aut = [];
lamd_conv_2020aut = [];
%
ND_conv_2020win = [];
ND_stra_2020win =[];
Nw_conv_2020win = [];
Nw_stra_2020win = [];
N0_stra_2020win = [];
N0_conv_2020win = [];
Dm_conv_2020win = [];
Dm_stra_2020win = [];
Delt_m_stra_2020win = [];
Delt_m_conv_2020win = [];
LWC_stra_2020win = [];
LWC_conv_2020win = [];
RR_conv_2020win = [];
RR_stra_2020win = [];
Z_conv_2020win = [];
Z_stra_2020win = [];
mu_stra_2020win = [];
mu_conv_2020win = [];
lamd_stra_2020win = [];
lamd_conv_2020win = [];
%
ND_conv_2020spr = [];
ND_stra_2020spr =[];
Nw_conv_2020spr = [];
Nw_stra_2020spr = [];
N0_stra_2020spr = [];
N0_conv_2020spr = [];
Dm_conv_2020spr = [];
Dm_stra_2020spr = [];
Delt_m_stra_2020spr = [];
Delt_m_conv_2020spr = [];
LWC_stra_2020spr = [];
LWC_conv_2020spr = [];
RR_conv_2020spr = [];
RR_stra_2020spr = [];
Z_conv_2020spr = [];
Z_stra_2020spr = [];
mu_stra_2020spr = [];
mu_conv_2020spr = [];
lamd_stra_2020spr = [];
lamd_conv_2020spr = [];
%
ND_conv_2020sum_ev = [];
ND_stra_2020sum_ev =[];
Nw_conv_2020sum_ev = [];
Nw_stra_2020sum_ev = [];
N0_stra_2020sum_ev = [];
N0_conv_2020sum_ev = [];
Dm_conv_2020sum_ev = [];
Dm_stra_2020sum_ev = [];
Delt_m_stra_2020sum_ev = [];
Delt_m_conv_2020sum_ev = [];
LWC_stra_2020sum_ev = [];
LWC_conv_2020sum_ev = [];
RR_conv_2020sum_ev = [];
RR_stra_2020sum_ev = [];
Z_conv_2020sum_ev = [];
Z_stra_2020sum_ev = [];
mu_stra_2020sum_ev = [];
mu_conv_2020sum_ev = [];
lamd_stra_2020sum_ev = [];
lamd_conv_2020sum_ev = [];
%
ND_conv_2020aut_ev = [];
ND_stra_2020aut_ev =[];
Nw_conv_2020aut_ev = [];
Nw_stra_2020aut_ev = [];
N0_stra_2020aut_ev = [];
N0_conv_2020aut_ev = [];
Dm_conv_2020aut_ev = [];
Dm_stra_2020aut_ev = [];
Delt_m_stra_2020aut_ev = [];
Delt_m_conv_2020aut_ev = [];
LWC_stra_2020aut_ev = [];
LWC_conv_2020aut_ev = [];
RR_conv_2020aut_ev = [];
RR_stra_2020aut_ev = [];
Z_conv_2020aut_ev = [];
Z_stra_2020aut_ev = [];
mu_stra_2020aut_ev = [];
mu_conv_2020aut_ev = [];
lamd_stra_2020aut_ev = [];
lamd_conv_2020aut_ev = [];
%
ND_conv_2020win_ev = [];
ND_stra_2020win_ev =[];
Nw_conv_2020win_ev = [];
Nw_stra_2020win_ev = [];
N0_stra_2020win_ev = [];
N0_conv_2020win_ev = [];
Dm_conv_2020win_ev = [];
Dm_stra_2020win_ev = [];
Delt_m_stra_2020win_ev = [];
Delt_m_conv_2020win_ev = [];
LWC_stra_2020win_ev = [];
LWC_conv_2020win_ev = [];
RR_conv_2020win_ev = [];
RR_stra_2020win_ev = [];
Z_conv_2020win_ev = [];
Z_stra_2020win_ev = [];
mu_stra_2020win_ev = [];
mu_conv_2020win_ev = [];
lamd_stra_2020win_ev = [];
lamd_conv_2020win_ev = [];
%
ND_conv_2020spr_ev = [];
ND_stra_2020spr_ev =[];
Nw_conv_2020spr_ev = [];
Nw_stra_2020spr_ev = [];
N0_stra_2020spr_ev = [];
N0_conv_2020spr_ev = [];
Dm_conv_2020spr_ev = [];
Dm_stra_2020spr_ev = [];
Delt_m_stra_2020spr_ev = [];
Delt_m_conv_2020spr_ev = [];
LWC_stra_2020spr_ev = [];
LWC_conv_2020spr_ev = [];
RR_conv_2020spr_ev = [];
RR_stra_2020spr_ev = [];
Z_conv_2020spr_ev = [];
Z_stra_2020spr_ev = [];
mu_stra_2020spr_ev = [];
mu_conv_2020spr_ev = [];
lamd_stra_2020spr_ev = [];
lamd_conv_2020spr_ev = [];
%
for inum = 1:length(Rainev_day)
    mkey = fix(str2num(Rainev_day{inum,1})/100);
    fname = ['E:\DATA\OTTParsivel\nonQC2019-\',Rainev_day{inum,1},'.h5'];
    rainloc = Rainev_detal{inum,1};
    loclen = size(rainloc,1);
    RR = h5read(fname,'/RR');
    ND = h5read(fname,'/ND');
    Nw = h5read(fname,'/Nw');
    N0 = h5read(fname,'/N0');
    Dm = h5read(fname,'/Dm');
    Delt_m = h5read(fname,'/Delt_m');
    LWC = h5read(fname,'/LWC');
    Z = h5read(fname,'/Z');
    mu = h5read(fname,'/mu');
    lamd = h5read(fname,'/lamd');
    typeflag = h5read(fname,'/typeflag');
    
    for enum = 1:loclen
        temptype = typeflag(rainloc(enum,1):rainloc(enum,2));
        tempRR = RR(rainloc(enum,1):rainloc(enum,2));
        tempNw = Nw(rainloc(enum,1):rainloc(enum,2));
        tempDm = Dm(rainloc(enum,1):rainloc(enum,2));
        tempLWC = LWC(rainloc(enum,1):rainloc(enum,2));
        tempZ = Z(rainloc(enum,1):rainloc(enum,2));
        tempDem = Delt_m(rainloc(enum,1):rainloc(enum,2));
        tempmu = mu(rainloc(enum,1):rainloc(enum,2));
        templamd = lamd(rainloc(enum,1):rainloc(enum,2));
        tempN0 = N0(rainloc(enum,1):rainloc(enum,2));
        tempND = ND(rainloc(enum,1):rainloc(enum,2),:);
        switch (fix(mkey./100)-2019)*12 + mod(mkey,100)-5
            case {1,2,3}
                if find(temptype == 1)
                    Nw_conv_2019sum = [Nw_conv_2019sum;log10(tempNw(temptype == 1))];
                    Dm_conv_2019sum = [Dm_conv_2019sum;tempDm(temptype == 1)];
                    Nw_conv_2019sum_ev = [Nw_conv_2019sum_ev;[mean(log10(tempNw(temptype == 1))),std(log10(tempNw(temptype == 1)))]];
                    Dm_conv_2019sum_ev = [Dm_conv_2019sum_ev;[mean(tempDm(temptype == 1)),std(tempDm(temptype == 1))]];
                    RR_conv_2019sum = [RR_conv_2019sum;tempRR(temptype == 1)];
                    RR_conv_2019sum_ev = [RR_conv_2019sum_ev;[mean(tempRR(temptype == 1)),std(tempRR(temptype == 1))]];
                    Delt_m_conv_2019sum = [Delt_m_conv_2019sum;tempDem(temptype == 1)];
                    Delt_m_conv_2019sum_ev = [Delt_m_conv_2019sum_ev;[mean(tempDem(temptype == 1)),std(tempDem(temptype == 1))]];
                    LWC_conv_2019sum = [LWC_conv_2019sum;tempLWC(temptype == 1)];
                    LWC_conv_2019sum_ev = [LWC_conv_2019sum_ev;[mean(tempLWC(temptype == 1)),std(tempLWC(temptype == 1))]];
                    mu_conv_2019sum = [mu_conv_2019sum;tempmu(temptype == 1)];
                    mu_conv_2019sum_ev = [mu_conv_2019sum_ev;[mean(tempmu(temptype == 1)),std(tempmu(temptype == 1))]];
                    lamd_conv_2019sum = [lamd_conv_2019sum;templamd(temptype == 1)];
                    lamd_conv_2019sum_ev = [lamd_conv_2019sum_ev;[mean(templamd(temptype == 1)),std(templamd(temptype == 1))]];
                    Z_conv_2019sum = [Z_conv_2019sum;tempZ(temptype == 1)];
                    Z_conv_2019sum_ev = [Z_conv_2019sum_ev;[mean(tempZ(temptype == 1)),std(tempZ(temptype == 1))]];
                    N0_conv_2019sum = [N0_conv_2019sum;tempN0(temptype == 1)];
                    N0_conv_2019sum_ev = [N0_conv_2019sum_ev;[mean(tempN0(temptype == 1)),std(tempN0(temptype == 1))]];
                    ND_conv_2019sum = [ND_conv_2019sum;tempND(temptype == 1,:)];
                    ND_conv_2019sum_ev = [ND_conv_2019sum_ev;mean(tempND(temptype == 1,:),1)];
                end
                if find(temptype == 2)
                    Nw_stra_2019sum = [Nw_stra_2019sum;log10(tempNw(temptype == 2))];
                    Dm_stra_2019sum = [Dm_stra_2019sum;tempDm(temptype == 2)];
                    Nw_stra_2019sum_ev = [Nw_stra_2019sum_ev;[mean(log10(tempNw(temptype == 2))),std(log10(tempNw(temptype == 2)))]];
                    Dm_stra_2019sum_ev = [Dm_stra_2019sum_ev;[mean(tempDm(temptype == 2)),std(tempDm(temptype == 2))]];
                    RR_stra_2019sum = [RR_stra_2019sum;tempRR(temptype == 2)];
                    RR_stra_2019sum_ev = [RR_stra_2019sum_ev;[mean(tempRR(temptype == 2)),std(tempRR(temptype == 2))]];
                    Delt_m_stra_2019sum = [Delt_m_stra_2019sum;tempDem(temptype == 2)];
                    Delt_m_stra_2019sum_ev = [Delt_m_stra_2019sum_ev;[mean(tempDem(temptype == 2)),std(tempDem(temptype == 2))]];
                    LWC_stra_2019sum = [LWC_stra_2019sum;tempLWC(temptype == 2)];
                    LWC_stra_2019sum_ev = [LWC_stra_2019sum_ev;[mean(tempLWC(temptype == 2)),std(tempLWC(temptype == 2))]];
                    mu_stra_2019sum = [mu_stra_2019sum;tempmu(temptype == 2)];
                    mu_stra_2019sum_ev = [mu_stra_2019sum_ev;[mean(tempmu(temptype == 2)),std(tempmu(temptype == 2))]];
                    lamd_stra_2019sum = [lamd_stra_2019sum;templamd(temptype == 2)];
                    lamd_stra_2019sum_ev = [lamd_stra_2019sum_ev;[mean(templamd(temptype == 2)),std(templamd(temptype == 2))]];
                    Z_stra_2019sum = [Z_stra_2019sum;tempZ(temptype == 2)];
                    Z_stra_2019sum_ev = [Z_stra_2019sum_ev;[mean(tempZ(temptype == 2)),std(tempZ(temptype == 2))]];
                    N0_stra_2019sum = [N0_stra_2019sum;tempN0(temptype == 2)];
                    N0_stra_2019sum_ev = [N0_stra_2019sum_ev;[mean(tempN0(temptype == 2)),std(tempN0(temptype == 2))]];
                    ND_stra_2019sum = [ND_stra_2019sum;tempND(temptype == 2,:)];
                    ND_stra_2019sum_ev = [ND_stra_2019sum_ev;mean(tempND(temptype == 2,:))];
                end
                
            case {4,5,6}
                if find(temptype == 1)
                    Nw_conv_2019aut = [Nw_conv_2019aut;log10(tempNw(temptype == 1))];
                    Dm_conv_2019aut = [Dm_conv_2019aut;tempDm(temptype == 1)];
                    Nw_conv_2019aut_ev = [Nw_conv_2019aut_ev;[mean(log10(tempNw(temptype == 1))),std(log10(tempNw(temptype == 1)))]];
                    Dm_conv_2019aut_ev = [Dm_conv_2019aut_ev;[mean(tempDm(temptype == 1)),std(tempDm(temptype == 1))]];
                    RR_conv_2019aut = [RR_conv_2019aut;tempRR(temptype == 1)];
                    RR_conv_2019aut_ev = [RR_conv_2019aut_ev;[mean(tempRR(temptype == 1)),std(tempRR(temptype == 1))]];
                    Delt_m_conv_2019aut = [Delt_m_conv_2019aut;tempDem(temptype == 1)];
                    Delt_m_conv_2019aut_ev = [Delt_m_conv_2019aut_ev;[mean(tempDem(temptype == 1)),std(tempDem(temptype == 1))]];
                    LWC_conv_2019aut = [LWC_conv_2019aut;tempLWC(temptype == 1)];
                    LWC_conv_2019aut_ev = [LWC_conv_2019aut_ev;[mean(tempLWC(temptype == 1)),std(tempLWC(temptype == 1))]];
                    mu_conv_2019aut = [mu_conv_2019aut;tempmu(temptype == 1)];
                    mu_conv_2019aut_ev = [mu_conv_2019aut_ev;[mean(tempmu(temptype == 1)),std(tempmu(temptype == 1))]];
                    lamd_conv_2019aut = [lamd_conv_2019aut;templamd(temptype == 1)];
                    lamd_conv_2019aut_ev = [lamd_conv_2019aut_ev;[mean(templamd(temptype == 1)),std(templamd(temptype == 1))]];
                    Z_conv_2019aut = [Z_conv_2019aut;tempZ(temptype == 1)];
                    Z_conv_2019aut_ev = [Z_conv_2019aut_ev;[mean(tempZ(temptype == 1)),std(tempZ(temptype == 1))]];
                    N0_conv_2019aut = [N0_conv_2019aut;tempN0(temptype == 1)];
                    N0_conv_2019aut_ev = [N0_conv_2019aut_ev;[mean(tempN0(temptype == 1)),std(tempN0(temptype == 1))]];
                    ND_conv_2019aut = [ND_conv_2019aut;tempND(temptype == 1,:)];
                    ND_conv_2019aut_ev = [ND_conv_2019aut_ev;mean(tempND(temptype == 1,:))];
                end
                if find(temptype == 2)
                    Nw_stra_2019aut = [Nw_stra_2019aut;log10(tempNw(temptype == 2))];
                    Dm_stra_2019aut = [Dm_stra_2019aut;tempDm(temptype == 2)];
                    Nw_stra_2019aut_ev = [Nw_stra_2019aut_ev;[mean(log10(tempNw(temptype == 2))),std(log10(tempNw(temptype == 2)))]];
                    Dm_stra_2019aut_ev = [Dm_stra_2019aut_ev;[mean(tempDm(temptype == 2)),std(tempDm(temptype == 2))]];
                    RR_stra_2019aut = [RR_stra_2019aut;tempRR(temptype == 2)];
                    RR_stra_2019aut_ev = [RR_stra_2019aut_ev;[mean(tempRR(temptype == 2)),std(tempRR(temptype == 2))]];
                    Delt_m_stra_2019aut = [Delt_m_stra_2019aut;tempDem(temptype == 2)];
                    Delt_m_stra_2019aut_ev = [Delt_m_stra_2019aut_ev;[mean(tempDem(temptype == 2)),std(tempDem(temptype == 2))]];
                    LWC_stra_2019aut = [LWC_stra_2019aut;tempLWC(temptype == 2)];
                    LWC_stra_2019aut_ev = [LWC_stra_2019aut_ev;[mean(tempLWC(temptype == 2)),std(tempLWC(temptype == 2))]];
                    mu_stra_2019aut = [mu_stra_2019aut;tempmu(temptype == 2)];
                    mu_stra_2019aut_ev = [mu_stra_2019aut_ev;[mean(tempmu(temptype == 2)),std(tempmu(temptype == 2))]];
                    lamd_stra_2019aut = [lamd_stra_2019aut;templamd(temptype == 2)];
                    lamd_stra_2019aut_ev = [lamd_stra_2019aut_ev;[mean(templamd(temptype == 2)),std(templamd(temptype == 2))]];
                    Z_stra_2019aut = [Z_stra_2019aut;tempZ(temptype == 2)];
                    Z_stra_2019aut_ev = [Z_stra_2019aut_ev;[mean(tempZ(temptype == 2)),std(tempZ(temptype == 2))]];
                    N0_stra_2019aut = [N0_stra_2019aut;tempN0(temptype == 2)];
                    NO_stra_2019aut_ev = [N0_stra_2019aut_ev;[mean(tempN0(temptype == 2)),std(tempN0(temptype == 2))]];
                    ND_stra_2019aut = [ND_stra_2019aut;tempND(temptype == 2,:)];
                    ND_stra_2019aut_ev = [ND_stra_2019aut_ev;mean(tempND(temptype == 2,:),1)];
                end
                
            case {7,8,9}
                if find(temptype == 1)
                    Nw_conv_2019win = [Nw_conv_2019win;log10(tempNw(temptype == 1))];
                    Dm_conv_2019win = [Dm_conv_2019win;tempDm(temptype == 1)];
                    Nw_conv_2019win_ev = [Nw_conv_2019win_ev;[mean(log10(tempNw(temptype == 1))),std(log10(tempNw(temptype == 1)))]];
                    Dm_conv_2019win_ev = [Dm_conv_2019win_ev;[mean(tempDm(temptype == 1)),std(tempDm(temptype == 1))]];
                    RR_conv_2019win = [RR_conv_2019win;tempRR(temptype == 1)];
                    RR_conv_2019win_ev = [RR_conv_2019win_ev;[mean(tempRR(temptype == 1)),std(tempRR(temptype == 1))]];
                    Delt_m_conv_2019win = [Delt_m_conv_2019win;tempDem(temptype == 1)];
                    Delt_m_conv_2019win_ev = [Delt_m_conv_2019win_ev;[mean(tempDem(temptype == 1)),std(tempDem(temptype == 1))]];
                    LWC_conv_2019win = [LWC_conv_2019win;tempLWC(temptype == 1)];
                    LWC_conv_2019win_ev = [LWC_conv_2019win_ev;[mean(tempLWC(temptype == 1)),std(tempLWC(temptype == 1))]];
                    mu_conv_2019win = [mu_conv_2019win;tempmu(temptype == 1)];
                    mu_conv_2019win_ev = [mu_conv_2019win_ev;[mean(tempmu(temptype == 1)),std(tempmu(temptype == 1))]];
                    lamd_conv_2019win = [lamd_conv_2019win;templamd(temptype == 1)];
                    lamd_conv_2019win_ev = [lamd_conv_2019win_ev;[mean(templamd(temptype == 1)),std(templamd(temptype == 1))]];
                    Z_conv_2019win = [Z_conv_2019win;tempZ(temptype == 1)];
                    Z_conv_2019win_ev = [Z_conv_2019win_ev;[mean(tempZ(temptype == 1)),std(tempZ(temptype == 1))]];
                    N0_conv_2019win = [N0_conv_2019win;tempN0(temptype == 1)];
                    N0_conv_2019win_ev = [N0_conv_2019win_ev;[mean(tempN0(temptype == 1)),std(tempN0(temptype == 1))]];
                    ND_conv_2019win = [ND_conv_2019win;tempND(temptype == 1,:)];
                    ND_conv_2019win_ev = [ND_conv_2019win_ev;mean(tempND(temptype == 1,:),1)];
                    
                end
                if find(temptype == 2)
                    Nw_stra_2019win = [Nw_stra_2019win;log10(tempNw(temptype == 2))];
                    Dm_stra_2019win = [Dm_stra_2019win;tempDm(temptype == 2)];
                    Nw_stra_2019win_ev = [Nw_stra_2019win_ev;[mean(log10(tempNw(temptype == 2))),std(log10(tempNw(temptype == 2)))]];
                    Dm_stra_2019win_ev = [Dm_stra_2019win_ev;[mean(tempDm(temptype == 2)),std(tempDm(temptype == 2))]];
                    RR_stra_2019win = [RR_stra_2019win;tempRR(temptype == 2)];
                    RR_stra_2019win_ev = [RR_stra_2019win_ev;[mean(tempRR(temptype == 2)),std(tempRR(temptype == 2))]];
                    Delt_m_stra_2019win = [Delt_m_stra_2019win;tempDem(temptype == 2)];
                    Delt_m_stra_2019win_ev = [Delt_m_stra_2019win_ev;[mean(tempDem(temptype == 2)),std(tempDem(temptype == 2))]];
                    LWC_stra_2019win = [LWC_stra_2019win;tempLWC(temptype == 2)];
                    LWC_stra_2019win_ev = [LWC_stra_2019win_ev;[mean(tempLWC(temptype == 2)),std(tempLWC(temptype == 2))]];
                    mu_stra_2019win = [mu_stra_2019win;tempmu(temptype == 2)];
                    mu_stra_2019win_ev = [mu_stra_2019win_ev;[mean(tempmu(temptype == 2)),std(tempmu(temptype == 2))]];
                    lamd_stra_2019win = [lamd_stra_2019win;templamd(temptype == 2)];
                    lamd_stra_2019win_ev = [lamd_stra_2019win_ev;[mean(templamd(temptype == 2)),std(templamd(temptype == 2))]];
                    Z_stra_2019win = [Z_stra_2019win;tempZ(temptype == 2)];
                    Z_stra_2019win_ev = [Z_stra_2019win_ev;[mean(tempZ(temptype == 2)),std(tempZ(temptype == 2))]];
                    N0_stra_2019win = [N0_stra_2019win;tempN0(temptype == 2)];
                    N0_stra_2019win_ev = [N0_stra_2019win_ev;[mean(tempN0(temptype == 2)),std(tempN0(temptype == 2))]];
                    ND_stra_2019win = [ND_stra_2019win;tempND(temptype == 2,:)];
                    ND_stra_2019win_ev = [ND_stra_2019win_ev;mean(tempND(temptype == 2,:),1)];
                end
            case {10,11,12}
                if find(temptype == 1)
                    Nw_conv_2019spr = [Nw_conv_2019spr;log10(tempNw(temptype == 1))];
                    Dm_conv_2019spr = [Dm_conv_2019spr;tempDm(temptype == 1)];
                    Nw_conv_2019spr_ev = [Nw_conv_2019spr_ev;[mean(log10(tempNw(temptype == 1))),std(log10(tempNw(temptype == 1)))]];
                    Dm_conv_2019spr_ev = [Dm_conv_2019spr_ev;[mean(tempDm(temptype == 1)),std(tempDm(temptype == 1))]];
                    RR_conv_2019spr = [RR_conv_2019spr;tempRR(temptype == 1)];
                    RR_conv_2019spr_ev = [RR_conv_2019spr_ev;[mean(tempRR(temptype == 1)),std(tempRR(temptype == 1))]];
                    Delt_m_conv_2019spr = [Delt_m_conv_2019spr;tempDem(temptype == 1)];
                    Delt_m_conv_2019spr_ev = [Delt_m_conv_2019spr_ev;[mean(tempDem(temptype == 1)),std(tempDem(temptype == 1))]];
                    LWC_conv_2019spr = [LWC_conv_2019spr;tempLWC(temptype == 1)];
                    LWC_conv_2019spr_ev = [LWC_conv_2019spr_ev;[mean(tempLWC(temptype == 1)),std(tempLWC(temptype == 1))]];
                    mu_conv_2019spr = [mu_conv_2019spr;tempmu(temptype == 1)];
                    mu_conv_2019spr_ev = [mu_conv_2019spr_ev;[mean(tempmu(temptype == 1)),std(tempmu(temptype == 1))]];
                    lamd_conv_2019spr = [lamd_conv_2019spr;templamd(temptype == 1)];
                    lamd_conv_2019spr_ev = [lamd_conv_2019spr_ev;[mean(templamd(temptype == 1)),std(templamd(temptype == 1))]];
                    Z_conv_2019spr = [Z_conv_2019spr;tempZ(temptype == 1)];
                    Z_conv_2019spr_ev = [Z_conv_2019spr_ev;[mean(tempZ(temptype == 1)),std(tempZ(temptype == 1))]];
                    N0_conv_2019spr = [N0_conv_2019spr;tempN0(temptype == 1)];
                    N0_conv_2019spr_ev = [N0_conv_2019spr_ev;[mean(tempN0(temptype == 1)),std(tempN0(temptype == 1))]];
                    ND_conv_2019spr = [ND_conv_2019spr;tempND(temptype == 1,:)];
                    ND_conv_2019spr_ev = [ND_conv_2019spr_ev;mean(tempND(temptype == 1,:),1)];
                end
                if find(temptype == 2)
                    Nw_stra_2019spr = [Nw_stra_2019spr;log10(tempNw(temptype == 2))];
                    Dm_stra_2019spr = [Dm_stra_2019spr;tempDm(temptype == 2)];
                    Nw_stra_2019spr_ev = [Nw_stra_2019spr_ev;[mean(log10(tempNw(temptype == 2))),std(log10(tempNw(temptype == 2)))]];
                    Dm_stra_2019spr_ev = [Dm_stra_2019spr_ev;[mean(tempDm(temptype == 2)),std(tempDm(temptype == 2))]];
                    RR_stra_2019spr = [RR_stra_2019spr;tempRR(temptype == 2)];
                    RR_stra_2019spr_ev = [RR_stra_2019spr_ev;[mean(tempRR(temptype == 2)),std(tempRR(temptype == 2))]];
                    Delt_m_stra_2019spr = [Delt_m_stra_2019spr;tempDem(temptype == 2)];
                    Delt_m_stra_2019spr_ev = [Delt_m_stra_2019spr_ev;[mean(tempDem(temptype == 2)),std(tempDem(temptype == 2))]];
                    LWC_stra_2019spr = [LWC_stra_2019spr;tempLWC(temptype == 2)];
                    LWC_stra_2019spr_ev = [LWC_stra_2019spr_ev;[mean(tempLWC(temptype == 2)),std(tempLWC(temptype == 2))]];
                    mu_stra_2019spr = [mu_stra_2019spr;tempmu(temptype == 2)];
                    mu_stra_2019spr_ev = [mu_stra_2019spr_ev;[mean(tempmu(temptype == 2)),std(tempmu(temptype == 2))]];
                    lamd_stra_2019spr = [lamd_stra_2019spr;templamd(temptype == 2)];
                    lamd_stra_2019spr_ev = [lamd_stra_2019spr_ev;[mean(templamd(temptype == 2)),std(templamd(temptype == 2))]];
                    Z_stra_2019spr = [Z_stra_2019spr;tempZ(temptype == 2)];
                    Z_stra_2019spr_ev = [Z_stra_2019spr_ev;[mean(tempZ(temptype == 2)),std(tempZ(temptype == 2))]];
                    N0_stra_2019spr = [N0_stra_2019spr;tempN0(temptype == 2)];
                    N0_stra_2019spr_ev = [N0_stra_2019spr_ev;[mean(tempN0(temptype == 2)),std(tempN0(temptype == 2))]];
                    ND_stra_2019spr = [ND_stra_2019spr;tempND(temptype == 2,:)];
                    ND_stra_2019spr_ev = [ND_stra_2019spr_ev;mean(tempND(temptype == 2,:),1)];
                end
            otherwise
                switch (fix(mkey./100)-2020)*12 + mod(mkey,100)-5
                    case {1,2,3}
                        if find(temptype == 1)
                            Nw_conv_2020sum = [Nw_conv_2020sum;log10(tempNw(temptype == 1))];
                            Dm_conv_2020sum = [Dm_conv_2020sum;tempDm(temptype == 1)];
                            Nw_conv_2020sum_ev = [Nw_conv_2020sum_ev;[mean(log10(tempNw(temptype == 1))),std(log10(tempNw(temptype == 1)))]];
                            Dm_conv_2020sum_ev = [Dm_conv_2020sum_ev;[mean(tempDm(temptype == 1)),std(tempDm(temptype == 1))]];
                            RR_conv_2020sum = [RR_conv_2020sum;tempRR(temptype == 1)];
                            RR_conv_2020sum_ev = [RR_conv_2020sum_ev;[mean(tempRR(temptype == 1)),std(tempRR(temptype == 1))]];
                            Delt_m_conv_2020sum = [Delt_m_conv_2020sum;tempDem(temptype == 1)];
                            Delt_m_conv_2020sum_ev = [Delt_m_conv_2020sum_ev;[mean(tempDem(temptype == 1)),std(tempDem(temptype == 1))]];
                            LWC_conv_2020sum = [LWC_conv_2020sum;tempLWC(temptype == 1)];
                            LWC_conv_2020sum_ev = [LWC_conv_2020sum_ev;[mean(tempLWC(temptype == 1)),std(tempLWC(temptype == 1))]];
                            mu_conv_2020sum = [mu_conv_2020sum;tempmu(temptype == 1)];
                            mu_conv_2020sum_ev = [mu_conv_2020sum_ev;[mean(tempmu(temptype == 1)),std(tempmu(temptype == 1))]];
                            lamd_conv_2020sum = [lamd_conv_2020sum;templamd(temptype == 1)];
                            lamd_conv_2020sum_ev = [lamd_conv_2020sum_ev;[mean(templamd(temptype == 1)),std(templamd(temptype == 1))]];
                            Z_conv_2020sum = [Z_conv_2020sum;tempZ(temptype == 1)];
                            Z_conv_2020sum_ev = [Z_conv_2020sum_ev;[mean(tempZ(temptype == 1)),std(tempZ(temptype == 1))]];
                            N0_conv_2020sum = [N0_conv_2020sum;tempN0(temptype == 1)];
                            N0_conv_2020sum_ev = [N0_conv_2020sum_ev;[mean(tempN0(temptype == 1)),std(tempN0(temptype == 1))]];
                            ND_conv_2020sum = [ND_conv_2020sum;tempND(temptype == 1,:)];
                            ND_conv_2020sum_ev = [ND_conv_2020sum_ev;mean(tempND(temptype == 1,:),1)];
                        end
                        if find(temptype == 2)
                            Nw_stra_2020sum = [Nw_stra_2020sum;log10(tempNw(temptype == 2))];
                            Dm_stra_2020sum = [Dm_stra_2020sum;tempDm(temptype == 2)];
                            Nw_stra_2020sum_ev = [Nw_stra_2020sum_ev;[mean(log10(tempNw(temptype == 2))),std(log10(tempNw(temptype == 2)))]];
                            Dm_stra_2020sum_ev = [Dm_stra_2020sum_ev;[mean(tempDm(temptype == 2)),std(tempDm(temptype == 2))]];
                            RR_stra_2020sum = [RR_stra_2020sum;tempRR(temptype == 2)];
                            RR_stra_2020sum_ev = [RR_stra_2020sum_ev;[mean(tempRR(temptype == 2)),std(tempRR(temptype == 2))]];
                            Delt_m_stra_2020sum = [Delt_m_stra_2020sum;tempDem(temptype == 2)];
                            Delt_m_stra_2020sum_ev = [Delt_m_stra_2020sum_ev;[mean(tempDem(temptype == 2)),std(tempDem(temptype == 2))]];
                            LWC_stra_2020sum = [LWC_stra_2020sum;tempLWC(temptype == 2)];
                            LWC_stra_2020sum_ev = [LWC_stra_2020sum_ev;[mean(tempLWC(temptype == 2)),std(tempLWC(temptype == 2))]];
                            mu_stra_2020sum = [mu_stra_2020sum;tempmu(temptype == 2)];
                            mu_stra_2020sum_ev = [mu_stra_2020sum_ev;[mean(tempmu(temptype == 2)),std(tempmu(temptype == 2))]];
                            lamd_stra_2020sum = [lamd_stra_2020sum;templamd(temptype == 2)];
                            lamd_stra_2020sum_ev = [lamd_stra_2020sum_ev;[mean(templamd(temptype == 2)),std(templamd(temptype == 2))]];
                            Z_stra_2020sum = [Z_stra_2020sum;tempZ(temptype == 2)];
                            Z_stra_2020sum_ev = [Z_stra_2020sum_ev;[mean(tempZ(temptype == 2)),std(tempZ(temptype == 2))]];
                            N0_stra_2020sum = [N0_stra_2020sum;tempN0(temptype == 2)];
                            N0_stra_2020sum_ev = [N0_stra_2020sum_ev;[mean(tempN0(temptype == 2)),std(tempN0(temptype == 2))]];
                            ND_stra_2020sum = [ND_stra_2020sum;tempND(temptype == 2,:)];
                            ND_stra_2020sum_ev = [ND_stra_2020sum_ev;mean(tempND(temptype == 2,:),1)];
                        end
                    case {4,5,6}
                        if find(temptype == 1)
                            Nw_conv_2020aut = [Nw_conv_2020aut;log10(tempNw(temptype == 1))];
                            Dm_conv_2020aut = [Dm_conv_2020aut;tempDm(temptype == 1)];
                            Nw_conv_2020aut_ev = [Nw_conv_2020aut_ev;[mean(log10(tempNw(temptype == 1))),std(log10(tempNw(temptype == 1)))]];
                            Dm_conv_2020aut_ev = [Dm_conv_2020aut_ev;[mean(tempDm(temptype == 1)),std(tempDm(temptype == 1))]];
                            RR_conv_2020aut = [RR_conv_2020aut;tempRR(temptype == 1)];
                            RR_conv_2020aut_ev = [RR_conv_2020aut_ev;[mean(tempRR(temptype == 1)),std(tempRR(temptype == 1))]];
                            Delt_m_conv_2020aut = [Delt_m_conv_2020aut;tempDem(temptype == 1)];
                            Delt_m_conv_2020aut_ev = [Delt_m_conv_2020aut_ev;[mean(tempDem(temptype == 1)),std(tempDem(temptype == 1))]];
                            LWC_conv_2020aut = [LWC_conv_2020aut;tempLWC(temptype == 1)];
                            LWC_conv_2020aut_ev = [LWC_conv_2020aut_ev;[mean(tempLWC(temptype == 1)),std(tempLWC(temptype == 1))]];
                            mu_conv_2020aut = [mu_conv_2020aut;tempmu(temptype == 1)];
                            mu_conv_2020aut_ev = [mu_conv_2020aut_ev;[mean(tempmu(temptype == 1)),std(tempmu(temptype == 1))]];
                            lamd_conv_2020aut = [lamd_conv_2020aut;templamd(temptype == 1)];
                            lamd_conv_2020aut_ev = [lamd_conv_2020aut_ev;[mean(templamd(temptype == 1)),std(templamd(temptype == 1))]];
                            Z_conv_2020aut = [Z_conv_2020aut;tempZ(temptype == 1)];
                            Z_conv_2020aut_ev = [Z_conv_2020aut_ev;[mean(tempZ(temptype == 1)),std(tempZ(temptype == 1))]];
                            N0_conv_2020aut = [N0_conv_2020aut;tempN0(temptype == 1)];
                            N0_conv_2020aut_ev = [N0_conv_2020aut_ev;[mean(tempN0(temptype == 1)),std(tempN0(temptype == 1))]];
                            ND_conv_2020aut = [ND_conv_2020aut;tempND(temptype == 1,:)];
                            ND_conv_2020aut_ev = [ND_conv_2020aut_ev;mean(tempND(temptype == 1,:),1)];
                        end
                        if find(temptype == 2)
                            Nw_stra_2020aut = [Nw_stra_2020aut;log10(tempNw(temptype == 2))];
                            Dm_stra_2020aut = [Dm_stra_2020aut;tempDm(temptype == 2)];
                            Nw_stra_2020aut_ev = [Nw_stra_2020aut_ev;[mean(log10(tempNw(temptype == 2))),std(log10(tempNw(temptype == 2)))]];
                            Dm_stra_2020aut_ev = [Dm_stra_2020aut_ev;[mean(tempDm(temptype == 2)),std(tempDm(temptype == 2))]];
                            RR_stra_2020aut = [RR_stra_2020aut;tempRR(temptype == 2)];
                            RR_stra_2020aut_ev = [RR_stra_2020aut_ev;[mean(tempRR(temptype == 2)),std(tempRR(temptype == 2))]];
                            Delt_m_stra_2020aut = [Delt_m_stra_2020aut;tempDem(temptype == 2)];
                            Delt_m_stra_2020aut_ev = [Delt_m_stra_2020aut_ev;[mean(tempDem(temptype == 2)),std(tempDem(temptype == 2))]];
                            LWC_stra_2020aut = [LWC_stra_2020aut;tempLWC(temptype == 2)];
                            LWC_stra_2020aut_ev = [LWC_stra_2020aut_ev;[mean(tempLWC(temptype == 2)),std(tempLWC(temptype == 2))]];
                            mu_stra_2020aut = [mu_stra_2020aut;tempmu(temptype == 2)];
                            mu_stra_2020aut_ev = [mu_stra_2020aut_ev;[mean(tempmu(temptype == 2)),std(tempmu(temptype == 2))]];
                            lamd_stra_2020aut = [lamd_stra_2020aut;templamd(temptype == 2)];
                            lamd_stra_2020aut_ev = [lamd_stra_2020aut_ev;[mean(templamd(temptype == 2)),std(templamd(temptype == 2))]];
                            Z_stra_2020aut = [Z_stra_2020aut;tempZ(temptype == 2)];
                            Z_stra_2020aut_ev = [Z_stra_2020aut_ev;[mean(tempZ(temptype == 2)),std(tempZ(temptype == 2))]];
                            N0_stra_2020aut = [N0_stra_2020aut;tempN0(temptype == 2)];
                            N0_stra_2020aut_ev = [N0_stra_2020aut_ev;[mean(tempN0(temptype == 2)),std(tempN0(temptype == 2))]];
                            ND_stra_2020aut = [ND_stra_2020aut;tempND(temptype == 2,:)];
                            ND_stra_2020aut_ev = [ND_stra_2020aut_ev;mean(tempND(temptype == 2,:),1)];
                        end
                        
                    case {7,8,9}
                        if find(temptype == 1)
                            Nw_conv_2020win = [Nw_conv_2020win;log10(tempNw(temptype == 1))];
                            Dm_conv_2020win = [Dm_conv_2020win;tempDm(temptype == 1)];
                            Nw_conv_2020win_ev = [Nw_conv_2020win_ev;[mean(log10(tempNw(temptype == 1))),std(log10(tempNw(temptype == 1)))]];
                            Dm_conv_2020win_ev = [Dm_conv_2020win_ev;[mean(tempDm(temptype == 1)),std(tempDm(temptype == 1))]];
                            RR_conv_2020win = [RR_conv_2020win;tempRR(temptype == 1)];
                            RR_conv_2020win_ev = [RR_conv_2020win_ev;[mean(tempRR(temptype == 1)),std(tempRR(temptype == 1))]];
                            Delt_m_conv_2020win = [Delt_m_conv_2020win;tempDem(temptype == 1)];
                            Delt_m_conv_2020win_ev = [Delt_m_conv_2020win_ev;[mean(tempDem(temptype == 1)),std(tempDem(temptype == 1))]];
                            LWC_conv_2020win = [LWC_conv_2020win;tempLWC(temptype == 1)];
                            LWC_conv_2020win_ev = [LWC_conv_2020win_ev;[mean(tempLWC(temptype == 1)),std(tempLWC(temptype == 1))]];
                            mu_conv_2020win = [mu_conv_2020win;tempmu(temptype == 1)];
                            mu_conv_2020win_ev = [mu_conv_2020win_ev;[mean(tempmu(temptype == 1)),std(tempmu(temptype == 1))]];
                            lamd_conv_2020win = [lamd_conv_2020win;templamd(temptype == 1)];
                            lamd_conv_2020win_ev = [lamd_conv_2020win_ev;[mean(templamd(temptype == 1)),std(templamd(temptype == 1))]];
                            Z_conv_2020win = [Z_conv_2020win;tempZ(temptype == 1)];
                            Z_conv_2020win_ev = [Z_conv_2020win_ev;[mean(tempZ(temptype == 1)),std(tempZ(temptype == 1))]];
                            N0_conv_2020win = [N0_conv_2020win;tempN0(temptype == 1)];
                            N0_conv_2020win_ev = [N0_conv_2020win_ev;[mean(tempN0(temptype == 1)),std(tempN0(temptype == 1))]];
                            ND_conv_2020win = [ND_conv_2020win;tempND(temptype == 1,:)];
                            ND_conv_2020win_ev = [ND_conv_2020win_ev;mean(tempND(temptype == 1,:),1)];
                        end
                        if find(temptype == 2)
                            Nw_stra_2020win = [Nw_stra_2020win;log10(tempNw(temptype == 2))];
                            Dm_stra_2020win = [Dm_stra_2020win;tempDm(temptype == 2)];
                            Nw_stra_2020win_ev = [Nw_stra_2020win_ev;[mean(log10(tempNw(temptype == 2))),std(log10(tempNw(temptype == 2)))]];
                            Dm_stra_2020win_ev = [Dm_stra_2020win_ev;[mean(tempDm(temptype == 2)),std(tempDm(temptype == 2))]];
                            RR_stra_2020win = [RR_stra_2020win;tempRR(temptype == 2)];
                            RR_stra_2020win_ev = [RR_stra_2020win_ev;[mean(tempRR(temptype == 2)),std(tempRR(temptype == 2))]];
                            Delt_m_stra_2020win = [Delt_m_stra_2020win;tempDem(temptype == 2)];
                            Delt_m_stra_2020win_ev = [Delt_m_stra_2020win_ev;[mean(tempDem(temptype == 2)),std(tempDem(temptype == 2))]];
                            LWC_stra_2020win = [LWC_stra_2020win;tempLWC(temptype == 2)];
                            LWC_stra_2020win_ev = [LWC_stra_2020win_ev;[mean(tempLWC(temptype == 2)),std(tempLWC(temptype == 2))]];
                            mu_stra_2020win = [mu_stra_2020win;tempmu(temptype == 2)];
                            mu_stra_2020win_ev = [mu_stra_2020win_ev;[mean(tempmu(temptype == 2)),std(tempmu(temptype == 2))]];
                            lamd_stra_2020win = [lamd_stra_2020win;templamd(temptype == 2)];
                            lamd_stra_2020win_ev = [lamd_stra_2020win_ev;[mean(templamd(temptype == 2)),std(templamd(temptype == 2))]];
                            Z_stra_2020win = [Z_stra_2020win;tempZ(temptype == 2)];
                            Z_stra_2020win_ev = [Z_stra_2020win_ev;[mean(tempZ(temptype == 2)),std(tempZ(temptype == 2))]];
                            N0_stra_2020win = [N0_stra_2020win;tempN0(temptype == 2)];
                            N0_stra_2020win_ev = [N0_stra_2020win_ev;[mean(tempN0(temptype == 2)),std(tempN0(temptype == 2))]];
                            ND_stra_2020win = [ND_stra_2020win;tempND(temptype == 2,:)];
                            ND_stra_2020win_ev = [ND_stra_2020win_ev;mean(tempND(temptype == 2,:),1)];
                        end
                    case {10,11,12}
                        if find(temptype == 1)
                            Nw_conv_2020spr = [Nw_conv_2020spr;log10(tempNw(temptype == 1))];
                            Dm_conv_2020spr = [Dm_conv_2020spr;tempDm(temptype == 1)];
                            Nw_conv_2020spr_ev = [Nw_conv_2020spr_ev;[mean(log10(tempNw(temptype == 1))),std(log10(tempNw(temptype == 1)))]];
                            Dm_conv_2020spr_ev = [Dm_conv_2020spr_ev;[mean(tempDm(temptype == 1)),std(tempDm(temptype == 1))]];
                            RR_conv_2020spr = [RR_conv_2020spr;tempRR(temptype == 1)];
                            RR_conv_2020spr_ev = [RR_conv_2020spr_ev;[mean(tempRR(temptype == 1)),std(tempRR(temptype == 1))]];
                            Delt_m_conv_2020spr = [Delt_m_conv_2020spr;tempDem(temptype == 1)];
                            Delt_m_conv_2020spr_ev = [Delt_m_conv_2020spr_ev;[mean(tempDem(temptype == 1)),std(tempDem(temptype == 1))]];
                            LWC_conv_2020spr = [LWC_conv_2020spr;tempLWC(temptype == 1)];
                            LWC_conv_2020spr_ev = [LWC_conv_2020spr_ev;[mean(tempLWC(temptype == 1)),std(tempLWC(temptype == 1))]];
                            mu_conv_2020spr = [mu_conv_2020spr;tempmu(temptype == 1)];
                            mu_conv_2020spr_ev = [mu_conv_2020spr_ev;[mean(tempmu(temptype == 1)),std(tempmu(temptype == 1))]];
                            lamd_conv_2020spr = [lamd_conv_2020spr;templamd(temptype == 1)];
                            lamd_conv_2020spr_ev = [lamd_conv_2020spr_ev;[mean(templamd(temptype == 1)),std(templamd(temptype == 1))]];
                            Z_conv_2020spr = [Z_conv_2020spr;tempZ(temptype == 1)];
                            Z_conv_2020spr_ev = [Z_conv_2020spr_ev;[mean(tempZ(temptype == 1)),std(tempZ(temptype == 1))]];
                            N0_conv_2020spr = [N0_conv_2020spr;tempN0(temptype == 1)];
                            N0_conv_2020spr_ev = [N0_conv_2020spr_ev;[mean(tempN0(temptype == 1)),std(tempN0(temptype == 1))]];
                            ND_conv_2020spr = [ND_conv_2020spr;tempND(temptype == 1,:)];
                            ND_conv_2020spr_ev = [ND_conv_2020spr_ev;mean(tempND(temptype == 1,:),1)];
                        end
                        if find(temptype == 2)
                            Nw_stra_2020spr = [Nw_stra_2020spr;log10(tempNw(temptype == 2))];
                            Dm_stra_2020spr = [Dm_stra_2020spr;tempDm(temptype == 2)];
                            Nw_stra_2020spr_ev = [Nw_stra_2020spr_ev;[mean(log10(tempNw(temptype == 2))),std(log10(tempNw(temptype == 2)))]];
                            Dm_stra_2020spr_ev = [Dm_stra_2020spr_ev;[mean(tempDm(temptype == 2)),std(tempDm(temptype == 2))]];
                            RR_stra_2020spr = [RR_stra_2020spr;tempRR(temptype == 2)];
                            RR_stra_2020spr_ev = [RR_stra_2020spr_ev;[mean(tempRR(temptype == 2)),std(tempRR(temptype == 2))]];
                            Delt_m_stra_2020spr = [Delt_m_stra_2020spr;tempDem(temptype == 2)];
                            Delt_m_stra_2020spr_ev = [Delt_m_stra_2020spr_ev;[mean(tempDem(temptype == 2)),std(tempDem(temptype == 2))]];
                            LWC_stra_2020spr = [LWC_stra_2020spr;tempLWC(temptype == 2)];
                            LWC_stra_2020spr_ev = [LWC_stra_2020spr_ev;[mean(tempLWC(temptype == 2)),std(tempLWC(temptype == 2))]];
                            mu_stra_2020spr = [mu_stra_2020spr;tempmu(temptype == 2)];
                            mu_stra_2020spr_ev = [mu_stra_2020spr_ev;[mean(tempmu(temptype == 2)),std(tempmu(temptype == 2))]];
                            lamd_stra_2020spr = [lamd_stra_2020spr;templamd(temptype == 2)];
                            lamd_stra_2020spr_ev = [lamd_stra_2020spr_ev;[mean(templamd(temptype == 2)),std(templamd(temptype == 2))]];
                            Z_stra_2020spr = [Z_stra_2020spr;tempZ(temptype == 2)];
                            Z_stra_2020spr_ev = [Z_stra_2020spr_ev;[mean(tempZ(temptype == 2)),std(tempZ(temptype == 2))]];
                            N0_stra_2020spr = [N0_stra_2020spr;tempN0(temptype == 2)];
                            N0_stra_2020spr_ev = [N0_stra_2020spr_ev;[mean(tempN0(temptype == 2)),std(tempN0(temptype == 2))]];
                            ND_stra_2020spr = [ND_stra_2020spr;tempND(temptype == 2,:)];
                            ND_stra_2020spr_ev = [ND_stra_2020spr_ev;mean(tempND(temptype == 2,:),1)];
                        end
                    otherwise
                        continue
                end
        end
        
    end
    
end

Nw_conv_all = [Nw_conv_2019spr;Nw_conv_2020spr;Nw_conv_2020sum;Nw_conv_2019sum;...
    Nw_conv_2019aut;Nw_conv_2020aut;Nw_conv_2019win;Nw_conv_2020win];
Dm_conv_all = [Dm_conv_2019spr;Dm_conv_2020spr;Dm_conv_2020sum;Dm_conv_2019sum;...
    Dm_conv_2019aut;Dm_conv_2020aut;Dm_conv_2019win;Dm_conv_2020win];
Nw_stra_all = [Nw_stra_2019spr;Nw_stra_2020spr;Nw_stra_2020sum;Nw_stra_2019sum;...
    Nw_stra_2019aut;Nw_stra_2020aut;Nw_stra_2019win;Nw_stra_2020win];
Dm_stra_all = [Dm_stra_2019spr;Dm_stra_2020spr;Dm_stra_2020sum;Dm_stra_2019sum;...
    Dm_stra_2019aut;Dm_stra_2020aut;Dm_stra_2019win;Dm_stra_2020win];
Nw_conv_all_ev = [Nw_conv_2019spr_ev;Nw_conv_2020spr_ev;Nw_conv_2020sum_ev;Nw_conv_2019sum_ev;...
    Nw_conv_2019aut_ev;Nw_conv_2020aut_ev;Nw_conv_2019win_ev;Nw_conv_2020win_ev];
Dm_conv_all_ev = [Dm_conv_2019spr_ev;Dm_conv_2020spr_ev;Dm_conv_2020sum_ev;Dm_conv_2019sum_ev;...
    Dm_conv_2019aut_ev;Dm_conv_2020aut_ev;Dm_conv_2019win_ev;Dm_conv_2020win_ev];
Nw_stra_all_ev = [Nw_stra_2019spr_ev;Nw_stra_2020spr_ev;Nw_stra_2020sum_ev;Nw_stra_2019sum_ev;...
    Nw_stra_2019aut_ev;Nw_stra_2020aut_ev;Nw_stra_2019win_ev;Nw_stra_2020win_ev];
Dm_stra_all_ev = [Dm_stra_2019spr_ev;Dm_stra_2020spr_ev;Dm_stra_2020sum_ev;Dm_stra_2019sum_ev;...
    Dm_stra_2019aut_ev;Dm_stra_2020aut_ev;Dm_stra_2019win_ev;Dm_stra_2020win_ev];

RR_conv_all = [RR_conv_2019spr;RR_conv_2020spr;RR_conv_2020sum;RR_conv_2019sum;...
    RR_conv_2019aut;RR_conv_2020aut;RR_conv_2019win;RR_conv_2020win];
RR_stra_all = [RR_stra_2019spr;RR_stra_2020spr;RR_stra_2020sum;RR_stra_2019sum;...
    RR_stra_2019aut;RR_stra_2020aut;RR_stra_2019win;RR_stra_2020win];

Z_conv_all = [Z_conv_2019spr;Z_conv_2020spr;Z_conv_2020sum;Z_conv_2019sum;...
    Z_conv_2019aut;Z_conv_2020aut;Z_conv_2019win;Z_conv_2020win];
Z_stra_all = [Z_stra_2019spr;Z_stra_2020spr;Z_stra_2020sum;Z_stra_2019sum;...
    Z_stra_2019aut;Z_stra_2020aut;Z_stra_2019win;Z_stra_2020win];

N0_conv_all = [N0_conv_2019spr;N0_conv_2020spr;N0_conv_2020sum;N0_conv_2019sum;...
    N0_conv_2019aut;N0_conv_2020aut;N0_conv_2019win;N0_conv_2020win];
N0_stra_all = [N0_stra_2019spr;N0_stra_2020spr;N0_stra_2020sum;N0_stra_2019sum;...
    N0_stra_2019aut;N0_stra_2020aut;N0_stra_2019win;N0_stra_2020win];

ND_conv_all = [ND_conv_2019spr;ND_conv_2020spr;ND_conv_2020sum;ND_conv_2019sum;...
    ND_conv_2019aut;ND_conv_2020aut;ND_conv_2019win;ND_conv_2020win];
ND_stra_all = [ND_stra_2019spr;ND_stra_2020spr;ND_stra_2020sum;ND_stra_2019sum;...
    ND_stra_2019aut;ND_stra_2020aut;ND_stra_2019win;ND_stra_2020win];

Delt_m_conv_all = [Delt_m_conv_2019spr;Delt_m_conv_2020spr;Delt_m_conv_2020sum;Delt_m_conv_2019sum;...
    Delt_m_conv_2019aut;Delt_m_conv_2020aut;Delt_m_conv_2019win;Delt_m_conv_2020win];
Delt_m_stra_all = [Delt_m_stra_2019spr;Delt_m_stra_2020spr;Delt_m_stra_2020sum;Delt_m_stra_2019sum;...
    Delt_m_stra_2019aut;Delt_m_stra_2020aut;Delt_m_stra_2019win;Delt_m_stra_2020win];

LWC_conv_all = [LWC_conv_2019spr;LWC_conv_2020spr;LWC_conv_2020sum;LWC_conv_2019sum;...
    LWC_conv_2019aut;LWC_conv_2020aut;LWC_conv_2019win;LWC_conv_2020win];
LWC_stra_all = [LWC_stra_2019spr;LWC_stra_2020spr;LWC_stra_2020sum;LWC_stra_2019sum;...
    LWC_stra_2019aut;LWC_stra_2020aut;LWC_stra_2019win;LWC_stra_2020win];

mu_conv_all = [mu_conv_2019spr;mu_conv_2020spr;mu_conv_2020sum;mu_conv_2019sum;...
    mu_conv_2019aut;mu_conv_2020aut;mu_conv_2019win;mu_conv_2020win];
mu_stra_all = [mu_stra_2019spr;mu_stra_2020spr;mu_stra_2020sum;mu_stra_2019sum;...
    mu_stra_2019aut;mu_stra_2020aut;mu_stra_2019win;mu_stra_2020win];

lamd_conv_all = [lamd_conv_2019spr;lamd_conv_2020spr;lamd_conv_2020sum;lamd_conv_2019sum;...
    lamd_conv_2019aut;lamd_conv_2020aut;lamd_conv_2019win;lamd_conv_2020win];
lamd_stra_all = [lamd_stra_2019spr;lamd_stra_2020spr;lamd_stra_2020sum;lamd_stra_2019sum;...
    lamd_stra_2019aut;lamd_stra_2020aut;lamd_stra_2019win;lamd_stra_2020win];


%%
%Dm-NW-den
c1=colormap(jet(20));
sc1 = scatplot(Dm_conv_all,Nw_conv_all);
hold on
sc2 = scatplot(Dm_stra_all,Nw_stra_all);
cb1=colorbar;
cb1.Label.String = 'Data Density';
ax = gca;
ax.Box = 'on';
ax.FontSize = 12;
ax.TickLength = [0.01 0.01];
ax.LineWidth = 1.5;
ax.XLabel.String = 'Dm(mm)';
ax.YLabel.String = 'log_{10}Nw(mm^{-1}m^{-3})';
ax.XLim = [0 3.0];
ax.YLim = [2 6];
% legend('Convective','Stratiform');
rectangle('Position',[1.5 4.0 0.25 0.5],'LineWidth',2,'EdgeColor',[0.6 0.6 0.6]);
rectangle('Position',[2.0 3.0 0.75 0.5],'LineWidth',2,'EdgeColor',[0.6 0.6 0.6]);
text(1.5,4.8,{'Bringi et al.(2003)','Maritime con.'},'FontSize',12,'Color',[0.4 0.4 0.4]);
text(2.0,2.7,{'Bringi et al.(2003)','Continental con.'},'FontSize',12,'Color',[0.4 0.4 0.4]);


% line([0 3.9],[3.9 3.9],'Color',[0.6 0.6 0.6],'LineStyle','--','LineWidth',2);
% text(0.1,4.05,'MP-Nw','FontSize',12);
% hold on
% x1= 0.5:0.1:2;
% y1 = -1.6*x1+5.8;
% plot(x1,y1,'Color',[0.6 0.6 0.6],'LineStyle','--','LineWidth',2);
% 
% hold on;
% y2 = 3.984*x1.^(-0.4341);
% plot(x1,y2,'Color',[1 0 1],'LineStyle','--','LineWidth',2);
% set(gcf,'Position',[0 0 600 400]);
% hold on
% y3 = -1.59*x1+6.15;
% plot(x1,y3,'Color',[1 0 1],'LineStyle','--','LineWidth',2);
set(gcf,'Position',[0 0 600 400]);

%%
Nw_Dm_show([Nw_conv_2019sum;Nw_conv_2020sum],[Dm_conv_2019sum;Dm_conv_2020sum],...
    [Nw_stra_2019sum;Nw_stra_2020sum],[Dm_stra_2019sum;Dm_stra_2020sum]);
title('JJA');
Nw_Dm_ev_show([Nw_conv_2019sum_ev;Nw_conv_2020sum_ev],...
    [Dm_conv_2019sum_ev;Dm_conv_2020sum_ev],...
    [Nw_stra_2019sum_ev;Nw_stra_2020sum_ev],...
    [Dm_stra_2019sum_ev;Dm_stra_2020sum_ev]);
saveas(gcf,'E:\DATA\OTTParsivel\Pictures\Nw-Dm_JJA.png');
close

Nw_Dm_show([Nw_conv_2019aut;Nw_conv_2020aut],[Dm_conv_2019aut;Dm_conv_2020aut],...
    [Nw_stra_2019aut;Nw_stra_2020aut],[Dm_stra_2019aut;Dm_stra_2020aut]);
title('SON');
Nw_Dm_ev_show([Nw_conv_2019aut_ev;Nw_conv_2020aut_ev],...
    [Dm_conv_2019aut_ev;Dm_conv_2020aut_ev],...
    [Nw_stra_2019aut_ev;Nw_stra_2020aut_ev],...
    [Dm_stra_2019aut_ev;Dm_stra_2020aut_ev]);
saveas(gcf,'E:\DATA\OTTParsivel\Pictures\Nw-Dm_SON.png');
close

Nw_Dm_show([Nw_conv_2019win;Nw_conv_2020win],[Dm_conv_2019win;Dm_conv_2020win],...
    [Nw_stra_2019win;Nw_stra_2020win],[Dm_stra_2019win;Dm_stra_2020win]);
title('DJF');
Nw_Dm_ev_show([Nw_conv_2019win_ev;Nw_conv_2020win_ev],...
    [Dm_conv_2019win_ev;Dm_conv_2020win_ev],...
    [Nw_stra_2019win_ev;Nw_stra_2020win_ev],...
    [Dm_stra_2019win_ev;Dm_stra_2020win_ev]);
saveas(gcf,'E:\DATA\OTTParsivel\Pictures\Nw-Dm_DJF.png');
close

Nw_Dm_show([Nw_conv_2019spr;Nw_conv_2020spr],[Dm_conv_2019spr;Dm_conv_2020spr],...
    [Nw_stra_2019spr;Nw_stra_2020spr],[Dm_stra_2019spr;Dm_stra_2020spr]);
title('MAM');
Nw_Dm_ev_show([Nw_conv_2019spr_ev;Nw_conv_2020spr_ev],...
    [Dm_conv_2019spr_ev;Dm_conv_2020spr_ev],...
    [Nw_stra_2019spr_ev;Nw_stra_2020spr_ev],...
    [Dm_stra_2019spr_ev;Dm_stra_2020spr_ev]);
saveas(gcf,'E:\DATA\OTTParsivel\Pictures\Nw-Dm_MAM.png');
close
%%
Nw_Dm_show(Nw_conv_2019sum,Dm_conv_2019sum,Nw_stra_2019sum,Dm_stra_2019sum);
title('2019-JJA');
Nw_Dm_ev_show(Nw_conv_2019sum_ev,Dm_conv_2019sum_ev,Nw_stra_2019sum_ev,Dm_stra_2019sum_ev);
saveas(gcf,'E:\DATA\OTTParsivel\Pictures\Nw-Dm2019JJA.png');
close

Nw_Dm_show(Nw_conv_2019aut,Dm_conv_2019aut,Nw_stra_2019aut,Dm_stra_2019aut);
title('2019-SON');
Nw_Dm_ev_show(Nw_conv_2019aut_ev,Dm_conv_2019aut_ev,Nw_stra_2019aut_ev,Dm_stra_2019aut_ev);
saveas(gcf,'E:\DATA\OTTParsivel\Pictures\Nw-Dm2019SON.png');
close

Nw_Dm_show(Nw_conv_2019win,Dm_conv_2019win,Nw_stra_2019win,Dm_stra_2019win);
title('2019-DJF');
Nw_Dm_ev_show(Nw_conv_2019win_ev,Dm_conv_2019win_ev,Nw_stra_2019win_ev,Dm_stra_2019win_ev);
saveas(gcf,'E:\DATA\OTTParsivel\Pictures\Nw-Dm2019DJF.png');
close

Nw_Dm_show(Nw_conv_2019spr,Dm_conv_2019spr,Nw_stra_2019spr,Dm_stra_2019spr);
title('2020-MAM');
Nw_Dm_ev_show(Nw_conv_2019spr_ev,Dm_conv_2019spr_ev,Nw_stra_2019spr_ev,Dm_stra_2019spr_ev);
saveas(gcf,'E:\DATA\OTTParsivel\Pictures\Nw-Dm2020MAM.png');
close

Nw_Dm_show(Nw_conv_2020sum,Dm_conv_2020sum,Nw_stra_2020sum,Dm_stra_2020sum);
title('2020-JJA');
Nw_Dm_ev_show(Nw_conv_2020sum_ev,Dm_conv_2020sum_ev,Nw_stra_2020sum_ev,Dm_stra_2020sum_ev);
saveas(gcf,'E:\DATA\OTTParsivel\Pictures\Nw-Dm2020JJA.png');
close

Nw_Dm_show(Nw_conv_2020aut,Dm_conv_2020aut,Nw_stra_2020aut,Dm_stra_2020aut);
title('2020-SON');
Nw_Dm_ev_show(Nw_conv_2020aut_ev,Dm_conv_2020aut_ev,Nw_stra_2020aut_ev,Dm_stra_2020aut_ev);
saveas(gcf,'E:\DATA\OTTParsivel\Pictures\Nw-Dm2020SON.png');
close

Nw_Dm_show(Nw_conv_2020win,Dm_conv_2020win,Nw_stra_2020win,Dm_stra_2020win);
title('2020-DJF');
Nw_Dm_ev_show(Nw_conv_2020win_ev,Dm_conv_2020win_ev,Nw_stra_2020win_ev,Dm_stra_2020win_ev);
saveas(gcf,'E:\DATA\OTTParsivel\Pictures\Nw-Dm2020DJF.png');
close

Nw_Dm_show(Nw_conv_2020spr,Dm_conv_2020spr,Nw_stra_2020spr,Dm_stra_2020spr);
title('2021-MAM');
Nw_Dm_ev_show(Nw_conv_2020spr_ev,Dm_conv_2020spr_ev,Nw_stra_2020spr_ev,Dm_stra_2020spr_ev)
saveas(gcf,'E:\DATA\OTTParsivel\Pictures\Nw-Dm2021MAM.png');
close
%%
Nw_Dm_show([Nw_conv_2019spr;Nw_conv_2019sum; Nw_conv_2019aut;Nw_conv_2019win],...
    [Dm_conv_2019spr;Dm_conv_2019sum;Dm_conv_2019aut;Dm_conv_2019win],...
    [Nw_stra_2019spr;Nw_stra_2019sum;Nw_stra_2019aut;Nw_stra_2019win],...
    [Dm_stra_2019spr;Dm_stra_2019sum;Dm_stra_2019aut;Dm_stra_2019win]);
title('2019.06-2020.05');
Nw_Dm_ev_show([Nw_conv_2019spr_ev;Nw_conv_2019sum_ev; Nw_conv_2019aut_ev;Nw_conv_2019win_ev],...
    [Dm_conv_2019spr_ev;Dm_conv_2019sum_ev;Dm_conv_2019aut_ev;Dm_conv_2019win_ev],...
    [Nw_stra_2019spr_ev;Nw_stra_2019sum_ev;Nw_stra_2019aut_ev;Nw_stra_2019win_ev],...
    [Dm_stra_2019spr_ev;Dm_stra_2019sum_ev;Dm_stra_2019aut_ev;Dm_stra_2019win_ev])
saveas(gcf,'E:\DATA\OTTParsivel\Pictures\Nw-Dm2019.png');
close

Nw_Dm_show([Nw_conv_2020spr;Nw_conv_2020sum;Nw_conv_2020aut;Nw_conv_2020win],...
    [Dm_conv_2020spr;Dm_conv_2020sum;Dm_conv_2020aut;Dm_conv_2020win],...
    [Nw_stra_2020spr;Nw_stra_2020sum;Nw_stra_2020aut;Nw_stra_2020win],...
    [Dm_stra_2020spr;Dm_stra_2020sum;Dm_stra_2020aut;Dm_stra_2020win]);
title('2020.06-2021.05');
Nw_Dm_ev_show([Nw_conv_2020spr_ev;Nw_conv_2020sum_ev;Nw_conv_2020aut_ev;Nw_conv_2020win_ev],...
    [Dm_conv_2020spr_ev;Dm_conv_2020sum_ev;Dm_conv_2020aut_ev;Dm_conv_2020win_ev],...
    [Nw_stra_2020spr_ev;Nw_stra_2020sum_ev;Nw_stra_2020aut_ev;Nw_stra_2020win_ev],...
    [Dm_stra_2020spr_ev;Dm_stra_2020sum_ev;Dm_stra_2020aut_ev;Dm_stra_2020win_ev])
saveas(gcf,'E:\DATA\OTTParsivel\Pictures\Nw-Dm2020.png');
close
%%
Nw_Dm_show([Nw_conv_2019spr;Nw_conv_2020spr;Nw_conv_2020sum;Nw_conv_2019sum;...
    Nw_conv_2019aut;Nw_conv_2020aut;Nw_conv_2019win;Nw_conv_2020win],...
    [Dm_conv_2019spr;Dm_conv_2020spr;Dm_conv_2020sum;Dm_conv_2019sum;...
    Dm_conv_2019aut;Dm_conv_2020aut;Dm_conv_2019win;Dm_conv_2020win],...
    [Nw_stra_2019spr;Nw_stra_2020spr;Nw_stra_2020sum;Nw_stra_2019sum;...
    Nw_stra_2019aut;Nw_stra_2020aut;Nw_stra_2019win;Nw_stra_2020win],...
    [Dm_stra_2019spr;Dm_stra_2020spr;Dm_stra_2020sum;Dm_stra_2019sum;...
    Dm_stra_2019aut;Dm_stra_2020aut;Dm_stra_2019win;Dm_stra_2020win]);
title('2019.06-2021.05');
Nw_Dm_ev_show([Nw_conv_2019spr_ev;Nw_conv_2020spr_ev;Nw_conv_2020sum_ev;Nw_conv_2019sum_ev;...
    Nw_conv_2019aut_ev;Nw_conv_2020aut_ev;Nw_conv_2019win_ev;Nw_conv_2020win_ev],...
    [Dm_conv_2019spr_ev;Dm_conv_2020spr_ev;Dm_conv_2020sum_ev;Dm_conv_2019sum_ev;...
    Dm_conv_2019aut_ev;Dm_conv_2020aut_ev;Dm_conv_2019win_ev;Dm_conv_2020win_ev],...
    [Nw_stra_2019spr_ev;Nw_stra_2020spr_ev;Nw_stra_2020sum_ev;Nw_stra_2019sum_ev;...
    Nw_stra_2019aut_ev;Nw_stra_2020aut_ev;Nw_stra_2019win_ev;Nw_stra_2020win_ev],...
    [Dm_stra_2019spr_ev;Dm_stra_2020spr_ev;Dm_stra_2020sum_ev;Dm_stra_2019sum_ev;...
    Dm_stra_2019aut_ev;Dm_stra_2020aut_ev;Dm_stra_2019win_ev;Dm_stra_2020win_ev]);
saveas(gcf,'E:\DATA\OTTParsivel\Pictures\Nw-Dm_all.png');
close

