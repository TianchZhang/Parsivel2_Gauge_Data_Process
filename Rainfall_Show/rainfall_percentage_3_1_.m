%Description:
%Diurnal variations of rainfall percentage
% History:
% 2021.09.27 by zhangtc
clear
rain2019 = zeros(1,24);
rain2020 = zeros(1,24);

rain2019con = zeros(1,24);
rain2020con = zeros(1,24);
rain2019str = zeros(1,24);
rain2020str = zeros(1,24);
file_root = 'D:\DATA\OTTParsivel\nonQC2019-\';
file_day = dir([file_root,'*.h5']);

temp_time2019 = datenum(2019,5,31);
temp_time2020 = datenum(2020,5,31);

for fnum = 1 : length(file_day)
    tempc = zeros(1440,1);
    temps = zeros(1440,1);
    fname = [file_root,file_day(fnum).name];
    rainfh = h5read(fname,'/Rainfall_h').';
    rainr = h5read(fname,'/RR');
    typeflag = h5read(fname,'/typeflag');
    temp_t = datenum(fix(str2double(file_day(fnum).name(1:4))),...
        fix(str2double(file_day(fnum).name(5:6))),...
        fix(str2double(file_day(fnum).name(7:8))));
    
    temp_day = temp_t - temp_time2019;
    tempc = rainr./60;
    temps = rainr./60;
    tempc(typeflag ~= 1) = 0;
    temps(typeflag ~= 2) = 0;
    if   temp_day >0
        if temp_day < 367
            rain2019 = rain2019 + rainfh;
            
            rain2019con = rain2019con + sum(reshape(tempc,[60 24]));
            rain2019str = rain2019str + sum(reshape(temps,[60 24]));
        else
            if temp_day < 732
                temp_day = temp_t - temp_time2020;
                rain2020 = rain2020 + rainfh;
                
                rain2020con = rain2020con + sum(reshape(tempc,[60 24]));
                rain2020str = rain2020str + sum(reshape(temps,[60 24]));
            end
        end
    end
end
rain = (rain2019 + rain2020)./sum(rain2019 + rain2020)*100;
rain_con = (rain2019con + rain2020con)./sum(rain2019con + rain2020con)*100;
rain_str = (rain2019str + rain2020str)./sum(rain2019str + rain2020str)*100;
figure;
ax = gca;
p1 = plot(rain,'DisplayName','Total','Color','k','LineStyle','-','LineWidth',2);
hold on;
p2 = plot(rain_con,'DisplayName','Convective','Color','k','LineStyle','--','LineWidth',2);
p3 = plot(rain_str,'DisplayName','Stratiform','Color','k','LineStyle',':','LineWidth',2);
hold off;
ax.FontSize = 10;
ax.TickLength = [0.01 0.01];
ax.LineWidth = 1.2;
ax.XLim = [1 24];
ax.XTick = 0:3:24;
ax.XTickLabel = {'0:00','3:00','6:00','9:00','12:00','15:00','18:00','21:00','24:00'};
ax.YLabel.String = 'Frequency(%)';
legend('Location','north');
title('Diurnal variations of rainfall percentage');
set(gcf,'Position',[1,1,600,400]);
saveas(gcf,['D:\DATA\OTTParsivel\Pictures\new\','Rainfall_non.png']);
% saveas(gcf,['E:\DATA\OTTParsivel\Pictures\new\','Rainfall_non.png']);
