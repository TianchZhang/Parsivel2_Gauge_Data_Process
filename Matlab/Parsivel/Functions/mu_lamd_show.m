%Description:
%Scatter plots of MU-lamd relationship of convective and stratiform
% History:
% 2021.06.28 by zhangtc

function mu_lamd_show(mu_conv,lamd_conv,mu_stra,lamd_stra)

c1=colormap(jet(20));
ax1 = subplot(1,2,1);
sc1 = scatplot([lamd_conv;lamd_stra],[mu_conv;lamd_stra]);
hold on
sc2 = scatplot(lamd_stra,mu_stra);
ax1.Box = 'on';
ax1.FontSize = 12;
ax1.TickLength = [0.01 0.01];
ax1.LineWidth = 1.5;
ax1.XLim = [0 20]; 
ax1.YLim = [0 20]; 
ax1.XLabel.String = '\lambda';
ax1.YLabel.String = '\mu';
% text(2,18,'(a) Convective','FontSize',12);
% text(2,10^4,'Z = 148.80\cdotR^{1.54}','FontSize',12);
% colorbar;
% hold on
% x1 = 0:0.1:20;
% y1=148.8*x1.^1.535;
% p1=plot(x1,y1,'red');
% p1.LineWidth = 1.5;

ax2 = subplot(1,2,2);

ax2.Box = 'on';
ax2.FontSize = 12;
ax2.TickLength = [0.01 0.01];
ax2.LineWidth = 1.5;
% ax2.XLim = [0 5]; 

ax2.XLabel.String = '\lambda';
ax2.YLabel.String = '\mu';
% text(0.5,10^4.1,'(b) Stratiform','FontSize',12);
% text(1.5,10^1.8,'Z = 203.90\cdotR^{1.39}','FontSize',12);
% hold on
% x2 = 0.5:0.1:5;
% y2=203.90*x2.^1.392;
% p2=plot(x2,y2);
% p2.Color = 'red';
% p2.LineWidth = 1.5;
% 
% cb = colorbar;
% cb.Label.String = 'Data Density';
% cb.Position = [0.92 0.11 0.02 0.82];

set(gcf,'Position',[0 0 800 500]);
end