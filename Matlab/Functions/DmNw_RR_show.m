%Description:
%Scatter plots of Dm-RR relationship of convective and stratiform
% History:
% 2021.05.20 by zhangtc

function DmNw_RR_show(Dm_conv,Nw_conv,RR_conv,Dm_stra,Nw_stra,RR_stra)
c1=colormap(jet(20));
ax1 = subplot(2,2,1);
sc1 = scatplot(RR_conv,Dm_conv);
ax1.Box = 'on';
ax1.FontSize = 12;
ax1.TickLength = [0.01 0.01];
ax1.LineWidth = 1.5;
ax1.XLim = [0 150]; 
ax1.YLim = [1 4];
% ax1.XLabel.String = 'R(mm\cdoth^{-1})';
ax1.YLabel.String = 'Dm(mm)';
text(70,3.8,'(a) Convective','FontSize',12);
text(70,3.4,'Dm = 0.92\cdotR^{0.21}','FontSize',12);
hold on
x1 = 5:0.1:150;
y1=0.9208*x1.^0.2115;
p1=plot(x1,y1,'blue');
p1.LineWidth = 1.5;

ax2 = subplot(2,2,2);
sc2 = scatplot(RR_stra,Dm_stra);
ax2.Box = 'on';
ax2.FontSize = 12;
ax2.TickLength = [0.01 0.01];
ax2.LineWidth = 1.5;
ax2.XLim = [0 5]; 
ax2.YLim = [0 4];
% ax2.XLabel.String = 'R(mm\cdoth^{-1})';
% ax2.YLabel.String = 'Dm(mm)';
text(2.5,3.8,'(b) Stratiform','FontSize',12);
text(2.5,3.4,'Dm = 0.97\cdotR^{0.23}','FontSize',12);
hold on
x2 = 0.5:0.01:5;
y2=0.9585*x2.^0.2458;
p2=plot(x2,y2,'Color',[0 0.4 0]);
p2.LineWidth = 1.5;

ax3 = subplot(2,2,3);
sc3 = scatplot(RR_conv,Nw_conv);
sc3.Marker = '.';
sc3.MarkerEdgeColor = [0 0.75 1];
ax3.Box = 'on';
ax3.FontSize = 12;
ax3.TickLength = [0.01 0.01];
ax3.LineWidth = 1.5;
ax3.XLim = [0 150]; 
ax3.YLim = [2 6];
ax3.XLabel.String = 'R(mm\cdoth^{-1})';
ax3.YLabel.String = 'log_{10}Nw(mm^{-1}m^{-3})';
text(70,5.7,'(a) Convective','FontSize',12);
text(70,5.2,'Nw = 3.96\cdotR^{0.003}','FontSize',12);
hold on
y3=4.011*x1.^-0.001434;
p3=plot(x1,y3,'blue');
p3.LineWidth = 1.5;


ax4 = subplot(2,2,4);
sc4 = scatplot(RR_stra,Nw_stra);
ax4.Box = 'on';
ax4.FontSize = 12;
ax4.TickLength = [0.01 0.01];
ax4.LineWidth = 1.5;
ax4.XLim = [0 5]; 
ax4.YLim = [2 6];
ax4.XLabel.String = 'R(mm\cdoth^{-1})';
text(2.6,5.8,'(b) Stratiform','FontSize',12);
text(2.6,5.3,'Nw = 3.89\cdotR^{-0.01}','FontSize',12);
hold on
y4=3.944*x2.^-0.02199;
p4=plot(x2,y4,'Color',[0 0.4 0]);
p4.LineWidth = 1.5;

cb = colorbar;
cb.Label.String = 'Data Density';
cb.Position = [0.92 0.11 0.02 0.82];
set(gcf,'Position',[0 0 800 500]);

end