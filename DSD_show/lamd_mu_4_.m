%Description:
%Scatter plots of lamda-mu relationship of convective and stratiform
% History:
% 2022.01.05 by zhangtc
clear
load('D:\DATA\Parsivel_temporary\DSD_parameters_difseason.mat','lamd_*','mu_*');
figure
ax1=subplot(2,2,1);
c1=colormap(jet(20));
ax1 = subplot(1,2,1);
sc1 = scatplot(lamd_conv_all,mu_conv_all);
ax1.Box = 'on';
ax1.FontSize = 12;
ax1.TickLength = [0.01 0.01];
ax1.LineWidth = 1.5;
ax1.XLim = [0 20]; 
ax1.XLabel.String = '\Lambda(mm)';
ax1.YLabel.String = '\mu';
ax1.Position = [0.09 0.13 0.37 0.84];
text(0.5,23,{'(a) Convective';'\mu = -0.0152\Lambda^{2}+1.231\Lambda-1.377'},'FontSize',12);
hold on
x1 = 0.1:0.1:20;
y1= -0.0152*x1.^2+1.231*x1-1.377;
p1=plot(x1,y1,'magenta');
p1.LineWidth = 1.5;
% y2= -0.0128*x1.^2+1.027*x1-2.159;
% p1=plot(x1,y2,'g');
hold off

ax2 = subplot(1,2,2);
sc2 = scatplot(lamd_stra_all,mu_stra_all);
ax2.Box = 'on';
ax2.FontSize = 12;
ax2.TickLength = [0.01 0.01];
ax2.LineWidth = 1.5;
ax2.XLim = [0 20]; 
% ax2.YLim = [1e1 1e5];
% ax2.YScale = 'log';
ax2.XLabel.String = '\Lambda(mm)';
ax2.Position = [0.525 0.13 0.37 0.84];
text(0.5,23,{'(b) Stratiform';'\mu = -0.0128\Lambda^{2}+1.027\Lambda-2.159'},'FontSize',12);
hold on
y2= -0.0128*x1.^2+1.027*x1-2.159;
p1=plot(x1,y2,'magenta');
p1.LineWidth = 1.5;
hold off
cb = colorbar;
cb.Label.String = 'Data Density';
cb.Position = [0.905 0.13 0.02 0.84];

set(gcf,'Position',[0 0 900 400]);
saveas(gcf,'D:\DATA\OTTParsivel\Pictures\new\lamd-mu-density.png');
saveas(gcf,'E:\DATA\OTTParsivel\Pictures\lamd-mu-density.png');
%%
figure
ax1 = subplot(1,2,1);
x1 = 0.1:0.1:20;
y1= -0.009051*x1.^2+1.094*x1-0.856;
p1=plot(x1,y1,'--r');
p1.LineWidth = 1.5;
ax1.Box = 'on';
ax1.FontSize = 12;
ax1.TickLength = [0.01 0.01];
ax1.LineWidth = 1.5;
ax1.XLim = [0 20]; 
ax1.YLim = [-5 25]; 
ax1.XLabel.String = '\Lambda(mm)';
ax1.YLabel.String = '\mu';
ax1.Position = [0.09 0.13 0.37 0.84];
text(0.5,23,'(a) Convective','FontSize',12);
hold on
y2= -0.009327*x1.^2+1.175*x1-1.291;
p2=plot(x1,y2,'--b');
p2.LineWidth = 1.5;
y3=0.01584*x1.^2+0.9979*x1-0.9752;
p3=plot(x1,y3,'--g');
p3.LineWidth = 1.5;
y4= -0.0571*x1.^2+1.747*x1-3.701;
p4=plot(x1,y4,'--c');
p4.LineWidth = 1.5;
y5= -0.0152*x1.^2+1.231*x1-1.377;
p5=plot(x1,y5,'k');
p5.LineWidth = 1.5;
hold off
legend('Spr.','Sum.','Aut.','Win.','Total','Location','Southeast');

ax2 = subplot(1,2,2);
x2 = 0.1:0.1:20;
y1= -0.00595*x1.^2+0.8841*x1-1.594;
p1=plot(x2,y1,'--r');
p1.LineWidth = 1.5;
ax2.Box = 'on';
ax2.FontSize = 12;
ax2.TickLength = [0.01 0.01];
ax2.LineWidth = 1.5;
ax2.XLim = [0 20]; 
ax2.YLim = [-5 25]; 
ax2.XLabel.String = '\Lambda(mm)';
ax2.Position = [0.525 0.13 0.37 0.84];
text(0.5,23,'(b) Stratiform','FontSize',12);
hold on
y2= -0.003656*x1.^2+0.7572*x1-0.1711;
p2=plot(x2,y2,'--b');
p2.LineWidth = 1.5;
y3=-0.003171*x2.^2+0.7052*x2-0.9039;
p3=plot(x2,y3,'--g');
p3.LineWidth = 1.5;
y4= -0.002779*x1.^2+0.8261*x1-1.604;
p4=plot(x2,y4,'--c');
p4.LineWidth = 1.5;
y5=-0.0128*x1.^2+1.027*x1-2.159;
p5=plot(x2,y5,'k');
p5.LineWidth = 1.5;
hold off
legend('Spr.','Sum.','Aut.','Win.','Total','Location','Southeast');
set(gcf,'Position',[0 0 900 400]);
saveas(gcf,'D:\DATA\OTTParsivel\Pictures\new\lamd-mu-fit.png');
saveas(gcf,'E:\DATA\OTTParsivel\Pictures\lamd-mu-fit.png');
%%
% lamdcwin = [lamd_conv_2019win;lamd_conv_2020win];
% lamdcaut = [lamd_conv_2019aut;lamd_conv_2020aut];
% lamdcspr = [lamd_conv_2019spr;lamd_conv_2020spr];
% lamdcsum = [lamd_conv_2019sum;lamd_conv_2020sum];
% lamdswin = [lamd_stra_2019win;lamd_stra_2020win];
% lamdsaut = [lamd_stra_2019aut;lamd_stra_2020aut];
% lamdsspr = [lamd_stra_2019spr;lamd_stra_2020spr];
% lamdssum = [lamd_stra_2019sum;lamd_stra_2020sum];
% mucwin = [mu_conv_2019win;mu_conv_2020win];
% mucspr = [mu_conv_2019spr;mu_conv_2020spr];
% mucaut = [mu_conv_2019aut;mu_conv_2020aut];
% musaut = [mu_stra_2019aut;mu_stra_2020aut];
% mucsum = [mu_conv_2019sum;mu_conv_2020sum];
% mussum = [mu_stra_2019sum;mu_stra_2020sum];
% musspr = [mu_stra_2019spr;mu_stra_2020spr];
% muswin = [mu_stra_2019win;mu_stra_2020win];
