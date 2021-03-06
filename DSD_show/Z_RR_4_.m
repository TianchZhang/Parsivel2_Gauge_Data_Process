%Description:
%Scatter plots of Dm-RR and Nw-RR relationship of convective and stratiform
% History:
% 2021.06.28 first by zhangtc,edited 2022.01.05
clear
load('D:\DATA\Parsivel_temporary\DSD_parameters_difseason.mat','Z_*','RR_*');
figure
c1=colormap(jet(20));
ax1 = subplot(1,2,1);
sc1 = scatplot(RR_conv_all,Z_conv_all);
ax1.Box = 'on';
ax1.FontSize = 12;
ax1.TickLength = [0.01 0.01];
ax1.LineWidth = 1.5;
ax1.XLim = [0 150]; 
ax1.YLim = [1e3 1e6]; 
ax1.YScale = 'log';
ax1.XLabel.String = 'R(mm\cdoth^{-1})';
ax1.YLabel.String = 'Z(mm^{6}\cdotm^{-3})';
ax1.Position = [0.09 0.13 0.37 0.84];
text(10,10^5.8,{'(a) Convective';'Z = 124.80\cdotR^{1.61}'},'FontSize',12);
hold on
x1 = 5:0.1:150;
y1=124.8*x1.^1.606;
p1=plot(x1,y1,'magenta');
p1.LineWidth = 1.5;
hold off

ax2 = subplot(1,2,2);
sc2 = scatplot(RR_stra_all,Z_stra_all);
ax2.Box = 'on';
ax2.FontSize = 12;
ax2.TickLength = [0.01 0.01];
ax2.LineWidth = 1.5;
ax2.XLim = [0 5]; 
ax2.YLim = [1e1 1e5];
ax2.YScale = 'log';
ax2.XLabel.String = 'R(mm\cdoth^{-1})';
% ax2.YLabel.String = 'Z(mm^{6}\cdotm^{-3})';
ax2.Position = [0.525 0.13 0.37 0.84];
text(0.5,10^4.7,{'(b) Stratiform';'Z = 180.50\cdotR^{1.64}'},'FontSize',12);
hold on
x2 = 0.5:0.1:5;
y2=180.5*x2.^1.639;
p2=plot(x2,y2);
p2.Color = 'magenta';
p2.LineWidth = 1.5;
hold off
cb = colorbar;
cb.Label.String = 'Data Density';
cb.Position = [0.905 0.13 0.02 0.84];

set(gcf,'Position',[0 0 900 400]);
saveas(gcf,'D:\DATA\OTTParsivel\Pictures\new\Z-RR-density.png');
saveas(gcf,'E:\DATA\OTTParsivel\Pictures\Z-RR-density.png');
%%
figure
ax1 = subplot(1,2,1);
x1 = 5:0.1:150;
y1=216.2*x1.^1.557;
p1=plot(x1,y1,'--r');
p1.LineWidth = 1.5;
ax1.Box = 'on';
ax1.FontSize = 12;
ax1.TickLength = [0.01 0.01];
ax1.LineWidth = 1.5;
ax1.XLim = [0 150]; 
ax1.YLim = [1e3 1e6]; 
ax1.YScale = 'log';
ax1.XLabel.String = 'R(mm\cdoth^{-1})';
ax1.YLabel.String = 'Z(mm^{6}\cdotm^{-3})';
ax1.Position = [0.09 0.13 0.37 0.84];
text(10,10^5.8,'(a) Convective','FontSize',12);
hold on
y2=141*x1.^1.555;
p2=plot(x1,y2,'--b');
p2.LineWidth = 1.5;
y3=130.6*x1.^1.568;
p3=plot(x1,y3,'--g');
p3.LineWidth = 1.5;
y4=80.88*x1.^1.854;
p4=plot(x1,y4,'--c');
p4.LineWidth = 1.5;
y5=124.8*x1.^1.606;
p5=plot(x1,y5,'k');
p5.LineWidth = 1.5;
hold off
legend('Spr.','Sum.','Aut.','Win.','Total','Location','Southeast');
ax2 = subplot(1,2,2);
x2 = 0.5:0.1:5;
y1=206.9*x2.^1.457;
p1=plot(x2,y1,'--r');
p1.LineWidth = 1.5;
ax2.Box = 'on';
ax2.FontSize = 12;
ax2.TickLength = [0.01 0.01];
ax2.LineWidth = 1.5;
ax2.XLim = [0 5]; 
ax2.YLim = [1e1 1e5];
ax2.YScale = 'log';
ax2.XLabel.String = 'R(mm\cdoth^{-1})';
ax2.Position = [0.525 0.13 0.37 0.84];
text(0.5,10^4.7,'(b) Stratiform','FontSize',12);
hold on
y2=180.7*x2.^1.711;
p2=plot(x2,y2,'--b');
p2.LineWidth = 1.5;
y3=140.5*x2.^1.713;
p3=plot(x2,y3,'--g');
p3.LineWidth = 1.5;
y4=226*x2.^1.744;
p4=plot(x2,y4,'--c');
p4.LineWidth = 1.5;
y5=180.5*x2.^1.639;
p5=plot(x2,y5,'k');
p5.LineWidth = 1.5;
hold off
legend('Spr.','Sum.','Aut.','Win.','Total','Location','Southeast');
set(gcf,'Position',[0 0 900 400]);
saveas(gcf,'D:\DATA\OTTParsivel\Pictures\new\Z-RR-fit.png');
saveas(gcf,'E:\DATA\OTTParsivel\Pictures\Z-RR-fit.png');