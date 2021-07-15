%Description:
%show the rainfall monthly, seasonal and yearly
% History:
% 2021.05.07 by zhangtc

mons = {'Jun.','Jul.','Aug.','Sept.','Oct.',...
    'Nov.','Dec.','Jan.','Feb.','Mar.','Apr.','May.'};

rainfall2019_2020 = zeros(366,1);
rainfall2019_2020mo = zeros(12,1);
rainfall2020_2021 = zeros(365,1);
rainfall2020_2021mo = zeros(12,1);

file_root = 'E:\DATA\OTTParsivel\nonQC2019-\';
file_day = dir([file_root,'*.h5']);

temp_time2019 = datenum(2019,5,31);
temp_time2020 = datenum(2020,5,31);

for fnum = 1 : length(file_day)
    fname = [file_root,file_day(fnum).name];
    rainfall = sum(h5read(fname,'/RR'))./60;
    temp_t = datenum(fix(str2double(file_day(fnum).name(1:4))),...
        fix(str2double(file_day(fnum).name(5:6))),...
        fix(str2double(file_day(fnum).name(7:8))));
    
    temp_day = temp_t - temp_time2019;
    
    if   temp_day >0
        if temp_day < 367
            rainfall2019_2020(temp_day) = rainfall;
            dt_mon = (fix(str2double(file_day(fnum).name(1:4)))-2019)*12 +...
                fix(str2double(file_day(fnum).name(5:6))) - 5;
            rainfall2019_2020mo(dt_mon) = rainfall2019_2020mo(dt_mon) + rainfall;
        else
            if temp_day < 732
                temp_day = temp_t - temp_time2020;
                rainfall2020_2021(temp_day) = rainfall;
                dt_mon = (fix(str2double(file_day(fnum).name(1:4)))-2020)*12 +...
                    fix(str2double(file_day(fnum).name(5:6))) - 5;
                rainfall2020_2021mo(dt_mon) = rainfall2020_2021mo(dt_mon) + rainfall;
            end
        end
    end
end

save('E:\CODE\OTTparsivel2_mat\Rainfall_data_non.mat',...
    'rainfall2019_2020','rainfall2019_2020mo',...
    'rainfall2020_2021','rainfall2020_2021mo');
clear

%%
%monthly rainfall
load('E:\CODE\OTTparsivel2_mat\Rainfall_data_non.mat',...
    'rainfall2019_2020mo', 'rainfall2020_2021mo');

figure;
ax1 = subplot(2,1,1);
b1 = bar(rainfall2019_2020mo,0.5);
b1.FaceColor = 'b';
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
b2.FaceColor = 'b';
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
savename = ['E:\DATA\OTTParsivel\Pictures\','Monthly Rainfall_non.png'];
saveas(gcf,savename);

%%
%daily rainfall
load('E:\CODE\OTTparsivel2_mat\Rainfall_data_non.mat',...
    'rainfall2019_2020', 'rainfall2020_2021');

figure;
ax1 = subplot(2,1,1);
b1 = bar(1:1:366,rainfall2019_2020);
b1.FaceColor = 'b';
ax1.FontSize = 10;
ax1.TickLength = [0.005 0.005];
ax1.LineWidth = 1.2;
ax1.XTick = 15:30:350;
ax1.XTickLabel = {'Jun.','Jul.','Aug.','Sept.','Oct.',...
    'Nov.','Dec.','Jan.','Feb.','Mar.','Apr.','May.'};
ax1.YLabel.String = 'Rainfall(mm)';
ax1.YLim = [0 80];
ax1.YTick = 0:20:80;
title({'Daily Rainfall','2019.06 - 2020.05'});



ax2 = subplot(2,1,2);
b2 = bar(1:1:365,rainfall2020_2021);
b2.FaceColor = 'b';
ax2.FontSize = 10;
ax2.TickLength = [0.005 0.005];
ax2.LineWidth = 1.2;
ax2.XTick = 15:30:350;
ax2.XTickLabel = {'Jun.','Jul.','Aug.','Sept.','Oct.',...
    'Nov.','Dec.','Jan.','Feb.','Mar.','Apr.','May.'};
ax2.YLabel.String = 'Rainfall(mm)';
ax2.YLim = [0 120];
ax2.YTick = 0:20:120;
title({'Daily Rainfall','2020.06 - 2021.05'});

set(gcf,'Position',[1,1,600,400]);
savename = ['E:\DATA\OTTParsivel\Pictures\','Daily Rainfall-non.png'];
saveas(gcf,savename);
