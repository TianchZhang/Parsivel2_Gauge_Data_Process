
%Description:
%show the number concentration of raindrops,rain rate and rainfall per minute everyday
% History:
% 2021.04.28 by zhangtc

% savepath ='E:\DATA\OTTParsivel\Pictures\DSD-QC\';
% file_root = 'E:\DATA\OTTParsivel\QC2019-\';
% load('E:\CODE\OTTparsivel2_mat\DSD_parameters.mat','central_dia_qc');
% load('E:\CODE\OTTparsivel2_mat\DSD_parameters.mat', 'dia_bandwidth_qc');
savepath ='D:\DATA\OTTParsivel\Pictures\DSD-nonQC\';
file_root = 'D:\DATA\OTTParsivel\nonQC2019-\';
load('D:\DATA\Parsivel_temporary\DSD_parameters.mat','central_diameter');
load('D:\DATA\Parsivel_temporary\DSD_parameters.mat', 'diameter_bandwidth');

temp_centr_dia = central_diameter;
temp_dia_bandw = diameter_bandwidth;

file_day = dir([file_root,'*.h5']);
for fnum = 433 : length(file_day)
    fname = [file_root,file_day(fnum).name];
    ND = h5read(fname,'/ND');
    RR = h5read(fname,'/RR');
    Rainfall = RR ./ 60;
    
    figure;
    ax1 = subplot(2,1,1);
    tar1 = pcolor(1:1:1440,temp_centr_dia - 0.5 * temp_dia_bandw,log10(ND.'));
    shading flat
    ax1.Layer = 'top';
    ax1.FontSize = 12;
    ax1.TickLength = [0.01 0.01];
    ax1.LineWidth = 1.2;
   
    ax1.XLim = [0 1440];
    ax1.XTick = 0:180:1440;
    ax1.XTickLabel = {'00:00', '03:00', '06:00', '09:00', '12:00', '15:00', '18:00', '21:00', '24:00'};
    ax1.XGrid = 'on';
    
    ax1.YLim = [0 6];
    ax1.YTick = 0:2:6;
    ax1.YTickLabel = {'0', '2', '4', '6'};
    ax1.YLabel.String = 'Diameter(mm)';
    ax1.YGrid = 'on';
    
% %     
    colormap([[1,1,1];jet(8);[0.49,0.18,0.56]]);
    c1 = colorbar;
    c1.Label.String = 'log_{10}N(D)';
    caxis([-0.51 4.5]);
    c1.FontSize = 12;
    c1.Ticks = [0 0.5 1.0 1.5 2.0 2.5 3.0 3.5 4.0];
    c1.TickLabels = {'0','0.5','1.0','1.5','2.0','2.5','3.0','3.5','4.0'};
    title({'Time series of DSD and Rain Rate'; file_day(fnum).name(1:8)})    
    
    ax2 = subplot(2,1,2);
    ax2.FontSize = 12;
    ax2.TickLength = [0.01 0.01];
    ax2.LineWidth = 1.2;
    ax2.Position = [0.127 0.1 0.692 0.38];
    
    yyaxis(ax2,'left');
    tempp = plot(ax2,1:1:1440,RR);
    ax2.YLim = [0 ceil(max(RR))*1.2];
    ax2.YLabel.String = 'Rain Rate(mm\cdoth_{-1})';
    ax2.XLim = [0 1440];
    ax2.XTick = 0:180:1440;
    ax2.XTickLabel = {'00:00', '03:00', '06:00', '09:00', '12:00', '15:00', '18:00', '21:00', '24:00'};
    text(100,ceil(max(RR))*1.2*0.8,{'Max Rain Rate',sprintf('%8.2f',round(max(RR),2))});
 
    yyaxis(ax2,'right');
    temps = bar(ax2,1:1:1440,Rainfall);
    ax2.YLabel.String = 'Rainfall(mm)';
    ax2.XLabel.String = 'Time(UTC+8)';
    tempY = max(Rainfall) * 1.2;
%     if max(Rainfall)-floor(max(Rainfall)) < 0.5
%         tempY = floor(max(Rainfall))+0.5;
%     else
%         tempY = ceil(max(Rainfall));
%     end
    ax2.YLim = [0 tempY];
    
    ax2.XLim = [0 1440];
    ax2.XTick = 0:180:1440;
    ax2.XTickLabel = {'00:00', '03:00', '06:00', '09:00', '12:00', '15:00', '18:00', '21:00', '24:00'};
    text(1170,tempY*0.8,{'Total Rainfall',sprintf('%8.2f',round(sum(Rainfall),2))});

    scrsz = get(0,'ScreenSize');  % 是为了获得屏幕大小，Screensize是一个4元素向量[left,bottom, width, height]
    set(gcf,'Position',0.5 * scrsz);    % 用获得的screensize向量设置figure的position属性，实现最大化的目的
    
    savename = [savepath,file_day(fnum).name(1:8),'.png'];
    saveas(gcf,savename);
    saveas(gcf,['E:\DATA\OTTParsivel\Pictures\DSD-nonQC\',file_day(fnum).name(1:8),'.png']);
    close
end

