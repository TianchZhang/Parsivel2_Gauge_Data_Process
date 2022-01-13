%Description:
%Density scatter plot of log10(Nw)-Dm
% History:
% 2021.06.20 first by zhangtc,edited 2021.12.30

%
clear
load('D:\DATA\Parsivel_temporary\DSD_parameters_difseason.mat','Nw_*','Dm_*');
figure
ax1=subplot(2,2,1);
c1=colormap(jet(20));
sc1 = scatplot(Dm_conv_all,Nw_conv_all);
rectangle('Position',[1.5 4.0 0.25 0.5],'LineWidth',2,'EdgeColor',[0.6 0.6 0.6]);
rectangle('Position',[2.0 3.0 0.75 0.5],'LineWidth',2,'EdgeColor',[0.6 0.6 0.6]);
text(1.5,4.85,{'Bringi et al.(2003)','Maritime con.'},'FontSize',12,'Color',[0.4 0.4 0.4]);
text(2.0,2.7,{'Bringi et al.(2003)','Continental con.'},'FontSize',12,'Color',[0.4 0.4 0.4]);
hold on
% xfit= 0.5:0.1:2.2;
% yfit = -1.57*xfit + 5.64;
% plot(xfit,yfit,'Color',[0.6 0.6 0.6],'LineStyle','--','LineWidth',2);
plot(0.8:0.1:2.5,10.15 ./ ([0.8:0.1:2.5] + 1.25),'Color','magenta','LineStyle','--','LineWidth',2);
hold off
ax1.Box = 'on';
ax1.FontSize = 12;
ax1.TickLength = [0.01 0.01];
ax1.LineWidth = 1.5;
% ax.XLabel.String = 'Dm(mm)';
ax1.YLabel.String = 'log_{10}Nw(mm^{-1}m^{-3})';
ax1.XLim = [0.5 4.0];
ax1.YLim = [2 6];
ax1.Position = [0.06 0.55 0.4 0.42];
text(0.6,5.7,'(a) Convective','FontSize',12);

ax2=subplot(2,2,2);
sc2 = scatplot(Dm_stra_all,Nw_stra_all);
hold on
plot(0.6:0.1:2.2,10.15 ./ ([0.6:0.1:2.2] + 1.25),'Color','magenta','LineStyle','--','LineWidth',2);
text(1,4.9,'log_{10}Nw = 10.15\times(Dm + 1.25)^{-1}','FontSize',12,'Color','magenta');
hold off
cb1=colorbar;
cb1.Label.String = 'Data Density';
ax2.Box = 'on';
ax2.FontSize = 12;
ax2.TickLength = [0.01 0.01];
ax2.LineWidth = 1.5;
ax2.XLim = [0 3.0];
ax2.YLim = [2 6];
ax2.Position = [0.495 0.55 0.4 0.42];
text(0.1,5.7,'(b) Stratiform','FontSize',12);

ax3 = subplot(2,2,4);
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
e1=errorbar(mean([Dm_stra_2019aut;Dm_stra_2020aut]),mean([Nw_stra_2019aut;Nw_stra_2020aut]),...
    std([Nw_stra_2019aut;Nw_stra_2020aut]),std([Nw_stra_2019aut;Nw_stra_2020aut]),...
    std([Dm_stra_2019aut;Dm_stra_2020aut]),std([Dm_stra_2019aut;Dm_stra_2020aut]),'s');
e1.MarkerSize = 10;
e1.Color = 'g';
e1.MarkerFaceColor='g';
e1.CapSize = 5;
e1=errorbar(mean([Dm_stra_2019win;Dm_stra_2020win]),mean([Nw_stra_2019win;Nw_stra_2020win]),...
    std([Nw_stra_2019win;Nw_stra_2020win]),std([Nw_stra_2019win;Nw_stra_2020win]),...
    std([Dm_stra_2019win;Dm_stra_2020win]),std([Dm_stra_2019win;Dm_stra_2020win]),'s');
e1.MarkerSize = 10;
e1.Color = 'c';
e1.MarkerFaceColor='c';
e1.CapSize = 5;
% xfit= 0.4:0.1:24;
% yfit = -1.57*xfit + 5.64;
% plot(xfit,yfit,'Color',[0.6 0.6 0.6],'LineStyle','--','LineWidth',2);
plot(0.6:0.1:2.2,10.15 ./ ([0.6:0.1:2.2] + 1.25),'Color','magenta','LineStyle','--','LineWidth',2);
% text(1,4.9,'log_{10}Nw = 10.15\times(Dm + 1.25)^{-1}','FontSize',12,'Color','magenta');
hold off
legend('Spr.','Sum.','Aut.','Win.');
ax3.Position = [0.495 0.08 0.4 0.42];
ax3.Box = 'on';
ax3.FontSize = 12;
ax3.TickLength = [0.01 0.01];
ax3.LineWidth = 1.5;
ax3.XLabel.String = 'Dm(mm)';
ax3.XLim = [0 3.0];
ax3.YLim = [2 6];
text(0.1,5.7,'(d) Stratiform ','FontSize',12);

ax4 = subplot(2,2,3);
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
e1=errorbar(mean([Dm_conv_2019aut;Dm_conv_2020aut]),mean([Nw_conv_2019aut;Nw_conv_2020aut]),...
    std([Nw_conv_2019aut;Nw_conv_2020aut]),std([Nw_conv_2019aut;Nw_conv_2020aut]),...
    std([Dm_conv_2019aut;Dm_conv_2020aut]),std([Dm_conv_2019aut;Dm_conv_2020aut]),'d');
e1.MarkerSize = 10;
e1.Color = 'g';
e1.MarkerFaceColor='g';
e1.CapSize = 5;
e1=errorbar(mean([Dm_conv_2019win;Dm_conv_2020win]),mean([Nw_conv_2019win;Nw_conv_2020win]),...
    std([Nw_conv_2019win;Nw_conv_2020win]),std([Nw_conv_2019win;Nw_conv_2020win]),...
    std([Dm_conv_2019win;Dm_conv_2020win]),std([Dm_conv_2019win;Dm_conv_2020win]),'d');
e1.MarkerSize = 10;
e1.Color = 'c';
e1.MarkerFaceColor='c';
e1.CapSize = 5;
plot(0.8:0.1:2.5,10.15 ./ ([0.8:0.1:2.5] + 1.25),'Color','magenta','LineStyle','--','LineWidth',2);
hold off
legend('Spr.','Sum.','Aut.','Win.');
ax4.Position = [0.06 0.08 0.4 0.42];
ax4.Box = 'on';
ax4.FontSize = 12;
ax4.TickLength = [0.01 0.01];
ax4.LineWidth = 1.2;
ax4.XLabel.String = 'Dm(mm)';
ax4.YLabel.String = 'log_{10}Nw(mm^{-1}m^{-3})';
ax4.XLim = [0.5 4.0];
ax4.YLim = [2 6];
rectangle('Position',[1.5 4.0 0.25 0.5],'LineWidth',2,'EdgeColor',[0.6 0.6 0.6]);
rectangle('Position',[2.0 3.0 0.75 0.5],'LineWidth',2,'EdgeColor',[0.6 0.6 0.6]);
text(1.5,4.8,{'Bringi et al.(2003)','Maritime con.'},'FontSize',12,'Color',[0.4 0.4 0.4]);
text(2.0,2.7,{'Bringi et al.(2003)','Continental con.'},'FontSize',12,'Color',[0.4 0.4 0.4]);
text(0.6,5.7,'(c) Convective','FontSize',12);

set(gcf,'Position',[0 0 900 600]);
saveas(gcf,'D:\DATA\OTTParsivel\Pictures\new\Nw-Dm-density.png');
saveas(gcf,'E:\DATA\OTTParsivel\Pictures\Nw-Dm-density.png');

% line([0 3.9],[3.9 3.9],'Color',[0.6 0.6 0.6],'LineStyle','--','LineWidth',2);
% text(0.1,4.05,'MP-Nw','FontSize',12);
% x1= 0.5:0.1:2;
% y1 = -1.6*x1+5.8;
% plot(x1,y1,'Color',[0.6 0.6 0.6],'LineStyle','--','LineWidth',2);