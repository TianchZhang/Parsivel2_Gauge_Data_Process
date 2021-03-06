%Description:
%seasonally variations of precipitaion frequency
% History:
% 2021.10.11 by zhangtc
clear
mons = {'Jun.','Jul.','Aug.','Sept.','Oct.',...
    'Nov.','Dec.','Jan.','Feb.','Mar.','Apr.','May.'};

sum2019c = zeros(1,24);
aut2019c = zeros(1,24);
win2019c = zeros(1,24);
spr2019c = zeros(1,24);
sum2020c = zeros(1,24);
aut2020c = zeros(1,24);
win2020c = zeros(1,24);
spr2020c = zeros(1,24);

sum2019s = zeros(1,24);
aut2019s = zeros(1,24);
win2019s = zeros(1,24);
spr2019s = zeros(1,24);
sum2020s = zeros(1,24);
aut2020s = zeros(1,24);
win2020s = zeros(1,24);
spr2020s = zeros(1,24);
file_root = 'D:\DATA\OTTParsivel\nonQC2019-\';
file_day = dir([file_root,'*.h5']);

temp_time2019 = datenum(2019,5,31);
temp_time2020 = datenum(2020,5,31);

for fnum = 1 : length(file_day)
    tempc = zeros(1440,1);
    temps = zeros(1440,1);
    fname = [file_root,file_day(fnum).name];
    rainflag = h5read(fname,'/rainflag');
    typeflag = h5read(fname,'/typeflag');
    temp_t = datenum(fix(str2double(file_day(fnum).name(1:4))),...
        fix(str2double(file_day(fnum).name(5:6))),...
        fix(str2double(file_day(fnum).name(7:8))));
    mkey = str2double(file_day(fnum).name(5:6));
    
    temp_day = temp_t - temp_time2019;
    tempc(typeflag == 1) = 1;
    temps(typeflag == 2) = 1;
    if   temp_day >0
        if temp_day < 367
            switch mkey
                case {6,7,8}
                    sum2019c = sum2019c + sum(reshape(tempc,[60 24]));
                    sum2019s = sum2019s + sum(reshape(temps,[60 24]));
                case {9,10,11}
                    aut2019c = aut2019c + sum(reshape(tempc,[60 24]));
                    aut2019s = aut2019s + sum(reshape(temps,[60 24]));
                case {12,1,2}
                    win2019c = win2019c + sum(reshape(tempc,[60 24]));
                    win2019s = win2019s + sum(reshape(temps,[60 24]));
                case {3,4,5}
                    spr2019c = spr2019c + sum(reshape(tempc,[60 24]));
                    spr2019s = spr2019s + sum(reshape(temps,[60 24]));
            end
        else
            if temp_day < 732
                switch mkey
                    case {6,7,8}
                        sum2020c = sum2020c + sum(reshape(tempc,[60 24]));
                        sum2020s = sum2020s + sum(reshape(temps,[60 24]));
                    case {9,10,11}
                        aut2020c = aut2020c + sum(reshape(tempc,[60 24]));
                        aut2020s = aut2020s + sum(reshape(temps,[60 24]));
                    case {12,1,2}
                        win2020c = win2020c + sum(reshape(tempc,[60 24]));
                        win2020s = win2020s + sum(reshape(temps,[60 24]));
                    case {3,4,5}
                        spr2020c = spr2020c + sum(reshape(tempc,[60 24]));
                        spr2020s = spr2020s + sum(reshape(temps,[60 24]));
                end
            end
        end
    end
end

figure(1);
subplot(2,1,1);
ax1 = gca;
x = 1:24;
p = plot(x,spr2019c,x,sum2019c,x,aut2019c,x,win2019c,'LineWidth',2);
ax1.FontSize = 10;
ax1.TickLength = [0.01 0.01];
ax1.LineWidth = 1.2;
ax1.XLim = [1 24];
ax1.YLim = [0 100];
ax1.XTick = 0:3:24;
ax1.XTickLabel = {'0:00','3:00','6:00','9:00','12:00','15:00','18:00','21:00','24:00'};
ax1.YLabel.String = 'Frequency';
text(1.5,90,'(a)2019');
legend('Spr.','Sum.','Aut.','Win.','Location','north','NumColumns',2);
title({'Seasonally variations of precipitation frequency','Convective'});
subplot(2,1,2);
ax2 = gca;
p = plot(x,spr2020c,x,sum2020c,x,aut2020c,x,win2020c,'LineWidth',2);
ax2.FontSize = 10;
ax2.TickLength = [0.01 0.01];
ax2.LineWidth = 1.2;
ax2.XLim = [1 24];
ax2.YLim = [0 250];
ax2.XTick = 0:3:24;
ax2.XTickLabel = {'0:00','3:00','6:00','9:00','12:00','15:00','18:00','21:00','24:00'};
ax2.YLabel.String = 'Frequency';
text(1.5,225,'(b)2020');
legend('Spr.','Sum.','Aut.','Win.','Location','northeast','NumColumns',2);
set(gcf,'Position',[1,1,600,400]);
% saveas(gcf,['D:\DATA\OTTParsivel\Pictures\new\','con_Rainon_non_Seanson.png']);

figure(2);
subplot(2,1,1);
ax1 = gca;
x = 1:24;
p = plot(x,spr2019s,x,sum2019s,x,aut2019s,x,win2019s,'LineWidth',2,'LineStyle','-.');
ax1.FontSize = 10;
ax1.TickLength = [0.01 0.01];
ax1.LineWidth = 1.2;
ax1.XLim = [1 24];
ax1.XTick = 0:3:24;
ax1.YLim = [0 250];
ax1.XTickLabel = {'0:00','3:00','6:00','9:00','12:00','15:00','18:00','21:00','24:00'};
ax1.YLabel.String = 'Frequency';
text(1.5,225,'(a)2019');
legend('Spr.','Sum.','Aut.','Win.','Location','north','NumColumns',2);
title({'Seasonally variations of precipitation frequency','Stratiform'});
subplot(2,1,2);
ax2 = gca;
p = plot(x,spr2020s,x,sum2020s,x,aut2020s,x,win2020s,'LineWidth',2,'LineStyle','-.');
ax2.FontSize = 10;
ax2.TickLength = [0.01 0.01];
ax2.LineWidth = 1.2;
ax2.XLim = [1 24];
ax2.XTick = 0:3:24;
ax2.YLim = [0 350];
ax2.XTickLabel = {'0:00','3:00','6:00','9:00','12:00','15:00','18:00','21:00','24:00'};
ax2.YLabel.String = 'Frequency';
text(1.5,315,'(b)2020');
legend('Spr.','Sum.','Aut.','Win.','Location','northeast','NumColumns',2);
set(gcf,'Position',[1,1,600,400]);
% saveas(gcf,['D:\DATA\OTTParsivel\Pictures\new\','str_Rainon_non_Season.png']);


% clear