%Description:
%Scatter plots of Nw_Dm relationship of convective and stratiform events
% History:
% 2021.06.21 by zhangtc

function Nw_Dm_ev_show(Nw_conv_ev,Dm_conv_ev,Nw_stra_ev,Dm_stra_ev)

e2=errorbar(Dm_stra_ev(:,1),Nw_stra_ev(:,1),Nw_stra_ev(:,2),Nw_stra_ev(:,2),Dm_stra_ev(:,2),Dm_stra_ev(:,2),'o');
e2.Marker = 'square';
e2.MarkerSize = 10;
e2.Color = [0 0.4 0];
e2.MarkerFaceColor=[0 0.4 0];
e2.CapSize = 10;

if ~isempty(Nw_conv_ev)
    hold on
    e1=errorbar(Dm_conv_ev(:,1),Nw_conv_ev(:,1),Nw_conv_ev(:,2),Nw_conv_ev(:,2),Dm_conv_ev(:,2),Dm_conv_ev(:,2),'o');
    e1.Marker = 'square';
    e1.MarkerSize = 10;
    e1.Color = [0 0 0.8];
    e1.MarkerFaceColor=[0 0 0.8];
    e1.CapSize = 10;
    legend([e2,e1],'Stratiform','Convective');
else
    legend(e2,'Stratiform');
end


ax = gca;
ax.Box = 'on';
ax.FontSize = 12;
ax.TickLength = [0.01 0.01];
ax.LineWidth = 1.5;
ax.XLabel.String = 'Dm(mm)';
ax.YLabel.String = 'log_{10}Nw(mm^{-1}m^{-3})';
ax.XLim = [0 3.0];
ax.YLim = [2 6];

rectangle('Position',[1.5 4.0 0.25 0.5],'LineWidth',2,'EdgeColor',[0.6 0.6 0.6]);
rectangle('Position',[2.0 3.0 0.75 0.5],'LineWidth',2,'EdgeColor',[0.6 0.6 0.6]);
text(1.5,4.8,{'Bringi et al.(2003)','Maritime con.'},'FontSize',12,'Color',[0.4 0.4 0.4]);
text(2.0,2.7,{'Bringi et al.(2003)','Continental con.'},'FontSize',12,'Color',[0.4 0.4 0.4]);
% line([0 3.9],[3.9 3.9],'Color',[0.6 0.6 0.6],'LineStyle','--','LineWidth',2);
% text(0.1,4.05,'MP-Nw','FontSize',12);
set(gcf,'Position',[0 0 600 400]);

end