%Description:
%show ND seasonly
% History:
% 2021.12.19 by zhangtc

clear
%%
%ND-seansons
clear
load('D:\DATA\Parsivel_temporary\DSD_parameters.mat','central_diameter');
load('D:\DATA\Parsivel_temporary\DSD_parameters_difseason.mat');
figure;
subplot(2,2,1)
p1=plot(central_diameter,mean(ND_conv_2019sum_ev),'b');
p1.Marker = 'd';
p1.MarkerSize = 2;
p1.MarkerFaceColor = 'b';
p1.LineStyle = ':';
hold on
p2=plot(central_diameter,mean(ND_conv_2019aut_ev,1),'g');
p2.Marker = 'd';
p2.MarkerSize = 2;
p2.MarkerFaceColor = 'g';
p2.LineStyle = ':';
p3=plot(central_diameter,mean(ND_conv_2019win_ev),'c');
p3.Marker = 'd';
p3.MarkerSize = 2;
p3.MarkerFaceColor = 'c';
p3.LineStyle = ':';
p4=plot(central_diameter,mean(ND_conv_2019spr_ev),'r');
p4.Marker = 'd';
p4.MarkerSize = 2;
p4.MarkerFaceColor = 'r';
p4.LineStyle = ':';
legend('Sum.','Aut.','Win.','Spr.');
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
text(0.5,0.0008,{'(a) 2019.06-2020.05'});
title({'Convective'});
subplot(2,2,2)
p1=plot(central_diameter,mean(ND_stra_2019sum_ev),'b');
p1.Marker = 's';
p1.MarkerSize = 2;
p1.MarkerFaceColor = 'b';
p1.LineStyle = ':';
hold on
p2=plot(central_diameter,mean(ND_stra_2019aut_ev),'g');
p2.Marker = 's';
p2.MarkerSize = 2;
p2.MarkerFaceColor = 'g';
p2.LineStyle = ':';
p3=plot(central_diameter,mean(ND_stra_2019win_ev),'c');
p3.Marker = 's';
p3.MarkerSize = 2;
p3.MarkerFaceColor = 'c';
p3.LineStyle = ':';
p4=plot(central_diameter,mean(ND_stra_2019spr_ev),'r');
p4.Marker = 's';
p4.MarkerSize = 2;
p4.MarkerFaceColor = 'r';
p4.LineStyle = ':';
legend('Sum.','Aut.','Win.','Spr.');
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
text(0.5,0.0008,{'(a) 2019.06-2020.05'});
title({'Stratiform'});

subplot(2,2,3)
p1=plot(central_diameter,mean(ND_conv_2020sum),'b');
p1.Marker = 'd';
p1.MarkerSize = 2;
p1.MarkerFaceColor = 'b';
p1.LineStyle = ':';
hold on
p2=plot(central_diameter,mean(ND_conv_2020aut),'g');
p2.Marker = 'd';
p2.MarkerSize = 2;
p2.MarkerFaceColor = 'g';
p2.LineStyle = ':';
p3=plot(central_diameter,mean(ND_conv_2020win),'c');
p3.Marker = 'd';
p3.MarkerSize = 2;
p3.MarkerFaceColor = 'c';
p3.LineStyle = ':';
p4=plot(central_diameter,mean(ND_conv_2020spr),'r');
p4.Marker = 'd';
p4.MarkerSize = 2;
p4.MarkerFaceColor = 'r';
p4.LineStyle = ':';
legend('Sum.','Aut.','Win.','Spr.');
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
text(0.5,0.0008,{'(b) 2020.06-2021.05'});
subplot(2,2,4)
p1=plot(central_diameter,mean(ND_stra_2020sum),'b');
p1.Marker = 's';
p1.MarkerSize = 2;
p1.MarkerFaceColor = 'b';
p1.LineStyle = ':';
hold on
p2=plot(central_diameter,mean(ND_stra_2020aut),'g');
p2.Marker = 's';
p2.MarkerSize = 2;
p2.MarkerFaceColor = 'g';
p2.LineStyle = ':';
p3=plot(central_diameter,mean(ND_stra_2020win),'c');
p3.Marker = 's';
p3.MarkerSize = 2;
p3.MarkerFaceColor = 'c';
p3.LineStyle = ':';
p4=plot(central_diameter,mean(ND_stra_2020spr),'r');
p4.Marker = 's';
p4.MarkerSize = 2;
p4.MarkerFaceColor = 'r';
p4.LineStyle = ':';
legend('Sum.','Aut.','Win.','Spr.');
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
text(0.5,0.0008,{'(b) 2020.06-2021.05'});
set(gcf,'Position',[0 0 900 600]);
%%
%ND-all
load('D:\DATA\Parsivel_temporary\DSD_parameters.mat','central_diameter');
load('D:\DATA\Parsivel_temporary\DSD_parameters_difseason.mat');
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
% saveas(gcf,'E:\DATA\OTTParsivel\Pictures\DSD.png');
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