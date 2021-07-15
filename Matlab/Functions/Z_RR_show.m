%Description:
%Scatter plots of Z-RR relationship of convective and stratiform
% History:
% 2021.06.28 by zhangtc


function Z_RR_show(Z_conv,RR_conv,Z_stra,RR_stra)

c1=colormap(jet(20));
ax1 = subplot(1,2,1);
sc1 = scatplot(RR_conv,Z_conv);
ax1.Box = 'on';
ax1.FontSize = 12;
ax1.TickLength = [0.01 0.01];
ax1.LineWidth = 1.5;
ax1.XLim = [0 150]; 
ax1.YScale = 'log';
ax1.XLabel.String = 'R(mm\cdoth^{-1})';
ax1.YLabel.String = 'Z(mm^{6}\cdotm^{-3})';
text(10,10^6.85,'(a) Convective','FontSize',12);
text(50,10^4,'Z = 148.80\cdotR^{1.54}','FontSize',12);
hold on
x1 = 5:0.1:150;
y1=148.8*x1.^1.535;
p1=plot(x1,y1,'red');
p1.LineWidth = 1.5;

ax2 = subplot(1,2,2);
sc2 = scatplot(RR_stra,Z_stra);
ax2.Box = 'on';
ax2.FontSize = 12;
ax2.TickLength = [0.01 0.01];
ax2.LineWidth = 1.5;
ax2.XLim = [0 5]; 
ax2.YScale = 'log';
ax2.XLabel.String = 'R(mm\cdoth^{-1})';
ax2.YLabel.String = 'Z(mm^{6}\cdotm^{-3})';
text(0.5,10^4.1,'(b) Stratiform','FontSize',12);
text(1.5,10^1.8,'Z = 203.90\cdotR^{1.39}','FontSize',12);
hold on
x2 = 0.5:0.1:5;
y2=203.90*x2.^1.392;
p2=plot(x2,y2);
p2.Color = 'red';
p2.LineWidth = 1.5;

cb = colorbar;
cb.Label.String = 'Data Density';
cb.Position = [0.92 0.11 0.02 0.82];

set(gcf,'Position',[0 0 800 500]);
end