%Description:
%Diurnal variations of rain rate
% History:
% 2021.09.28 by zhangtc
clear
R1 = zeros(1,24);
R2 = zeros(1,24);
R3 = zeros(1,24);
R4 = zeros(1,24);
R5 = zeros(1,24);
R6 = zeros(1,24);

file_root = 'D:\DATA\OTTParsivel\nonQC2019-\';
file_day = dir([file_root,'*.h5']);

temp_time2019 = datenum(2019,5,31);
temp_time2020 = datenum(2020,5,31);

for fnum = 1 : length(file_day)
    fname = [file_root,file_day(fnum).name];
    rainr = h5read(fname,'/RR');
    temp_t = datenum(fix(str2double(file_day(fnum).name(1:4))),...
        fix(str2double(file_day(fnum).name(5:6))),...
        fix(str2double(file_day(fnum).name(7:8))));
    temp_day = temp_t - temp_time2019;
    tempc = zeros(1440,1);
    temps = zeros(1440,1);
    if   temp_day >0 && temp_day < 732

            R1 = R1 + sum(reshape(rainr >= 0.1 & rainr < 0.5,60,24));
            R2 = R2 + sum(reshape(rainr >= 0.5 & rainr < 2.5,60,24));
            R3 = R3 + sum(reshape(rainr >= 2.5 & rainr < 10,60,24));
            R4 = R4 + sum(reshape(rainr >= 10 & rainr < 50,60,24));
            R5 = R5 + sum(reshape(rainr >= 50 & rainr < 100,60,24));
            R6 = R6 + sum(reshape(rainr >= 100,60,24));

    end
end

figure;
ax = gca;
x = 1:24;
p = plot(x,R1,x,R2,x,R3,x,R4,x,R5,x,R6,'LineWidth',2);
ax.FontSize = 10;
ax.TickLength = [0.01 0.01];
ax.LineWidth = 1.2;
ax.XLim = [1 24];
ax.XTick = 0:3:24;
ax.XTickLabel = {'0:00','3:00','6:00','9:00','12:00','15:00','18:00','21:00','24:00'};
ax.YLim = [0 1800];
ax.YTick = 0:300:1800;
ax.YLabel.String = 'Frequency';
legend('R1','R2','R3','R4','R5','R6','Location','northwest','NumColumns',2);
title('Diurnal variations of rainrate frequency');
set(gcf,'Position',[1,1,600,300]);
% saveas(gcf,['D:\DATA\OTTParsivel\Pictures\new\','Rainrate_non.png']);
% saveas(gcf,['E:\DATA\OTTParsivel\Pictures\new\','Rainrate_non.png']);
