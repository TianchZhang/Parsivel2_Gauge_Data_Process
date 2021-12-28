%Description:
%PDF of log10(Nw)-Dm 
% History:
% 2021.06.20 first by zhangtc
%
%Dm_Nw-Probability
clear
load('D:\DATA\Parsivel_temporary\DSD_parameters_difseason.mat','Nw_conv_all','Nw_stra_all','Dm_conv_all','Dm_stra_all');
load('D:\DATA\Parsivel_temporary\DSD_parameters_difseason.mat','Nw_all_2019','Nw_all_2020','Dm_all_2019','Dm_all_2020');
Nw_all = [Nw_all_2019;Nw_all_2020];
Dm_all = [Dm_all_2019;Dm_all_2020];

figure;
ax1 = subplot(3,1,1);
h1 = histogram(Nw_all,1.7:0.1:5.9);
h1.Normalization = 'probability';
h1.FaceColor = '[0 0.5 1]';
% h1.FaceAlpha = 0.3;
hold on
h2 = histogram(Dm_all,0.1:0.1:5.9);
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
text(0.05,0.18,'(a) Total','FontSize',10);
text(2,0.13,{'Mean = 0.97','STD = 0.41','SK = 2.20'});
text(4.5,0.13,{'Mean = 3.75','STD = 0.58','SK = -0.11'});

ax2 = subplot(3,1,2);
h1 = histogram(Nw_conv_all,1.7:0.1:5.9);
h1.Normalization = 'probability';
h1.FaceColor = '[0 0.5 1]';
% h1.FaceAlpha = 0.3;
hold on
h2 = histogram(Dm_conv_all,0.1:0.1:5.9);
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
ax2.YLim = [0 0.25]; 
ax2.YTick = 0:0.05:0.25;
ax2.YTickLabel = {'0','5','10','15','20','25'};
text(0.05,0.23,'(b) Convective','FontSize',10);
text(2,0.16,{'Mean = 1.84','STD = 0.47','SK = 1.72'});
text(4.5,0.16,{'Mean = 3.92','STD = 0.35','SK = -2.16'});

ax3 = subplot(3,1,3);
h1 = histogram(Nw_stra_all,1.7:0.1:5.9);
h1.Normalization = 'probability';
h1.FaceColor = '[0 0.5 1]';
% h1.FaceAlpha = 0.3;
hold on
h2 = histogram(Dm_stra_all,0.1:0.1:5.9);
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
text(0.05,0.18,'(c) Stratiform','FontSize',10);
text(2,0.13,{'Mean = 1.09','STD = 0.30','SK = 0.62'});
text(4.5,0.13,{'Mean = 3.93','STD = 0.52','SK = 0.32'});

set(gcf,'Position',[0 0 800 500]);
% saveas(gcf,'D:\DATA\OTTParsivel\Pictures\new\Dm-Nw_probability.png');
% saveas(gcf,'E:\DATA\OTTParsivel\Pictures\Dm-Nw_probability.png');
%%
mean(Nw_all)
std(Nw_all)
skewness(Nw_all)
mean(Dm_all)
std(Dm_all)
skewness(Dm_all)

mean(Nw_conv_all)
std(Nw_conv_all)
skewness(Nw_conv_all)
mean(Dm_conv_all)
std(Dm_conv_all)
skewness(Dm_conv_all)

mean(Nw_stra_all)
std(Nw_stra_all)
skewness(Nw_stra_all)
mean(Dm_stra_all)
std(Dm_stra_all)
skewness(Dm_stra_all)