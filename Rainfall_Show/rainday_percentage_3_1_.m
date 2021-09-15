%Description:
%show rain day percentage
% History:
% 2021.09.13 by zhangtc

%daily rainfall
load('D:\DATA\Parsivel_temporary\Rainfall_data_non.mat',...
    'rainfall2019_2020', 'rainfall2020_2021');
rainfall2019 = sum(rainfall2019_2020);
rainfall2020 = sum(rainfall2020_2021);

rd2019 = [length(find(rainfall2019_2020 > 0 & rainfall2019_2020 < 10)),...
    length(find(rainfall2019_2020 >= 10 & rainfall2019_2020 < 25)),...
    length(find(rainfall2019_2020 >= 25 & rainfall2019_2020 < 50)),...
    length(find(rainfall2019_2020 >= 50 & rainfall2019_2020 < 100)),...
    length(find(rainfall2019_2020 >= 100 & rainfall2019_2020 < 250))];
rd2019p = rd2019 ./length(find(rainfall2019_2020 > 0));
rd2020 = [length(find(rainfall2020_2021 > 0 & rainfall2020_2021 < 10)),...
    length(find(rainfall2020_2021 >= 10 & rainfall2020_2021 < 25)),...
    length(find(rainfall2020_2021 >= 25 & rainfall2020_2021 < 50)),...
    length(find(rainfall2020_2021 >= 50 & rainfall2020_2021 < 100)),...
    length(find(rainfall2020_2021 >= 100 & rainfall2020_2021 < 250))];
rd2020p = rd2020 ./length(find(rainfall2020_2021 > 0));

rf2019 = [sum(rainfall2019_2020(rainfall2019_2020 > 0 & rainfall2019_2020 < 10)),...
    sum(rainfall2019_2020(rainfall2019_2020 >= 10 & rainfall2019_2020 < 25)),...
    sum(rainfall2019_2020(rainfall2019_2020 >= 25 & rainfall2019_2020 < 50)),...
    sum(rainfall2019_2020(rainfall2019_2020 >= 50 & rainfall2019_2020 < 100)),...
    sum(rainfall2019_2020(rainfall2019_2020 >= 100 & rainfall2019_2020 < 250))];
rf2019p = rf2019 ./rainfall2019;
rf2020 = [sum(rainfall2020_2021(rainfall2020_2021 > 0 & rainfall2020_2021 < 10)),...
    sum(rainfall2020_2021(rainfall2020_2021 >= 10 & rainfall2020_2021 < 25)),...
    sum(rainfall2020_2021(rainfall2020_2021 >= 25 & rainfall2020_2021 < 50)),...
    sum(rainfall2020_2021(rainfall2020_2021 >= 50 & rainfall2020_2021 < 100)),...
    sum(rainfall2020_2021(rainfall2020_2021 >= 100 & rainfall2020_2021 < 250))];
rf2020p = rf2020 ./rainfall2020;

figure;
ax1 = subplot(2,2,1);
yyaxis left
b1 = bar(1:5,[rd2019;zeros(1,5)]);
b1(1).FaceColor = [0.4,0.4,0.4];
b1(1).EdgeColor = [0.4,0.4,0.4];
ax1.FontSize = 10;
ax1.TickLength = [0.01 0.01];
ax1.LineWidth = 1.2;
ax1.YColor = 'k'; 
ax1.XTickLabel = {'LR','MR','HR','VR','VVR'};
ax1.YLim = [0 160];
ax1.YTick = 0:40:160;
text(0.55,rd2019(1)+12,sprintf('%d',rd2019(1)));
text(1.65,rd2019(2)+12,sprintf('%d',rd2019(2)));
text(2.8,rd2019(3)+12,sprintf('%d',rd2019(3)));
text(3.7,rd2019(4)+12,sprintf('%d',rd2019(4)));

yyaxis right
b1 = bar(1:5,[zeros(1,5);rd2019p]);
b1(2).FaceColor = [0.75 0.75 0.75];
b1(2).EdgeColor = [0.75 0.75 0.75];
ax1.YColor = [0.3 0.3 0.3]; 
ax1.YLim = [0 1];
ax1.YTick = 0:0.2:1;
ax1.YTickLabel = {'0','20%','40%','60%','80%','100%'};
% ax1.YLabel.String = 'Percentage';
title({'2019.06 - 2020.05','Rainy day'});
formatSpec = "%3.1f%s";
text(1,rd2019p(1)+0.08,sprintf(formatSpec,rd2019p(1)*100,'%'),'Color',[0.3 0.3 0.3]);
text(2,rd2019p(2)+0.07,sprintf(formatSpec,rd2019p(2)*100,'%'),'Color',[0.3 0.3 0.3]);
text(3,rd2019p(3)+0.07,sprintf(formatSpec,rd2019p(3)*100,'%'),'Color',[0.3 0.3 0.3]);
text(4,rd2019p(4)+0.07,sprintf(formatSpec,rd2019p(4)*100,'%'),'Color',[0.3 0.3 0.3]);


ax1 = subplot(2,2,3);
yyaxis left
b1 = bar(1:5,[rf2019;zeros(1,5)]);
b1(1).FaceColor = [0.4,0.4,0.4];
b1(1).EdgeColor = [0.4,0.4,0.4];
ax1.FontSize = 10;
ax1.TickLength = [0.01 0.01];
ax1.LineWidth = 1.2;
ax1.YColor = 'k'; 
ax1.XTickLabel = {'LR','MR','HR','VR','VVR'};
% ax1.YLabel.String = 'Rainfall(mm)';
ax1.YLim = [0 400];
ax1.YTick = 0:100:400;
text(0.55,rf2019(1)+30,sprintf('%3.1f',rf2019(1)));
text(1.6,rf2019(2)+30,sprintf('%3.1f',rf2019(2)));
text(2.6,rf2019(3)+30,sprintf('%3.1f',rf2019(3)));
text(3.6,rf2019(4)+30,sprintf('%3.1f',rf2019(4)));

yyaxis right
b1 = bar(1:5,[zeros(1,5);rf2019p]);
b1(2).FaceColor = [0.75 0.75 0.75];
b1(2).EdgeColor = [0.75 0.75 0.75];
ax1.YColor = [0.3 0.3 0.3]; 
ax1.YLim = [0 1];
ax1.YTick = 0:0.2:1;
ax1.YTickLabel = {'0','20%','40%','60%','80%','100%'};
title({'Rainfall(mm)'});
formatSpec = "%3.1f%s";
text(1,rf2019p(1)+0.08,sprintf(formatSpec,rf2019p(1)*100,'%'),'Color',[0.3 0.3 0.3]);
text(2,rf2019p(2)+0.07,sprintf(formatSpec,rf2019p(2)*100,'%'),'Color',[0.3 0.3 0.3]);
text(3,rf2019p(3)+0.07,sprintf(formatSpec,rf2019p(3)*100,'%'),'Color',[0.3 0.3 0.3]);
text(4,rf2019p(4)+0.07,sprintf(formatSpec,rf2019p(4)*100,'%'),'Color',[0.3 0.3 0.3]);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
ax1 = subplot(2,2,2);
yyaxis left
b1 = bar(1:5,[rd2020;zeros(1,5)]);
b1(1).FaceColor = [0.4,0.4,0.4];
b1(1).EdgeColor = [0.4,0.4,0.4];
ax1.FontSize = 10;
ax1.TickLength = [0.01 0.01];
ax1.LineWidth = 1.2;
ax1.YColor = 'k'; 
ax1.XTickLabel = {'LR','MR','HR','VR','VVR'};
ax1.YLim = [0 200];
ax1.YTick = 0:40:200;
text(0.55,rd2020(1)+12,sprintf('%d',rd2020(1)));
text(1.65,rd2020(2)+12,sprintf('%d',rd2020(2)));
text(2.7,rd2020(3)+12,sprintf('%d',rd2020(3)));
text(3.8,rd2020(4)+12,sprintf('%d',rd2020(4)));
text(4.7,rd2020(5)+13,sprintf('%d',rd2020(5)));
yyaxis right
b1 = bar(1:5,[zeros(1,5);rd2020p]);
b1(2).FaceColor = [0.75 0.75 0.75];
b1(2).EdgeColor = [0.75 0.75 0.75];
ax1.YColor = [0.3 0.3 0.3]; 
ax1.YLim = [0 1];
ax1.YTick = 0:0.2:1;
ax1.YTickLabel = {'0','20%','40%','60%','80%','100%'};
% ax1.YLabel.String = 'Percentage';
title({'2020.06 - 2021.05','Rainy day'});
formatSpec = "%3.1f%s";
text(1,rd2020p(1)+0.08,sprintf(formatSpec,rd2020p(1)*100,'%'),'Color',[0.3 0.3 0.3]);
text(2-0.02,rd2020p(2)+0.07,sprintf(formatSpec,rd2020p(2)*100,'%'),'Color',[0.3 0.3 0.3]);
text(3-0.01,rd2020p(3)+0.07,sprintf(formatSpec,rd2020p(3)*100,'%'),'Color',[0.3 0.3 0.3]);
text(4-0.02,rd2020p(4)+0.07,sprintf(formatSpec,rd2020p(4)*100,'%'),'Color',[0.3 0.3 0.3]);
text(5-0.02,rd2020p(5)+0.07,sprintf(formatSpec,rd2020p(5)*100,'%'),'Color',[0.3 0.3 0.3]);

ax1 = subplot(2,2,4);
yyaxis left
b1 = bar(1:5,[rf2020;zeros(1,5)]);
b1(1).FaceColor = [0.4,0.4,0.4];
b1(1).EdgeColor = [0.4,0.4,0.4];
ax1.FontSize = 10;
ax1.TickLength = [0.01 0.01];
ax1.LineWidth = 1.2;
ax1.YColor = 'k'; 
ax1.XTickLabel = {'LR','MR','HR','VR','VVR'};
% ax1.YLabel.String = 'Rainfall(mm)';
ax1.YLim = [0 800];
ax1.YTick = 0:200:800;
text(0.55,rf2020(1)+50,sprintf('%3.1f',rf2020(1)));
text(1.6,rf2020(2)+50,sprintf('%3.1f',rf2020(2)));
text(2.6,rf2020(3)+50,sprintf('%3.1f',rf2020(3)));
text(3.6,rf2020(4)+50,sprintf('%3.1f',rf2020(4)));
text(4.6,rf2020(5)+50,sprintf('%3.1f',rf2020(5)));
yyaxis right
b1 = bar(1:5,[zeros(1,5);rf2020p]);
b1(2).FaceColor = [0.75 0.75 0.75];
b1(2).EdgeColor = [0.75 0.75 0.75];
ax1.YColor = [0.3 0.3 0.3]; 
ax1.YLim = [0 1];
ax1.YTick = 0:0.2:1;
ax1.YTickLabel = {'0','20%','40%','60%','80%','100%'};
title({'Rainfall(mm)'});
formatSpec = "%3.1f%s";
text(1,rf2020p(1)+0.08,sprintf(formatSpec,rf2020p(1)*100,'%'),'Color',[0.3 0.3 0.3]);
text(2,rf2020p(2)+0.07,sprintf(formatSpec,rf2020p(2)*100,'%'),'Color',[0.3 0.3 0.3]);
text(3,rf2020p(3)+0.07,sprintf(formatSpec,rf2020p(3)*100,'%'),'Color',[0.3 0.3 0.3]);
text(4,rf2020p(4)+0.07,sprintf(formatSpec,rf2020p(4)*100,'%'),'Color',[0.3 0.3 0.3]);
text(5,rf2020p(5)+0.07,sprintf(formatSpec,rf2020p(5)*100,'%'),'Color',[0.3 0.3 0.3]);

set(gcf,'Position',[1,1,800,400]);
savename = ['D:\DATA\OTTParsivel\Pictures\new\','Rainfall_perc_non.png'];
saveas(gcf,savename);
saveas(gcf,['E:\DATA\OTTParsivel\Pictures\new\','Rainfall_perc_non.png']);
