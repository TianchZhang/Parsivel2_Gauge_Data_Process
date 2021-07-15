%Description:
%Scatter plots of Nw_Dm relationship of convective and stratiform
% History:
% 2021.04.28 by zhangtc

function Nw_Dm_show(Nw_conv,Dm_conv,Nw_stra,Dm_stra)

sc1 = scatter(Dm_conv,Nw_conv);
sc1.Marker = '.';
sc1.MarkerEdgeColor = [0 0.75 1];
hold on
sc2 = scatter(Dm_stra,Nw_stra);
sc2.Marker = '.';
sc2.MarkerEdgeColor = 'green';

ax = gca;
ax.Box = 'on';
ax.FontSize = 12;
ax.TickLength = [0.01 0.01];
ax.LineWidth = 1.5;
ax.XLabel.String = 'Dm(mm)';
ax.YLabel.String = 'log_{10}Nw(mm^{-1}m^{-3})';
ax.XLim = [0 3.0]; 
ax.YLim = [2 6];
legend('Convective','Stratiform');
rectangle('Position',[1.5 4.0 0.25 0.5],'LineWidth',2,'EdgeColor',[0.6 0.6 0.6]);
rectangle('Position',[2.0 3.0 0.75 0.5],'LineWidth',2,'EdgeColor',[0.6 0.6 0.6]);
text(1.5,4.8,{'Bringi et al.(2003)','Maritime con.'},'FontSize',12,'Color',[0.4 0.4 0.4]);
text(2.0,2.7,{'Bringi et al.(2003)','Continental con.'},'FontSize',12,'Color',[0.4 0.4 0.4]);

% line([0 3.9],[3.9 3.9],'Color',[0.6 0.6 0.6],'LineStyle','--','LineWidth',2);
% text(0.1,4.05,'MP-Nw','FontSize',12);
% hold on
% x= 0.5:0.1:2.5;
% y = -1.6*x+6.5;
% plot(x,y,'Color',[0.6 0.6 0.6],'LineStyle','--','LineWidth',2);
set(gcf,'Position',[0 0 600 400]);

end