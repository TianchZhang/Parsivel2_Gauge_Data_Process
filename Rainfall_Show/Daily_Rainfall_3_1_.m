%Description:
%show the rainfall monthly, seasonal and yearly
% History:
% 2021.05.07 by zhangtc

%%
%monthly rainfall
load('D:\DATA\Parsivel_temporary\Rainfall_data_non.mat',...
    'rainfall2019_2020mo', 'rainfall2020_2021mo');

figure;
ax1 = subplot(2,1,1);
b1 = bar(rainfall2019_2020mo,0.5);
b1.FaceColor = [0 0.75 1];
b1.EdgeColor = [0 0.75 1];
ax1.FontSize = 10;
ax1.TickLength = [0.005 0.005];
ax1.LineWidth = 1.2;
ax1.XLim = [0.5 12.5];
ax1.XTick = 1:1:12;
ax1.XTickLabel = {'Jun.','Jul.','Aug.','Sept.','Oct.',...
    'Nov.','Dec.','Jan.','Feb.','Mar.','Apr.','May.'};
ax1.YLabel.String = 'Rainfall(mm)';
ax1.YLim = [0 300];
title({'Monthly Rainfall','2019.06 - 2020.05'});
for num1 = 1:12
    text(num1-0.7,rainfall2019_2020mo(num1)+30,sprintf('%8.1f',rainfall2019_2020mo(num1)));
end


ax2 = subplot(2,1,2);
b2 = bar(rainfall2020_2021mo,0.5);
b2.FaceColor = [0 0.75 1];
b2.EdgeColor = [0 0.75 1];
ax2.FontSize = 10;
ax2.TickLength = [0.005 0.005];
ax2.LineWidth = 1.2;
ax2.XLim = [0.5 12.5];
ax2.XTick = 1:1:12;
ax2.XTickLabel = {'Jun.','Jul.','Aug.','Sept.','Oct.',...
    'Nov.','Dec.','Jan.','Feb.','Mar.','Apr.','May.'};
ax2.YLabel.String = 'Rainfall(mm)';
ax2.YLim = [0 600];
ax2.YTick = 0:100:600;
title({'Monthly Rainfall','2020.06 - 2021.05'});
for num1 = 1:12
    text(num1-0.7,rainfall2020_2021mo(num1)+50,sprintf('%8.1f',rainfall2020_2021mo(num1)));
end

set(gcf,'Position',[1,1,600,400]);
savename = ['D:\DATA\OTTParsivel\Pictures\new\','Monthly Rainfall_non.png'];
saveas(gcf,savename);
saveas(gcf,['E:\DATA\OTTParsivel\Pictures\new\','Monthly Rainfall_non.png']);

%%
%daily rainfall
load('D:\DATA\Parsivel_temporary\Rainfall_data_non.mat',...
    'rainfall2019_2020', 'rainfall2020_2021');

figure;
ax1 = subplot(2,1,1);
b1 = bar(1:1:366,rainfall2019_2020);
b1.FaceColor = [0 0.75 1];
ax1.FontSize = 10;
ax1.TickLength = [0.005 0.005];
ax1.LineWidth = 1.2;
ax1.XLim = [0 366];
ax1.XTick = 15:30:366;
ax1.XTickLabel = {'Jun.','Jul.','Aug.','Sept.','Oct.',...
    'Nov.','Dec.','Jan.','Feb.','Mar.','Apr.','May.'};
ax1.XMinorTick = 'on';
ax1.YLabel.String = 'Rainfall(mm)';
ax1.YLim = [0 80];
ax1.YTick = 0:20:80;
title({'Daily Rainfall','2019.06 - 2020.05'});
line([0 366],[10 10],'Color',[0.6 0.6 0.6],'LineStyle','--','LineWidth',0.2);
line([0 366],[25 25],'Color',[0.6 0.6 0.6],'LineStyle','--','LineWidth',0.2);
line([0 366],[50 50],'Color',[0.6 0.6 0.6],'LineStyle','--','LineWidth',0.2);

ax2 = subplot(2,1,2);
b2 = bar(1:1:365,rainfall2020_2021);
b2.FaceColor = [0 0.75 1];
ax2.FontSize = 10;
ax2.TickLength = [0.005 0.005];
ax2.LineWidth = 1.2;
ax2.XLim = [0 365];
ax2.XTick = 15:30:365;
ax2.XTickLabel = {'Jun.','Jul.','Aug.','Sept.','Oct.',...
    'Nov.','Dec.','Jan.','Feb.','Mar.','Apr.','May.'};
ax2.XMinorTick = 'on';
ax2.YLabel.String = 'Rainfall(mm)';
ax2.YLim = [0 120];
ax2.YTick = 0:20:120;
title({'Daily Rainfall','2020.06 - 2021.05'});
line([0 366],[10 10],'Color',[0.6 0.6 0.6],'LineStyle','--','LineWidth',0.5);
line([0 366],[25 25],'Color',[0.6 0.6 0.6],'LineStyle','--','LineWidth',0.5);
line([0 366],[50 50],'Color',[0.6 0.6 0.6],'LineStyle','--','LineWidth',0.5);
line([0 366],[100 100],'Color',[0.6 0.6 0.6],'LineStyle','--','LineWidth',0.5);

set(gcf,'Position',[1,1,600,400]);
savename = ['D:\DATA\OTTParsivel\Pictures\new\','Daily Rainfall-non.png'];
saveas(gcf,savename);
saveas(gcf,['E:\DATA\OTTParsivel\Pictures\new\','Daily Rainfall-non.png']);
%%
%rainrate
load('D:\DATA\Parsivel_temporary\Rainfall_data_non.mat',...
    'rainrate2019_2020', 'rainrate2020_2021');

figure;
ax1 = subplot(2,1,1);
b1 = plot(1:1:length(rainrate2019_2020),rainrate2019_2020,'Color',[0 0.75 1]);
ax1.FontSize = 10;
ax1.TickLength = [0.005 0.005];
ax1.LineWidth = 1.2;
ax1.XLim = [0 length(rainrate2019_2020)];
ax1.XTick = 15*1440:30*1440:366*1440;
ax1.XTickLabel = {'Jun.','Jul.','Aug.','Sept.','Oct.',...
    'Nov.','Dec.','Jan.','Feb.','Mar.','Apr.','May.'};
ax1.XLim = [0 length(rainrate2019_2020)];
ax1.XMinorTick = 'on';
ax1.YLabel.String = 'Rainrate(mm\cdoth^{-1})';
ax1.YLim = [0 200];
ax1.YTick = 0:50:200;
title({'Rainrate per minute','2019.06 - 2020.05'});

ax2 = subplot(2,1,2);
b2 = plot(1:1:length(rainrate2020_2021),rainrate2020_2021,'Color',[0 0.75 1]);
ax2.FontSize = 10;
ax2.TickLength = [0.005 0.005];
ax2.LineWidth = 1.2;
ax2.XLim = [0 length(rainrate2020_2021)];
ax2.XTick = 15*1440:30*1440:365*1440;
ax2.XTickLabel = {'Jun.','Jul.','Aug.','Sept.','Oct.',...
    'Nov.','Dec.','Jan.','Feb.','Mar.','Apr.','May.'};
ax2.XMinorTick = 'on';
ax2.YLabel.String = 'Rainrate(mm\cdoth^{-1})';
ax2.YLim = [0 200];
ax2.YTick = 0:50:200;
title({'Rainrate per minute','2020.06 - 2021.05'});

set(gcf,'Position',[1,1,600,400]);
savename = ['D:\DATA\OTTParsivel\Pictures\new\','Rainrate-non.png'];
saveas(gcf,savename);
saveas(gcf,['E:\DATA\OTTParsivel\Pictures\new\','Rainrate-non.png']);
