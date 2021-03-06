%Description:
%show ND seasonly
% History:
% 2021.12.19 by zhangtc

%%
%ND-seansonly yearly
clear
load('D:\DATA\Parsivel_temporary\DSD_parameters.mat','central_diameter');
load('D:\DATA\Parsivel_temporary\DSD_parameters_difseason.mat','ND_conv_2019sum','ND_conv_2019aut','ND_conv_2019win','ND_conv_2019spr');
load('D:\DATA\Parsivel_temporary\DSD_parameters_difseason.mat','ND_conv_2020sum','ND_conv_2020aut','ND_conv_2020win','ND_conv_2020spr');
load('D:\DATA\Parsivel_temporary\DSD_parameters_difseason.mat','ND_stra_2019sum','ND_stra_2019aut','ND_stra_2019win','ND_stra_2019spr');
load('D:\DATA\Parsivel_temporary\DSD_parameters_difseason.mat','ND_stra_2020sum','ND_stra_2020aut','ND_stra_2020win','ND_stra_2020spr');
load('D:\DATA\Parsivel_temporary\DSD_parameters_difseason.mat','ND_all_2019sum','ND_all_2019aut','ND_all_2019win','ND_all_2019spr');
load('D:\DATA\Parsivel_temporary\DSD_parameters_difseason.mat','ND_all_2020sum','ND_all_2020aut','ND_all_2020win','ND_all_2020spr');
figure;
%1
ax1=subplot(3,2,1);
p1=plot(central_diameter,mean(ND_conv_2019sum),'b');
p1.Marker = 'd';
p1.MarkerSize = 3;
p1.MarkerFaceColor = 'b';
p1.LineStyle = ':';
hold on
% p2=plot(central_diameter,mean(ND_conv_2019aut),'g');
% p2.Marker = 'd';
% p2.MarkerSize = 3;
% p2.MarkerFaceColor = 'g';
% p2.LineStyle = ':';
p3=plot(central_diameter,mean(ND_conv_2019win),'c');
p3.Marker = 'd';
p3.MarkerSize = 3;
p3.MarkerFaceColor = 'c';
p3.LineStyle = ':';
p4=plot(central_diameter,mean(ND_conv_2019spr),'r');
p4.Marker = 'd';
p4.MarkerSize = 3;
p4.MarkerFaceColor = 'r';
p4.LineStyle = ':';
legend('Sum.','Win.','Spr.');
hold off
ax1.XLim = [0 8];
ax1.XTick = 0:1:8;
ax1.YScale = 'log';
ax1.YLim = [0.0001 10000];
ax1.YTick = [10e-4 10e-2 1 100 10000];
ax1.YTickLabel = {'10^{-4}','10^{-2}','10^{ 0}','10^{ 2}','10^{ 4}'};
ax1.YMinorTick = 'on';
ax1.Box = 'on';
ax1.FontSize = 12;
ax1.TickLength = [0.015 0.02];
ax1.LineWidth = 1.5;
% ax.XLabel.String = 'D(mm)';
ax1.YLabel.String = 'N(D)(m^{-3}\cdotmm^{-1})';
ax1.Position = [0.07 0.7093 0.445 0.2157];
text(0.3,0.004,{'(a) Convevtive','2019.06-2020.05'},'FontSize',12);
%2
ax2=subplot(3,2,2);
p1=plot(central_diameter,mean(ND_conv_2020sum),'b');
p1.Marker = 'd';
p1.MarkerSize = 3;
p1.MarkerFaceColor = 'b';
p1.LineStyle = ':';
hold on
p2=plot(central_diameter,mean(ND_conv_2020aut),'g');
p2.Marker = 'd';
p2.MarkerSize = 3;
p2.MarkerFaceColor = 'g';
p2.LineStyle = ':';
% p3=plot(central_diameter,mean(ND_conv_2020win),'c');
% p3.Marker = 'd';
% p3.MarkerSize = 3;
% p3.MarkerFaceColor = 'c';
% p3.LineStyle = ':';
p4=plot(central_diameter,mean(ND_conv_2020spr),'r');
p4.Marker = 'd';
p4.MarkerSize = 3;
p4.MarkerFaceColor = 'r';
p4.LineStyle = ':';
legend('Sum.','Aut.','Spr.');
hold off
ax2.XLim = [0 8];
ax2.XTick = 0:1:8;
ax2.YScale = 'log';
ax2.YLim = [0.0001 10000];
ax2.YTick = [10e-4 10e-2 1 100 10000];
ax2.YTickLabel = {'','','','',''};
% ax2.YTickLabel = {'10^{-4}','10^{-2}','10^{ 0}','10^{ 2}','10^{ 4}'};
ax2.YMinorTick = 'on';
ax2.Box = 'on';
ax2.FontSize = 12;
ax2.TickLength = [0.015 0.02];
ax2.LineWidth = 1.5;
ax2.Position = [0.536 0.7093 0.445 0.2157];
% ax.XLabel.String = 'D(mm)';
% ax2.YLabel.String = 'N(D)(m^{-3}\cdotmm^{-1})';
text(0.3,0.004,{'(b) Convevtive','2020.06-2021.05'},'FontSize',12);
%3
ax3=subplot(3,2,3);
p1=plot(central_diameter,mean(ND_stra_2019sum),'b');
p1.Marker = 's';
p1.MarkerSize =3.5;
p1.MarkerFaceColor = 'b';
p1.LineStyle = ':';
hold on
p2=plot(central_diameter,mean(ND_stra_2019aut),'g');
p2.Marker = 's';
p2.MarkerSize = 3.5;
p2.MarkerFaceColor = 'g';
p2.LineStyle = ':';
p3=plot(central_diameter,mean(ND_stra_2019win),'c');
p3.Marker = 's';
p3.MarkerSize = 3.5;
p3.MarkerFaceColor = 'c';
p3.LineStyle = ':';
p4=plot(central_diameter,mean(ND_stra_2019spr),'r');
p4.Marker = 's';
p4.MarkerSize = 3.5;
p4.MarkerFaceColor = 'r';
p4.LineStyle = ':';
legend('Sum.','Aut.','Win.','Spr.');
hold off
ax3.XLim = [0 8];
ax3.XTick = 0:1:8;
ax3.YScale = 'log';
ax3.YLim = [0.0001 10000];
ax3.YTick = [10e-4 10e-2 1 100 10000];
ax3.YTickLabel = {'10^{-4}','10^{-2}','10^{ 0}','10^{ 2}','10^{ 4}'};
ax3.YMinorTick = 'on';
ax3.Box = 'on';
ax3.FontSize = 12;
ax3.TickLength = [0.015 0.02];
ax3.LineWidth = 1.5;
ax3.Position = [0.07 0.4096 0.445 0.2157];
% ax3.XLabel.String = 'D(mm)';
ax3.YLabel.String = 'N(D)(m^{-3}\cdotmm^{-1})';
text(0.3,0.004,{'(c) Stratiform','2019.06-2020.05'},'FontSize',12);
%4
ax4=subplot(3,2,4);
p1=plot(central_diameter,mean(ND_stra_2020sum),'b');
p1.Marker = 's';
p1.MarkerSize = 3.5;
p1.MarkerFaceColor = 'b';
p1.LineStyle = ':';
hold on
p2=plot(central_diameter,mean(ND_stra_2020aut),'g');
p2.Marker = 's';
p2.MarkerSize = 3.5;
p2.MarkerFaceColor = 'g';
p2.LineStyle = ':';
p3=plot(central_diameter,mean(ND_stra_2020win),'c');
p3.Marker = 's';
p3.MarkerSize = 3.5;
p3.MarkerFaceColor = 'c';
p3.LineStyle = ':';
p4=plot(central_diameter,mean(ND_stra_2020spr),'r');
p4.Marker = 's';
p4.MarkerSize = 3.5;
p4.MarkerFaceColor = 'r';
p4.LineStyle = ':';
legend('Sum.','Aut.','Win.','Spr.');
hold off
ax4.XLim = [0 8];
ax4.XTick = 0:1:8;
ax4.YScale = 'log';
ax4.YLim = [0.0001 10000];
ax4.YTick = [10e-4 10e-2 1 100 10000];
ax4.YTickLabel = {'','','','',''};
% ax4.YTickLabel = {'10^{-4}','10^{-2}','10^{ 0}','10^{ 2}','10^{ 4}'};
ax4.YMinorTick = 'on';
ax4.Box = 'on';
ax4.FontSize = 12;
ax4.TickLength = [0.015 0.02];
ax4.LineWidth = 1.5;
ax4.Position = [0.536 0.4096 0.445 0.2157];
text(0.3,0.004,{'(d) Stratiform','2020.06-2021.05'},'FontSize',12);
%5
ax5=subplot(3,2,5);
p1=plot(central_diameter,mean(ND_all_2019sum),'b');
p1.Marker = 'o';
p1.MarkerSize = 3;
p1.MarkerFaceColor = 'b';
p1.LineStyle = ':';
hold on
p2=plot(central_diameter,mean(ND_all_2019aut),'g');
p2.Marker = 'o';
p2.MarkerSize = 3;
p2.MarkerFaceColor = 'g';
p2.LineStyle = ':';
p3=plot(central_diameter,mean(ND_all_2019win),'c');
p3.Marker = 'o';
p3.MarkerSize = 3;
p3.MarkerFaceColor = 'c';
p3.LineStyle = ':';
p4=plot(central_diameter,mean(ND_all_2019spr),'r');
p4.Marker = 'o';
p4.MarkerSize = 3;
p4.MarkerFaceColor = 'r';
p4.LineStyle = ':';
legend('Sum.','Aut.','Win.','Spr.');
hold off
ax5.XLim = [0 8];
ax5.XTick = 0:1:8;
ax5.YScale = 'log';
ax5.YLim = [0.0001 10000];
ax5.YTick = [10e-4 10e-2 1 100 10000];
ax5.YTickLabel = {'10^{-4}','10^{-2}','10^{ 0}','10^{ 2}','10^{ 4}'};
ax5.YMinorTick = 'on';
ax5.Box = 'on';
ax5.FontSize = 12;
ax5.TickLength = [0.015 0.02];
ax5.LineWidth = 1.5;
ax5.Position = [0.07 0.09 0.445 0.2157];
ax5.XLabel.String = 'D(mm)';
ax5.YLabel.String = 'N(D)(m^{-3}\cdotmm^{-1})';
text(0.3,0.004,{'(e) Total','2019.06-2020.05'},'FontSize',12);
%6
ax6=subplot(3,2,6);
p1=plot(central_diameter,mean(ND_all_2020sum),'b');
p1.Marker = 'o';
p1.MarkerSize = 3;
p1.MarkerFaceColor = 'b';
p1.LineStyle = ':';
hold on
p2=plot(central_diameter,mean(ND_all_2020aut),'g');
p2.Marker = 'o';
p2.MarkerSize = 3;
p2.MarkerFaceColor = 'g';
p2.LineStyle = ':';
p3=plot(central_diameter,mean(ND_all_2020win),'c');
p3.Marker = 'o';
p3.MarkerSize = 3;
p3.MarkerFaceColor = 'c';
p3.LineStyle = ':';
p4=plot(central_diameter,mean(ND_all_2020spr),'r');
p4.Marker = 'o';
p4.MarkerSize = 3;
p4.MarkerFaceColor = 'r';
p4.LineStyle = ':';
legend('Sum.','Aut.','Win.','Spr.');
hold off
ax6.XLim = [0 8];
ax6.XTick = 0:1:8;
ax6.YScale = 'log';
ax6.YLim = [0.0001 10000];
ax6.YTick = [10e-4 10e-2 1 100 10000];
ax6.YTickLabel = {'','','','',''};
% ax6.YTickLabel = {'10^{-4}','10^{-2}','10^{ 0}','10^{ 2}','10^{ 4}'};
ax6.YMinorTick = 'on';
ax6.Box = 'on';
ax6.FontSize = 12;
ax6.TickLength = [0.015 0.02];
ax6.LineWidth = 1.5;
ax6.Position = [0.536 0.09 0.445 0.2157];
ax6.XLabel.String = 'D(mm)';
% ax6.YLabel.String = 'N(D)(m^{-3}\cdotmm^{-1})';
text(0.3,0.004,{'(f) Total','2020.06-2021.05'},'FontSize',12);

set(gcf,'Position',[0 0 900 600]);
saveas(gcf,'D:\DATA\OTTParsivel\Pictures\new\ND-seasonly-yearly.png');
saveas(gcf,'E:\DATA\OTTParsivel\Pictures\ND-seasonly-yearly.png');
%%
%ND-all
clear
load('D:\DATA\Parsivel_temporary\DSD_parameters.mat','central_diameter');
load('D:\DATA\Parsivel_temporary\DSD_parameters_difseason.mat','ND_*');
figure;
ax1=subplot(3,1,1);
p1=plot(central_diameter,mean([ND_conv_2019spr;ND_conv_2020spr]),'r');
p1.Marker = 'd';
p1.MarkerSize = 2.5;
p1.MarkerFaceColor = 'r';
p1.LineStyle = ':';
hold on
p2=plot(central_diameter,mean([ND_conv_2019sum;ND_conv_2020sum]),'b');
p2.Marker = 'd';
p2.MarkerSize = 2.5;
p2.MarkerFaceColor = 'b';
p2.LineStyle = ':';
p3=plot(central_diameter,mean([ND_conv_2019aut;ND_conv_2020aut]),'g');
p3.Marker = 'd';
p3.MarkerSize = 2.5;
p3.MarkerFaceColor = 'g';
p3.LineStyle = ':';
p4=plot(central_diameter,mean([ND_conv_2019win;ND_conv_2020win]),'c');
p4.Marker = 'd';
p4.MarkerSize = 2.5;
p4.MarkerFaceColor = 'c';
p4.LineStyle = ':';
legend({'Spr.','Sum.','Aut.','Win.'},'NumColumns',2);
hold off
ax1.XLim = [0 8];
ax1.XTick = 0:1:8;
ax1.YScale = 'log';
ax1.YLim = [0.0001 10000];
ax1.YTick = [10e-4 10e-2 1 100 10000];
ax1.YTickLabel = {'10^{-4}','10^{-2}','10^{ 0}','10^{ 2}','10^{ 4}'};
ax1.YMinorTick = 'on';
ax1.Box = 'on';
ax1.FontSize = 10;
ax1.TickLength = [0.01 0.01];
ax1.LineWidth = 1.2;
ax1.YLabel.String = 'N(D)(m^{-3}\cdotmm^{-1})';
ax1.Position = [0.11 0.72 0.85 0.25];
text(0.3,0.004,{'(a) Convevtive'},'FontSize',10);

ax2=subplot(3,1,2);
p1=plot(central_diameter,mean([ND_stra_2019spr;ND_stra_2020spr]),'r');
p1.Marker = '*';
p1.MarkerSize = 3;
p1.MarkerFaceColor = 'r';
p1.LineStyle = ':';
hold on
p2=plot(central_diameter,mean([ND_stra_2019sum;ND_stra_2020sum]),'b');
p2.Marker = '*';
p2.MarkerSize = 3;
p2.MarkerFaceColor = 'b';
p2.LineStyle = ':';
p3=plot(central_diameter,mean([ND_stra_2019aut;ND_stra_2020aut]),'g');
p3.Marker = '*';
p3.MarkerSize = 3;
p3.MarkerFaceColor = 'g';
p3.LineStyle = ':';
p4=plot(central_diameter,mean([ND_stra_2019win;ND_stra_2020win]),'c');
p4.Marker = '*';
p4.MarkerSize = 3;
p4.MarkerFaceColor = 'c';
p4.LineStyle = ':';
legend({'Spr.','Sum.','Aut.','Win.'},'NumColumns',2);
hold off
ax2.XLim = [0 8];
ax2.XTick = 0:1:8;
ax2.YScale = 'log';
ax2.YLim = [0.0001 10000];
ax2.YTick = [10e-4 10e-2 1 100 10000];
ax2.YTickLabel = {'10^{-4}','10^{-2}','10^{ 0}','10^{ 2}','10^{ 4}'};
ax2.YMinorTick = 'on';
ax2.Box = 'on';
ax2.FontSize = 10;
ax2.TickLength = [0.01 0.01];
ax2.LineWidth = 1.2;
ax2.YLabel.String = 'N(D)(m^{-3}\cdotmm^{-1})';
ax2.Position = [0.11 0.4096 0.85 0.25];
text(0.3,0.004,{'(b) Stratiform'},'FontSize',10);

ax3=subplot(3,1,3);
p1=plot(central_diameter,mean([ND_all_2019spr;ND_all_2020spr]),'r');
p1.Marker = 'o';
p1.MarkerSize = 2.5;
p1.MarkerFaceColor = 'r';
p1.LineStyle = ':';
hold on
p2=plot(central_diameter,mean([ND_all_2019sum;ND_all_2020sum]),'b');
p2.Marker = 'o';
p2.MarkerSize = 2.5;
p2.MarkerFaceColor = 'b';
p2.LineStyle = ':';
p3=plot(central_diameter,mean([ND_all_2019aut;ND_all_2020aut]),'g');
p3.Marker = 'o';
p3.MarkerSize = 2.5;
p3.MarkerFaceColor = 'g';
p3.LineStyle = ':';
p4=plot(central_diameter,mean([ND_all_2019win;ND_all_2020win]),'c');
p4.Marker = 'o';
p4.MarkerSize = 2.5;
p4.MarkerFaceColor = 'c';
p4.LineStyle = ':';
legend({'Spr.','Sum.','Aut.','Win.'},'NumColumns',2);
hold off
ax3.XLim = [0 8];
ax3.XTick = 0:1:8;
ax3.YScale = 'log';
ax3.YLim = [0.0001 10000];
ax3.YTick = [10e-4 10e-2 1 100 10000];
ax3.YTickLabel = {'10^{-4}','10^{-2}','10^{ 0}','10^{ 2}','10^{ 4}'};
ax3.YMinorTick = 'on';
ax3.Box = 'on';
ax3.FontSize = 10;
ax3.TickLength = [0.01 0.01];
ax3.LineWidth = 1.2;
ax3.XLabel.String = 'D(mm)';
ax3.YLabel.String = 'N(D)(m^{-3}\cdotmm^{-1})';
ax3.Position = [0.11 0.10 0.85 0.25];
text(0.3,0.004,{'(c) Total'},'FontSize',10);
set(gcf,'Position',[0 0 600 400]);
saveas(gcf,'D:\DATA\OTTParsivel\Pictures\new\ND-seasonly.png');
saveas(gcf,'E:\DATA\OTTParsivel\Pictures\ND-seasonly.png');
%%
%ND-event
load('D:\DATA\Parsivel_temporary\DSD_parameters.mat','central_diameter');
load('D:\DATA\Parsivel_temporary\DSD_parameters_difseason.mat');
ND_conv = mean(ND_conv_all_ev);
ND_stra = mean(ND_stra_all_ev);
ND_all = mean([ND_conv_all_ev;ND_stra_all_ev]);
subplot(2,2,1)
p1=plot(central_diameter,mean([ND_conv_2019spr_ev;ND_conv_2020spr_ev]),'r');
p1.Marker = 'd';
p1.MarkerSize = 2;
p1.MarkerFaceColor = 'r';
p1.LineStyle = ':';
hold on
p2=plot(central_diameter,mean([ND_conv_2019sum_ev;ND_conv_2020sum_ev]),'b');
p2.Marker = 'd';
p2.MarkerSize = 2;
p2.MarkerFaceColor = 'b';
p2.LineStyle = ':';
p3=plot(central_diameter,mean([ND_conv_2019aut_ev;ND_conv_2020aut_ev]),'g');
p3.Marker = 'd';
p3.MarkerSize = 2;
p3.MarkerFaceColor = 'g';
p3.LineStyle = ':';
p4=plot(central_diameter,mean([ND_conv_2019win_ev;ND_conv_2020win_ev]),'c');
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
p1=plot(central_diameter,mean([ND_stra_2019spr_ev;ND_stra_2020spr_ev]),'r');
p1.Marker = 's';
p1.MarkerSize = 2;
p1.MarkerFaceColor = 'r';
p1.LineStyle = ':';
hold on
p2=plot(central_diameter,mean([ND_stra_2019sum_ev;ND_stra_2020sum_ev]),'b');
p2.Marker = 's';
p2.MarkerSize = 2;
p2.MarkerFaceColor = 'b';
p2.LineStyle = ':';
p3=plot(central_diameter,mean([ND_stra_2019aut_ev;ND_stra_2020aut_ev]),'g');
p3.Marker = 's';
p3.MarkerSize = 2;
p3.MarkerFaceColor = 'g';
p3.LineStyle = ':';
p4=plot(central_diameter,mean([ND_stra_2019win_ev;ND_stra_2020win_ev]),'c');
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
% saveas(gcf,'E:\DATA\OTTParsivel\Pictures\DSD.png');