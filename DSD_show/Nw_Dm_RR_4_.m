%Description:
%Scatter plots of Dm-RR and Nw-RR relationship of convective and stratiform
% History:
% 2021.05.20 first by zhangtc,edited 2022.01.04
clear 
load('D:\DATA\Parsivel_temporary\DSD_parameters_difseason.mat','Nw_*','Dm_*','RR_*');
figure
c1=colormap(jet(20));
ax1 = subplot(2,2,1);
sc1 = scatplot(RR_conv_all,Dm_conv_all);
ax1.Box = 'on';
ax1.FontSize = 12;
ax1.TickLength = [0.01 0.01];
ax1.LineWidth = 1.5;
ax1.XLim = [0 100]; 
ax1.YLim = [0 4];
% ax1.XLabel.String = 'R(mm\cdoth^{-1})';
ax1.YLabel.String = 'Dm(mm)';
ax1.Position = [0.06 0.555 0.4 0.415];
text(65,3.6,{'(a) Convective';'Dm = 0.92\cdotR^{0.21}'},'FontSize',12);
hold on
x1 = 5:0.1:100;
y1=0.9228*x1.^0.2115;
p1=plot(x1,y1,'Color','magenta');
% p1=plot(x1,y1,'Color',[0.4 0.4 0.4]);
p1.LineWidth = 2;
% p1.LineStyle = '--';

ax2 = subplot(2,2,2);
sc2 = scatplot(RR_stra_all,Dm_stra_all);
ax2.Box = 'on';
ax2.FontSize = 12;
ax2.TickLength = [0.01 0.01];
ax2.LineWidth = 1.5;
ax2.XLim = [0 5]; 
ax2.YLim = [0 4];
ax2.Position = [0.495 0.555 0.4 0.415];
% ax2.XLabel.String = 'R(mm\cdoth^{-1})';
% ax2.YLabel.String = 'Dm(mm)';
text(0.1,3.6,{'(b) Stratiform';'Dm = 0.97\cdotR^{0.23}'},'FontSize',12);
hold on
x2 = 0.5:0.01:5;
y2=0.968*x2.^0.2331;
% p2=plot(x2,y2,'Color',[0.4 0.4 0.4]);
p2=plot(x2,y2,'Color','magenta');
p2.LineWidth = 2;
% p2.LineStyle = '--';

ax3 = subplot(2,2,3);
sc3 = scatplot(RR_conv_all,Nw_conv_all);
sc3.Marker = '.';
sc3.MarkerEdgeColor = [0 0.75 1];
ax3.Box = 'on';
ax3.FontSize = 12;
ax3.TickLength = [0.01 0.01];
ax3.LineWidth = 1.5;
ax3.XLim = [0 100]; 
ax3.YLim = [2 6];
ax3.Position = [0.06 0.09 0.4 0.415];
ax3.XLabel.String = 'R(mm\cdoth^{-1})';
ax3.YLabel.String = 'log_{10}Nw(mm^{-1}m^{-3})';
text(65,5.6,{'(c) Convective';'Nw = 3.96\cdotR^{0.003}'},'FontSize',12);
hold on
y3=3.963*x1.^-0.002748;
p3=plot(x1,y3,'Color','magenta');
% p3=plot(x1,y3,'Color',[0.4 0.4 0.4]);
p3.LineWidth = 2;
% p3.LineStyle = '--';


ax4 = subplot(2,2,4);
sc4 = scatplot(RR_stra_all,Nw_stra_all);
ax4.Box = 'on';
ax4.FontSize = 12;
ax4.TickLength = [0.01 0.01];
ax4.LineWidth = 1.5;
ax4.XLim = [0 5]; 
ax4.YLim = [2 6];
ax4.Position = [0.495 0.09 0.4 0.415];
ax4.XLabel.String = 'R(mm\cdoth^{-1})';
text(0.1,5.6,{'(d) Stratiform';'Nw = 3.89\cdotR^{-0.011}'},'FontSize',12);
hold on
y4=3.89*x2.^-0.01115;
p4=plot(x2,y4,'Color','magenta');
% p4=plot(x2,y4,'Color',[0.4 0.4 0.4]);
p4.LineWidth = 2;
% p4.LineStyle = '--';

cb = colorbar;
cb.Label.String = 'Data Density';
cb.Position = [0.92 0.09 0.02 0.885];
set(gcf,'Position',[0 0 900 600]);
saveas(gcf,'D:\DATA\OTTParsivel\Pictures\new\Nw-Dm-RR-density.png');
saveas(gcf,'E:\DATA\OTTParsivel\Pictures\Nw-Dm-RR-density.png');