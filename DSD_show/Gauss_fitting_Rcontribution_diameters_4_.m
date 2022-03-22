%Description:
%Gauss fitting of contribution of Rs in different diameters
%save_R_Ds_.m needed
% History:
% 2022.02.15 by zhangtc

load('D:\DATA\Parsivel_temporary\DSD_parameters.mat','central_diameter');
tempx = central_diameter(3:23).';

%%
%C1
figure
scrsz = get(0,'ScreenSize');
set(gcf,'Position',scrsz);
[ff1,gof1]=fit(central_diameter(3:23).',C1(:,1),'gauss1');
subplot(2,2,1)
plot(ff1,central_diameter(3:23).',C1(:,1));
hold on
for num = 2:length(C1(1,:))
    tempy = C1(:,num);
    [ff1,gof1] = fit(tempx,tempy,'gauss1');
        plot(ff1,tempx,tempy);
        gof1.rsquare
end
hold off
legend('off')
title('C1-Gauss1');
[ff2,gof2]=fit(central_diameter(3:23).',C1(:,1),'gauss2');
subplot(2,2,2)
plot(ff2,central_diameter(3:23).',C1(:,1));
hold on
for num = 2:length(C1(1,:))
    tempy = C1(:,num);
    [ff2,gof2] = fit(tempx,tempy,'gauss2');
    tempyy = ff2.a1.*exp(-((tempx-ff2.b1)/ff2.c1).^2)+ff2.a2.*exp(-((tempx-ff2.b2)/ff2.c2).^2);
    if ff2.a1<50 & ff2.a2 <50 & ff2.a1 >5 &ff2.a2 >5
        plot(ff2,tempx,tempy);
        gof2.rsquare
    end
end
hold off
legend('off')
title('C1-Gauss2');
subplot(2,2,3)
plot(tempx,C1);
subplot(2,2,4)
plot(tempx,C1sum);
saveas(gcf,'D:\DATA\OTTParsivel\Pictures\c1gs.png');
saveas(gcf,'D:\DATA\OTTParsivel\Pictures\c1gs.fig');
%%
%C2
figure
scrsz = get(0,'ScreenSize');
set(gcf,'Position',scrsz);
ff1=fit(central_diameter(3:23).',C2(:,1),'gauss1');
subplot(2,2,1)
plot(ff1,central_diameter(3:23).',C2(:,1));
hold on
for num = 2:length(C2(1,:))
    tempy = C2(:,num);
    ff1 = fit(tempx,tempy,'gauss1');
    plot(ff1,tempx,tempy);
end
hold off
legend('off')
title('C2-Gauss1');
ff2=fit(central_diameter(3:23).',C2(:,1),'gauss2');
subplot(2,2,2)
plot(ff2,central_diameter(3:23).',C2(:,1));
hold on
for num = 2:length(C2(:,1))
    tempy = C2(:,num);
    ff2 = fit(tempx,tempy,'gauss2');
    tempyy = ff2.a1.*exp(-((tempx-ff2.b1)/ff2.c1).^2)+ff2.a2.*exp(-((tempx-ff2.b2)/ff2.c2).^2);
    if ff2.a1<50 & ff2.a2 <50 & ff2.a1 >5 &ff2.a2 >5
        plot(ff2,tempx,tempy);
    end
end
hold off
legend('off')
title('C2-Gauss2');
subplot(2,2,3)
plot(tempx,C2);
subplot(2,2,4)
plot(tempx,C2sum);
saveas(gcf,'D:\DATA\OTTParsivel\Pictures\c2gs.png');
saveas(gcf,'D:\DATA\OTTParsivel\Pictures\c2gs.fig');
%
%C3
figure
scrsz = get(0,'ScreenSize');
set(gcf,'Position',scrsz);
ff1=fit(central_diameter(3:23).',C3(:,1),'gauss1');
subplot(2,2,1)
plot(ff1,central_diameter(3:23).',C3(:,1));
hold on
for num = 2:length(C3(1,:))
    tempy = C3(:,num);
    ff1 = fit(tempx,tempy,'gauss1');
    plot(ff1,tempx,tempy);
end
hold off
legend('off')
title('C3-Gauss1');
ff2=fit(central_diameter(3:23).',C3(:,1),'gauss2');
subplot(2,2,2)
plot(ff2,central_diameter(3:23).',C3(:,1));
hold on
for num = 2:length(C3(1,:))
    tempy = C3(:,num);
    ff2 = fit(tempx,tempy,'gauss2');
    tempyy = ff2.a1.*exp(-((tempx-ff2.b1)/ff2.c1).^2)+ff2.a2.*exp(-((tempx-ff2.b2)/ff2.c2).^2);
    if ff2.a1<50 & ff2.a2 <50 & ff2.a1 >5 &ff2.a2 >5
        plot(ff2,tempx,tempy);
    end
end
hold off
legend('off')
title('C3-Gauss2');
subplot(2,2,3)
plot(tempx,C3);
subplot(2,2,4)
plot(tempx,C3sum);
saveas(gcf,'D:\DATA\OTTParsivel\Pictures\c3gs.png');
saveas(gcf,'D:\DATA\OTTParsivel\Pictures\c3gs.fig');
%
%C4
figure
scrsz = get(0,'ScreenSize');
set(gcf,'Position',scrsz);
ff1=fit(central_diameter(3:23).',C4(:,1),'gauss1');
subplot(2,2,1)
plot(ff1,central_diameter(3:23).',C4(:,1));
hold on
for num = 2:length(C4(1,:))
    tempy = C4(:,num);
    ff1 = fit(tempx,tempy,'gauss1');
    plot(ff1,tempx,tempy);
end
hold off
legend('off')
title('C4-Gauss1');
ff2=fit(central_diameter(3:23).',C4(:,1),'gauss2');
subplot(2,2,2)
plot(ff2,central_diameter(3:23).',C4(:,1));
hold on
for num = 2:length(C4(1,:))
    tempy = C4(:,num);
    ff2 = fit(tempx,tempy,'gauss2');
    tempyy = ff2.a1.*exp(-((tempx-ff2.b1)/ff2.c1).^2)+ff2.a2.*exp(-((tempx-ff2.b2)/ff2.c2).^2);
    if ff2.a1<50 & ff2.a2 <50 & ff2.a1 >5 &ff2.a2 >5
        plot(ff2,tempx,tempy);
    end
end
hold off
legend('off')
title('C4-Gauss2');
subplot(2,2,3)
plot(tempx,C4);
subplot(2,2,4)
plot(tempx,C4sum);
saveas(gcf,'D:\DATA\OTTParsivel\Pictures\c4gs.png');
saveas(gcf,'D:\DATA\OTTParsivel\Pictures\c4gs.fig');
%
%C5
figure
scrsz = get(0,'ScreenSize');
set(gcf,'Position',scrsz);
ff1=fit(central_diameter(3:23).',C5(:,1),'gauss1');
subplot(2,2,1)
plot(ff1,central_diameter(3:23).',C5(:,1));
hold on
for num = 2:length(C5(1,:))
    tempy = C5(:,num);
    ff1 = fit(tempx,tempy,'gauss1');
    plot(ff1,tempx,tempy);
end
hold off
legend('off')
title('C5-Gauss1');
ff2=fit(central_diameter(3:23).',C5(:,1),'gauss2');
subplot(2,2,2)
plot(ff2,central_diameter(3:23).',C5(:,1));
hold on
for num = 2:length(C5(1,:))
    tempy = C5(:,num);
    ff2 = fit(tempx,tempy,'gauss2');
    tempyy = ff2.a1.*exp(-((tempx-ff2.b1)/ff2.c1).^2)+ff2.a2.*exp(-((tempx-ff2.b2)/ff2.c2).^2);
    if ff2.a1<50 & ff2.a2 <50 & ff2.a1 >5 &ff2.a2 >5
        plot(ff2,tempx,tempy);
    end
end
hold off
legend('off')
title('C5-Gauss2');
subplot(2,2,3)
plot(tempx,C5);
subplot(2,2,4)
plot(tempx,C5sum);
saveas(gcf,'D:\DATA\OTTParsivel\Pictures\c5gs.png');
saveas(gcf,'D:\DATA\OTTParsivel\Pictures\c5gs.fig');
%
%C6
figure
scrsz = get(0,'ScreenSize');
set(gcf,'Position',scrsz);
ff1=fit(central_diameter(3:23).',C6(:,1),'gauss1');
subplot(2,2,1)
plot(ff1,central_diameter(3:23).',C6(:,1));
hold on
for num = 2:length(C6(1,:))
    tempy = C6(:,num);
    ff1 = fit(tempx,tempy,'gauss1');
    plot(ff1,tempx,tempy);
end
hold off
legend('off')
title('C6-Gauss1');
ff2=fit(central_diameter(3:23).',C6(:,1),'gauss2');
subplot(2,2,2)
plot(ff2,central_diameter(3:23).',C6(:,1));
hold on
for num = 2:length(C6(1,:))
    tempy = C6(:,num);
    ff2 = fit(tempx,tempy,'gauss2');
    tempyy = ff2.a1.*exp(-((tempx-ff2.b1)/ff2.c1).^2)+ff2.a2.*exp(-((tempx-ff2.b2)/ff2.c2).^2);
    if ff2.a1<50 & ff2.a2 <50 & ff2.a1 >5 &ff2.a2 >5
        plot(ff2,tempx,tempy);
    end
end
hold off
legend('off')
title('C6-Gauss2');
subplot(2,2,3)
plot(tempx,C6);
subplot(2,2,4)
plot(tempx,C6sum);
saveas(gcf,'D:\DATA\OTTParsivel\Pictures\c6gs.png');
saveas(gcf,'D:\DATA\OTTParsivel\Pictures\c6gs.fig');
%
%C7
figure
scrsz = get(0,'ScreenSize');
set(gcf,'Position',scrsz);
ff1=fit(central_diameter(3:23).',C7(:,1),'gauss1');
subplot(2,2,1)
plot(ff1,central_diameter(3:23).',C7(:,1));
hold on
for num = 2:length(C7(1,:))
    tempy = C7(:,num);
    ff1 = fit(tempx,tempy,'gauss1');
    plot(ff1,tempx,tempy);
end
hold off
legend('off')
title('C7-Gauss1');
ff2=fit(central_diameter(3:23).',C7(:,1),'gauss2');
subplot(2,2,2)
plot(ff2,central_diameter(3:23).',C7(:,1));
hold on
for num = 2:length(C7(1,:))
    tempy = C7(:,num);
    ff2 = fit(tempx,tempy,'gauss2');
    tempyy = ff2.a1.*exp(-((tempx-ff2.b1)/ff2.c1).^2)+ff2.a2.*exp(-((tempx-ff2.b2)/ff2.c2).^2);
    if ff2.a1<50 & ff2.a2 <50 & ff2.a1 >5 &ff2.a2 >5
        plot(ff2,tempx,tempy);
    end
end
hold off
legend('off')
title('C7-Gauss2');
subplot(2,2,3)
plot(tempx,C7);
subplot(2,2,4)
plot(tempx,C7sum);
saveas(gcf,'D:\DATA\OTTParsivel\Pictures\c7gs.png');
saveas(gcf,'D:\DATA\OTTParsivel\Pictures\c7gs.fig');
%
%C8
figure
scrsz = get(0,'ScreenSize');
set(gcf,'Position',scrsz);
ff1=fit(central_diameter(3:23).',C8(:,1),'gauss1');
subplot(2,2,1)
plot(ff1,central_diameter(3:23).',C8(:,1));
hold on
for num = 2:length(C8(1,:))
    tempy = C8(:,num);
    ff1 = fit(tempx,tempy,'gauss1');
    plot(ff1,tempx,tempy);
end
hold off
legend('off')
title('C8-Gauss1');
ff2=fit(central_diameter(3:23).',C8(:,1),'gauss2');
subplot(2,2,2)
plot(ff2,central_diameter(3:23).',C8(:,1));
hold on
for num = 2:length(C8(1,:))
    tempy = C8(:,num);
    ff2 = fit(tempx,tempy,'gauss2');
    tempyy = ff2.a1.*exp(-((tempx-ff2.b1)/ff2.c1).^2)+ff2.a2.*exp(-((tempx-ff2.b2)/ff2.c2).^2);
    if ff2.a1<50 & ff2.a2 <50 & ff2.a1 >5 &ff2.a2 >5
        plot(ff2,tempx,tempy);
    end
end
hold off
legend('off')
title('C8-Gauss2');
subplot(2,2,3)
plot(tempx,C8);
subplot(2,2,4)
plot(tempx,C8sum);
saveas(gcf,'D:\DATA\OTTParsivel\Pictures\c8gs.png');
saveas(gcf,'D:\DATA\OTTParsivel\Pictures\c8gs.fig');
%
%C9
figure
scrsz = get(0,'ScreenSize');
set(gcf,'Position',scrsz);
ff1=fit(central_diameter(3:23).',C9(:,1),'gauss1');
subplot(2,2,1)
plot(ff1,central_diameter(3:23).',C9(:,1));
hold on
for num = 2:length(C9(1,:))
    tempy = C9(:,num);
    ff1 = fit(tempx,tempy,'gauss1');
    plot(ff1,tempx,tempy);
end
hold off
legend('off')
title('C9-Gauss1');
ff2=fit(central_diameter(3:23).',C9(:,1),'gauss2');
subplot(2,2,2)
plot(ff2,central_diameter(3:23).',C9(:,1));
hold on
for num = 2:length(C9(1,:))
    tempy = C9(:,num);
    ff2 = fit(tempx,tempy,'gauss2');
    tempyy = ff2.a1.*exp(-((tempx-ff2.b1)/ff2.c1).^2)+ff2.a2.*exp(-((tempx-ff2.b2)/ff2.c2).^2);
    if ff2.a1<50 & ff2.a2 <50 & ff2.a1 >5 &ff2.a2 >5
        plot(ff2,tempx,tempy);
    end
end
hold off
legend('off')
title('C9-Gauss2');
subplot(2,2,3)
plot(tempx,C9);
subplot(2,2,4)
plot(tempx,C9sum);
saveas(gcf,'D:\DATA\OTTParsivel\Pictures\c9gs.png');
saveas(gcf,'D:\DATA\OTTParsivel\Pictures\c9gs.fig');
%
%C10
figure
scrsz = get(0,'ScreenSize');
set(gcf,'Position',scrsz);
ff1=fit(central_diameter(3:23).',C10(:,1),'gauss1');
subplot(2,2,1)
plot(ff1,central_diameter(3:23).',C10(:,1));
hold on
for num = 2:length(C10(1,:))
    tempy = C10(:,num);
    ff1 = fit(tempx,tempy,'gauss1');
    plot(ff1,tempx,tempy);
end
hold off
legend('off')
title('C10-Gauss1');
ff2=fit(central_diameter(3:23).',C10(:,1),'gauss2');
subplot(2,2,2)
plot(ff2,central_diameter(3:23).',C10(:,1));
hold on
for num = 2:length(C10(1,:))
    tempy = C10(:,num);
    ff2 = fit(tempx,tempy,'gauss2');
    tempyy = ff2.a1.*exp(-((tempx-ff2.b1)/ff2.c1).^2)+ff2.a2.*exp(-((tempx-ff2.b2)/ff2.c2).^2);
    if ff2.a1<50 & ff2.a2 <50 & ff2.a1 >5 &ff2.a2 >5
        plot(ff2,tempx,tempy);
    end
end
hold off
legend('off')
title('C10-Gauss2');
subplot(2,2,3)
plot(tempx,C10);
subplot(2,2,4)
plot(tempx,C10sum);
saveas(gcf,'D:\DATA\OTTParsivel\Pictures\c10gs.png');
saveas(gcf,'D:\DATA\OTTParsivel\Pictures\c10gs.fig');
%
%C11
figure
scrsz = get(0,'ScreenSize');
set(gcf,'Position',scrsz);
ff1=fit(central_diameter(3:23).',C11(:,1),'gauss1');
subplot(2,2,1)
plot(ff1,central_diameter(3:23).',C11(:,1));
hold on
for num = 2:length(C11(1,:))
    tempy = C11(:,num);
    ff1 = fit(tempx,tempy,'gauss1');
    plot(ff1,tempx,tempy);
end
hold off
legend('off')
title('C11-Gauss1');
ff2=fit(central_diameter(3:23).',C11(:,1),'gauss2');
subplot(2,2,2)
plot(ff2,central_diameter(3:23).',C11(:,1));
hold on
for num = 2:length(C11(1,:))
    tempy = C11(:,num);
    ff2 = fit(tempx,tempy,'gauss2');
    tempyy = ff2.a1.*exp(-((tempx-ff2.b1)/ff2.c1).^2)+ff2.a2.*exp(-((tempx-ff2.b2)/ff2.c2).^2);
    if ff2.a1<50 & ff2.a2 <50 & ff2.a1 >5 &ff2.a2 >5
        plot(ff2,tempx,tempy);
    end
end
hold off
legend('off')
title('C11-Gauss2');
subplot(2,2,3)
plot(tempx,C11);
subplot(2,2,4)
plot(tempx,C11sum);
saveas(gcf,'D:\DATA\OTTParsivel\Pictures\c11gs.png');
saveas(gcf,'D:\DATA\OTTParsivel\Pictures\c11gs.fig');
%
%C12
figure
scrsz = get(0,'ScreenSize');
set(gcf,'Position',scrsz);
ff1=fit(central_diameter(3:23).',C12(:,1),'gauss1');
tiledlayout(2,2)
ax1 = nexttile;
plot(ff1,central_diameter(3:23).',C12(:,1));
hold on
for num = 2:length(C12(1,:))
    tempy = C12(:,num);
    ff1 = fit(tempx,tempy,'gauss1');
    plot(ff1,tempx,tempy);
end
hold off
legend('off')
title('C12-Gauss1');
ff2=fit(central_diameter(3:23).',C12(:,1),'gauss2');
ax2 = nexttile;
plot(ff2,central_diameter(3:23).',C12(:,1));
hold on
for num = 2:length(C12(1,:))
    tempy = C12(:,num);
    ff2 = fit(tempx,tempy,'gauss2');
    tempyy = ff2.a1.*exp(-((tempx-ff2.b1)/ff2.c1).^2)+ff2.a2.*exp(-((tempx-ff2.b2)/ff2.c2).^2);
    if ff2.a1<50 & ff2.a2 <50 & ff2.a1 >5 &ff2.a2 >5
        plot(ff2,tempx,tempy);
    end
end
hold off
legend('off')
title('C12-Gauss2');
ax = nexttile;
plot(tempx,C12);
ax = nexttile;
plot(tempx,C12sum);
saveas(gcf,'D:\DATA\OTTParsivel\Pictures\c12gs.png');
saveas(gcf,'D:\DATA\OTTParsivel\Pictures\c12gs.fig');
%
%C13
figure
scrsz = get(0,'ScreenSize');
set(gcf,'Position',scrsz);
ff1=fit(central_diameter(3:23).',C13(:,1),'gauss1');
tiledlayout(2,2)
ax1 = nexttile;
plot(ff1,central_diameter(3:23).',C13(:,1));
hold on
for num = 2:length(C13(1,:))
    tempy = C13(:,num);
    ff1 = fit(tempx,tempy,'gauss1');
    plot(ff1,tempx,tempy);
end
hold off
legend('off')
title('C13-Gauss1');
ff2=fit(central_diameter(3:23).',C13(:,1),'gauss2');
ax2 = nexttile;
plot(ff2,central_diameter(3:23).',C13(:,1));
hold on
for num = 2:length(C13(1,:))
    tempy = C13(:,num);
    ff2 = fit(tempx,tempy,'gauss2');
    tempyy = ff2.a1.*exp(-((tempx-ff2.b1)/ff2.c1).^2)+ff2.a2.*exp(-((tempx-ff2.b2)/ff2.c2).^2);
    if ff2.a1<50 & ff2.a2 <50 & ff2.a1 >5 &ff2.a2 >5
        plot(ff2,tempx,tempy);
    end
end
hold off
legend('off')
title('C13-Gauss2');
ax = nexttile;
plot(tempx,C13);
ax = nexttile;
plot(tempx,C13sum);
saveas(gcf,'D:\DATA\OTTParsivel\Pictures\c13gs.png');
saveas(gcf,'D:\DATA\OTTParsivel\Pictures\c13gs.fig');
%
%C14
figure
scrsz = get(0,'ScreenSize');
set(gcf,'Position',scrsz);
ff1=fit(central_diameter(3:23).',C14(:,1),'gauss1');
tiledlayout(2,2)
ax1 = nexttile;
plot(ff1,central_diameter(3:23).',C14(:,1));
hold on
for num = 2:length(C14(1,:))
    tempy = C14(:,num);
    ff1 = fit(tempx,tempy,'gauss1');
    plot(ff1,tempx,tempy);
end
hold off
legend('off')
title('C14-Gauss1');
ff2=fit(central_diameter(3:23).',C14(:,1),'gauss2');
ax2 = nexttile;
plot(ff2,central_diameter(3:23).',C14(:,1));
hold on
for num = 2:length(C14(1,:))
    tempy = C14(:,num);
    ff2 = fit(tempx,tempy,'gauss2');
    tempyy = ff2.a1.*exp(-((tempx-ff2.b1)/ff2.c1).^2)+ff2.a2.*exp(-((tempx-ff2.b2)/ff2.c2).^2);
    if ff2.a1<50 & ff2.a2 <50 & ff2.a1 >5 &ff2.a2 >5
        plot(ff2,tempx,tempy);
    end
end
hold off
legend('off')
title('C14-Gauss2');
ax = nexttile;
plot(tempx,C14);
ax = nexttile;
plot(tempx,C14sum);
saveas(gcf,'D:\DATA\OTTParsivel\Pictures\c14gs.png');
saveas(gcf,'D:\DATA\OTTParsivel\Pictures\c14gs.fig');
%
%C15
figure
scrsz = get(0,'ScreenSize');
set(gcf,'Position',scrsz);
ff1=fit(central_diameter(3:23).',C15(:,1),'gauss1');
tiledlayout(2,2)
ax1 = nexttile;
plot(ff1,central_diameter(3:23).',C15(:,1));
hold on
for num = 2:length(C15(1,:))
    tempy = C15(:,num);
    ff1 = fit(tempx,tempy,'gauss1');
    plot(ff1,tempx,tempy);
end
hold off
legend('off')
title('C15-Gauss1');
ff2=fit(central_diameter(3:23).',C15(:,1),'gauss2');
ax2 = nexttile;
plot(ff2,central_diameter(3:23).',C15(:,1));
hold on
for num = 2:length(C15(1,:))
    tempy = C15(:,num);
    ff2 = fit(tempx,tempy,'gauss2');
    tempyy = ff2.a1.*exp(-((tempx-ff2.b1)/ff2.c1).^2)+ff2.a2.*exp(-((tempx-ff2.b2)/ff2.c2).^2);
    if ff2.a1<50 & ff2.a2 <50 & ff2.a1 >5 &ff2.a2 >5
        plot(ff2,tempx,tempy);
    end
end
hold off
legend('off')
title('C15-Gauss2');
ax = nexttile;
plot(tempx,C15);
ax = nexttile;
plot(tempx,C15sum);
saveas(gcf,'D:\DATA\OTTParsivel\Pictures\c15gs.png');
saveas(gcf,'D:\DATA\OTTParsivel\Pictures\c15gs.fig');
%
%C16
figure
scrsz = get(0,'ScreenSize');
set(gcf,'Position',scrsz);
ff1=fit(central_diameter(3:23).',C16(:,1),'gauss1');
tiledlayout(2,2)
ax1 = nexttile;
plot(ff1,central_diameter(3:23).',C16(:,1));
hold on
for num = 2:length(C16(1,:))
    tempy = C16(:,num);
    ff1 = fit(tempx,tempy,'gauss1');
    plot(ff1,tempx,tempy);
end
hold off
legend('off')
title('C16-Gauss1');
ff2=fit(central_diameter(3:23).',C16(:,1),'gauss2');
ax2 = nexttile;
plot(ff2,central_diameter(3:23).',C16(:,1));
hold on
for num = 2:length(C16(1,:))
    tempy = C16(:,num);
    ff2 = fit(tempx,tempy,'gauss2');
    tempyy = ff2.a1.*exp(-((tempx-ff2.b1)/ff2.c1).^2)+ff2.a2.*exp(-((tempx-ff2.b2)/ff2.c2).^2);
    if ff2.a1<50 & ff2.a2 <50 & ff2.a1 >5 &ff2.a2 >5
        plot(ff2,tempx,tempy);
    end
end
hold off
legend('off')
title('C16-Gauss2');
ax = nexttile;
plot(tempx,C16);
ax = nexttile;
plot(tempx,C16sum);
saveas(gcf,'D:\DATA\OTTParsivel\Pictures\c16gs.png');
saveas(gcf,'D:\DATA\OTTParsivel\Pictures\c16gs.fig');
%
%C17
figure
scrsz = get(0,'ScreenSize');
set(gcf,'Position',scrsz);
ff1=fit(central_diameter(3:23).',C17(:,1),'gauss1');
subplot(2,2,1)
plot(ff1,central_diameter(3:23).',C17(:,1));
hold on
for num = 2:length(C17(1,:))
    tempy = C17(:,num);
    ff1 = fit(tempx,tempy,'gauss1');
    plot(ff1,tempx,tempy);
end
hold off
legend('off')
title('C17-Gauss1');
ff2=fit(central_diameter(3:23).',C17(:,1),'gauss2');
subplot(2,2,2)
plot(ff2,central_diameter(3:23).',C17(:,1));
hold on
for num = 2:length(C17(1,:))
    tempy = C17(:,num);
    ff2 = fit(tempx,tempy,'gauss2');
    tempyy = ff2.a1.*exp(-((tempx-ff2.b1)/ff2.c1).^2)+ff2.a2.*exp(-((tempx-ff2.b2)/ff2.c2).^2);
    if ff2.a1<50 & ff2.a2 <50 & ff2.a1 >5 &ff2.a2 >5
        plot(ff2,tempx,tempy);
    end
end
hold off
legend('off')
title('C17-Gauss2');
subplot(2,2,3)
plot(tempx,C17);
subplot(2,2,4)
plot(tempx,C17sum);
saveas(gcf,'D:\DATA\OTTParsivel\Pictures\c17gs.png');
saveas(gcf,'D:\DATA\OTTParsivel\Pictures\c17gs.fig');
%
%C18
figure
scrsz = get(0,'ScreenSize');
set(gcf,'Position',scrsz);
ff1=fit(central_diameter(3:23).',C18(:,2),'gauss1');
subplot(2,2,1)
plot(ff1,central_diameter(3:23).',C18(:,2));
hold on
for num = 3:length(C18(1,:))-1
    tempy = C18(:,num);
    ff1 = fit(tempx,tempy,'gauss1');
    plot(ff1,tempx,tempy);
end
hold off
legend('off')
title('C18-Gauss1');
ff2=fit(central_diameter(3:23).',C18(:,1),'gauss2');
subplot(2,2,2)
plot(ff2,central_diameter(3:23).',C18(:,1));
hold on
for num = 2:length(C18(1,:))
    tempy = C18(:,num);
    ff2 = fit(tempx,tempy,'gauss2');
    tempyy = ff2.a1.*exp(-((tempx-ff2.b1)/ff2.c1).^2)+ff2.a2.*exp(-((tempx-ff2.b2)/ff2.c2).^2);
    if ff2.a1<50 & ff2.a2 <50 & ff2.a1 >5 &ff2.a2 >5
        plot(ff2,tempx,tempy);
    end
end
hold off
legend('off')
title('C18-Gauss2');
subplot(2,2,3)
plot(tempx,C18);
subplot(2,2,4)
plot(tempx,C18sum);
saveas(gcf,'D:\DATA\OTTParsivel\Pictures\c18gs.png');
saveas(gcf,'D:\DATA\OTTParsivel\Pictures\c18gs.fig');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%S1
figure
scrsz = get(0,'ScreenSize');
set(gcf,'Position',scrsz);
ff1=fit(central_diameter(3:23).',S1(:,1),'gauss1');
subplot(2,2,1)
plot(ff1,central_diameter(3:23).',S1(:,1));
hold on
for num = 2:length(S1(1,:))
    tempy = S1(:,num);
    ff1 = fit(tempx,tempy,'gauss1');
    plot(ff1,tempx,tempy);
end
hold off
legend('off')
title('S1-Gauss1');
ff2=fit(central_diameter(3:23).',S1(:,1),'gauss2');
subplot(2,2,2)
plot(ff2,central_diameter(3:23).',S1(:,1));
hold on
for num = 2:length(S1(1,:))
    tempy = S1(:,num);
    ff2 = fit(tempx,tempy,'gauss2');
    tempyy = ff2.a1.*exp(-((tempx-ff2.b1)/ff2.c1).^2)+ff2.a2.*exp(-((tempx-ff2.b2)/ff2.c2).^2);
    if ff2.a1<50 & ff2.a2 <50 & ff2.a1 >5 &ff2.a2 >5
        plot(ff2,tempx,tempy);
    end
end
hold off
legend('off')
title('S1-Gauss2');
subplot(2,2,3)
plot(tempx,S1);
subplot(2,2,4)
plot(tempx,S1sum);
saveas(gcf,'D:\DATA\OTTParsivel\Pictures\s1gs.png');
saveas(gcf,'D:\DATA\OTTParsivel\Pictures\s1gs.fig');
%
%S11
figure
scrsz = get(0,'ScreenSize');
set(gcf,'Position',scrsz);
ff1=fit(central_diameter(3:23).',S11(:,1),'gauss1');
subplot(2,2,1)
plot(ff1,central_diameter(3:23).',S11(:,1));
hold on
for num = 2:length(S11(1,:))
    tempy = S11(:,num);
    ff1 = fit(tempx,tempy,'gauss1');
    plot(ff1,tempx,tempy);
end
hold off
legend('off')
title('S11-Gauss1');
ff2=fit(central_diameter(3:23).',S11(:,1),'gauss2');
subplot(2,2,2)
plot(ff2,central_diameter(3:23).',S11(:,1));
hold on
for num = 2:length(S11(1,:))
    tempy = S11(:,num);
    ff2 = fit(tempx,tempy,'gauss2');
    tempyy = ff2.a1.*exp(-((tempx-ff2.b1)/ff2.c1).^2)+ff2.a2.*exp(-((tempx-ff2.b2)/ff2.c2).^2);
    if ff2.a1<50 & ff2.a2 <50 & ff2.a1 >0 &ff2.a2 >0
        plot(ff2,tempx,tempy);
    end
end
hold off
legend('off')
title('S11-Gauss2');
subplot(2,2,3)
plot(tempx,S11);
subplot(2,2,4)
plot(tempx,S11sum);
saveas(gcf,'D:\DATA\OTTParsivel\Pictures\s11gs.png');
saveas(gcf,'D:\DATA\OTTParsivel\Pictures\s11gs.fig');
%%
%S12
figure
scrsz = get(0,'ScreenSize');
set(gcf,'Position',scrsz);
ff1=fit(central_diameter(3:23).',S12(:,1),'gauss1');
subplot(2,2,1)
plot(ff1,central_diameter(3:23).',S12(:,1));
hold on
for num = 2:length(S12(1,:))
    tempy = S12(:,num);
    ff1 = fit(tempx,tempy,'gauss1');
    plot(ff1,tempx,tempy);
end
hold off
legend('off')
title('S12-Gauss1');
ff2=fit(central_diameter(3:23).',S12(:,1),'gauss2');
subplot(2,2,2)
plot(ff2,central_diameter(3:23).',S12(:,1));
hold on
for num = 2:length(S12(1,:))
    tempy = S12(:,num);
    ff2 = fit(tempx,tempy,'gauss2');
    tempyy = ff2.a1.*exp(-((tempx-ff2.b1)/ff2.c1).^2)+ff2.a2.*exp(-((tempx-ff2.b2)/ff2.c2).^2);
    if ff2.a1<50 & ff2.a2 <50 & ff2.a1 >0 &ff2.a2 >0
        plot(ff2,tempx,tempy);
    end
end
hold off
legend('off')
title('S12-Gauss2');
subplot(2,2,3)
plot(tempx,S12);
subplot(2,2,4)
plot(tempx,S12sum);
saveas(gcf,'D:\DATA\OTTParsivel\Pictures\s12gs.png');
saveas(gcf,'D:\DATA\OTTParsivel\Pictures\s12gs.fig');
%%
%S13
figure
scrsz = get(0,'ScreenSize');
set(gcf,'Position',scrsz);
ff1=fit(central_diameter(3:23).',S13(:,1),'gauss1');
subplot(2,2,1)
plot(ff1,central_diameter(3:23).',S13(:,1));
hold on
for num = 2:length(S13(1,:))
    tempy = S13(:,num);
    ff1 = fit(tempx,tempy,'gauss1');
    plot(ff1,tempx,tempy);
end
hold off
legend('off')
title('S13-Gauss1');
ff2=fit(central_diameter(3:23).',S13(:,1),'gauss2');
subplot(2,2,2)
plot(ff2,central_diameter(3:23).',S13(:,1));
hold on
for num = 2:length(S13(1,:))
    tempy = S13(:,num);
    ff2 = fit(tempx,teMpy,'gauss2');
    tempyy = ff2.a1.*exp(-((tempx-ff2.b1)/ff2.c1).^2)+ff2.a2.*exp(-((tempx-ff2.b2)/ff2.c2).^2);
    if ff2.a1<50 & ff2.a2 <50 & ff2.a1 >0 &ff2.a2 >0
        plot(ff2,tempx,tempy);
    end
end
hold off
legend('off')
title('S13-Gauss2');
subplot(2,2,3)
plot(tempx,S13);
subplot(2,2,4)
plot(tempx,S13sum);
saveas(gcf,'D:\DATA\OTTParsivel\Pictures\s13gs.png');
saveas(gcf,'D:\DATA\OTTParsivel\Pictures\s13gs.fig');
%
%S14
figure
scrsz = get(0,'ScreenSize');
set(gcf,'Position',scrsz);
ff1=fit(central_diameter(3:23).',S14(:,1),'gauss1');
subplot(2,2,1)
plot(ff1,central_diameter(3:23).',S14(:,1));
hold on
for num = 2:length(S14(1,:))
    tempy = S14(:,num);
    ff1 = fit(tempx,tempy,'gauss1');
    plot(ff1,tempx,tempy);
end
hold off
legend('off')
title('S14-Gauss1');
ff2=fit(central_diameter(3:23).',S14(:,1),'gauss2');
subplot(2,2,2)
plot(ff2,central_diameter(3:23).',S14(:,1));
hold on
for num = 2:length(S14(1,:))
    tempy = S14(:,num);
    ff2 = fit(tempx,tempy,'gauss2');
    tempyy = ff2.a1.*exp(-((tempx-ff2.b1)/ff2.c1).^2)+ff2.a2.*exp(-((tempx-ff2.b2)/ff2.c2).^2);
    if ff2.a1<50 & ff2.a2 <50 & ff2.a1 >0 &ff2.a2 >0
        plot(ff2,tempx,tempy);
    end
end
hold off
legend('off')
title('S144-Gauss2');
subplot(2,2,3)
plot(tempx,S14);
subplot(2,2,4)
plot(tempx,S14sum);
saveas(gcf,'D:\DATA\OTTParsivel\Pictures\s14gs.png');
saveas(gcf,'D:\DATA\OTTParsivel\Pictures\s14gs.fig');
%
%S2
figure
scrsz = get(0,'ScreenSize');
set(gcf,'Position',scrsz);
ff1=fit(central_diameter(3:23).',S2(:,1),'gauss1');
subplot(2,2,1)
plot(ff1,central_diameter(3:23).',S2(:,1));
hold on
for num = 2:length(S2(1,:))
    tempy = S2(:,num);
    ff1 = fit(tempx,tempy,'gauss1');
    plot(ff1,tempx,tempy);
end
hold off
legend('off')
title('S2-Gauss1');
ff2=fit(central_diameter(3:23).',S2(:,1),'gauss2');
subplot(2,2,2)
plot(ff2,central_diameter(3:23).',S2(:,1));
hold on
for num = 2:length(S2(1,:))
    tempy = S2(:,num);
    ff2 = fit(tempx,tempy,'gauss2');
    tempyy = ff2.a1.*exp(-((tempx-ff2.b1)/ff2.c1).^2)+ff2.a2.*exp(-((tempx-ff2.b2)/ff2.c2).^2);
    if ff2.a1<50 & ff2.a2 <50 & ff2.a1 >0 &ff2.a2 >0
        plot(ff2,tempx,tempy);
    end
end
hold off
legend('off')
title('S2-Gauss2');
subplot(2,2,3)
plot(tempx,S2);
subplot(2,2,4)
plot(tempx,S2sum);
saveas(gcf,'D:\DATA\OTTParsivel\Pictures\s2gs.png');
saveas(gcf,'D:\DATA\OTTParsivel\Pictures\s2gs.fig');
%
%S3
figure
scrsz = get(0,'ScreenSize');
set(gcf,'Position',scrsz);
ff1=fit(central_diameter(3:23).',S3(:,1),'gauss1');
subplot(2,2,1)
plot(ff1,central_diameter(3:23).',S3(:,1));
hold on
for num = 2:length(S1(1,:))
    tempy = S3(:,num);
    ff1 = fit(tempx,tempy,'gauss1');
    plot(ff1,tempx,tempy);
end
hold off
legend('off')
title('S3-Gauss1');
ff2=fit(central_diameter(3:23).',S3(:,1),'gauss2');
subplot(2,2,2)
plot(ff2,central_diameter(3:23).',S3(:,1));
hold on
for num = 2:length(S3(1,:))
    tempy = S3(:,num);
    ff2 = fit(tempx,tempy,'gauss2');
    tempyy = ff2.a1.*exp(-((tempx-ff2.b1)/ff2.c1).^2)+ff2.a2.*exp(-((tempx-ff2.b2)/ff2.c2).^2);
    if ff2.a1<50 & ff2.a2 <50 & ff2.a1 >0 &ff2.a2 >0
        plot(ff2,tempx,tempy);
    end
end
hold off
legend('off')
title('S3-Gauss2');
subplot(2,2,3)
plot(tempx,S3);
subplot(2,2,4)
plot(tempx,S1sum);
saveas(gcf,'D:\DATA\OTTParsivel\Pictures\s3gs.png');
saveas(gcf,'D:\DATA\OTTParsivel\Pictures\s3gs.fig');
%
%S4
figure
scrsz = get(0,'ScreenSize');
set(gcf,'Position',scrsz);
ff1=fit(central_diameter(3:23).',S4(:,1),'gauss1');
subplot(2,2,1)
plot(ff1,central_diameter(3:23).',S4(:,1));
hold on
for num = 2:length(S4(1,:))
    tempy = S4(:,num);
    ff1 = fit(tempx,tempy,'gauss1');
    plot(ff1,tempx,tempy);
end
hold off
legend('off')
title('S4-Gauss1');
ff2=fit(central_diameter(3:23).',S4(:,1),'gauss2');
subplot(2,2,2)
plot(ff2,central_diameter(3:23).',S4(:,1));
hold on
for num = 2:length(S4(1,:))
    tempy = S4(:,num);
    ff2 = fit(tempx,tempy,'gauss2');
    tempyy = ff2.a1.*exp(-((tempx-ff2.b1)/ff2.c1).^2)+ff2.a2.*exp(-((tempx-ff2.b2)/ff2.c2).^2);
    if ff2.a1<50 & ff2.a2 <50 & ff2.a1 >0 &ff2.a2 >0
        plot(ff2,tempx,tempy);
    end
end
hold off
legend('off')
title('S4-Gauss2');
subplot(2,2,3)
plot(tempx,S4);
subplot(2,2,4)
plot(tempx,S4sum);
saveas(gcf,'D:\DATA\OTTParsivel\Pictures\s4gs.png');
saveas(gcf,'D:\DATA\OTTParsivel\Pictures\s4gs.fig');
%
%S5
figure
scrsz = get(0,'ScreenSize');
set(gcf,'Position',scrsz);
ff1=fit(central_diameter(3:23).',S5(:,1),'gauss1');
subplot(2,2,1)
plot(ff1,central_diameter(3:23).',S5(:,1));
hold on
for num = 2:length(S5(1,:))
    tempy = S5(:,num);
    ff1 = fit(tempx,tempy,'gauss1');
    plot(ff1,tempx,tempy);
end
hold off
legend('off')
title('S5-Gauss1');
ff2=fit(central_diameter(3:23).',S5(:,1),'gauss2');
subplot(2,2,2)
plot(ff2,central_diameter(3:23).',S5(:,1));
hold on
for num = 2:length(S5(1,:))
    tempy = S5(:,num);
    ff2 = fit(tempx,tempy,'gauss2');
    tempyy = ff2.a1.*exp(-((tempx-ff2.b1)/ff2.c1).^2)+ff2.a2.*exp(-((tempx-ff2.b2)/ff2.c2).^2);
    if ff2.a1<50 & ff2.a2 <50 & ff2.a1 >0 &ff2.a2 >0
        plot(ff2,tempx,tempy);
    end
end
hold off
legend('off')
title('S5-Gauss2');
subplot(2,2,3)
plot(tempx,S5);
subplot(2,2,5)
plot(tempx,S4sum);
saveas(gcf,'D:\DATA\OTTParsivel\Pictures\s5gs.png');
saveas(gcf,'D:\DATA\OTTParsivel\Pictures\s5gs.fig');
%
%S6
figure
scrsz = get(0,'ScreenSize');
set(gcf,'Position',scrsz);
ff1=fit(central_diameter(3:23).',S6(:,1),'gauss1');
subplot(2,2,1)
plot(ff1,central_diameter(3:23).',S6(:,1));
hold on
for num = 2:length(S6(1,:))
    tempy = S6(:,num);
    ff1 = fit(tempx,tempy,'gauss1');
    plot(ff1,tempx,tempy);
end
hold off
legend('off')
title('S6-Gauss1');
ff2=fit(central_diameter(3:23).',S6(:,1),'gauss2');
subplot(2,2,2)
plot(ff2,central_diameter(3:23).',S6(:,1));
hold on
for num = 2:length(S6(1,:))
    tempy = S6(:,num);
    ff2 = fit(tempx,tempy,'gauss2');
    tempyy = ff2.a1.*exp(-((tempx-ff2.b1)/ff2.c1).^2)+ff2.a2.*exp(-((tempx-ff2.b2)/ff2.c2).^2);
    if ff2.a1<50 & ff2.a2 <50 & ff2.a1 >0 &ff2.a2 >0
        plot(ff2,tempx,tempy);
    end
end
hold off
legend('off')
title('S6-Gauss2');
subplot(2,2,3)
plot(tempx,S6);
subplot(2,2,4)
plot(tempx,S6sum);
saveas(gcf,'D:\DATA\OTTParsivel\Pictures\s6gs.png');
saveas(gcf,'D:\DATA\OTTParsivel\Pictures\s6gs.fig');
%
%S7
figure
scrsz = get(0,'ScreenSize');
set(gcf,'Position',scrsz);
ff1=fit(central_diameter(3:23).',S7(:,1),'gauss1');
subplot(2,2,1)
plot(ff1,central_diameter(3:23).',S7(:,1));
hold on
for num = 2:length(S7(1,:))
    tempy = S7(:,num);
    ff1 = fit(tempx,tempy,'gauss1');
    plot(ff1,tempx,tempy);
end
hold off
legend('off')
title('S7-Gauss1');
ff2=fit(central_diameter(3:23).',S7(:,1),'gauss2');
subplot(2,2,2)
plot(ff2,central_diameter(3:23).',S7(:,1));
hold on
for num = 2:length(S7(1,:))
    tempy = S7(:,num);
    ff2 = fit(tempx,tempy,'gauss2');
    tempyy = ff2.a1.*exp(-((tempx-ff2.b1)/ff2.c1).^2)+ff2.a2.*exp(-((tempx-ff2.b2)/ff2.c2).^2);
    if ff2.a1<50 & ff2.a2 <50 & ff2.a1 >0 &ff2.a2 >0
        plot(ff2,tempx,tempy);
    end
end
hold off
legend('off')
title('S7-Gauss2');
subplot(2,2,3)
plot(tempx,S7);
subplot(2,2,4)
plot(tempx,S7sum);
saveas(gcf,'D:\DATA\OTTParsivel\Pictures\s7gs.png');
saveas(gcf,'D:\DATA\OTTParsivel\Pictures\s7gs.fig');
%
%S8
figure
scrsz = get(0,'ScreenSize');
set(gcf,'Position',scrsz);
ff1=fit(central_diameter(3:23).',S8(:,1),'gauss1');
subplot(2,2,1)
plot(ff1,central_diameter(3:23).',S8(:,1));
hold on
for num = 2:length(S8(1,:))
    tempy = S8(:,num);
    ff1 = fit(tempx,tempy,'gauss1');
    plot(ff1,tempx,tempy);
end
hold off
legend('off')
title('S8-Gauss1');
ff2=fit(central_diameter(3:23).',S8(:,1),'gauss2');
subplot(2,2,2)
plot(ff2,central_diameter(3:23).',S8(:,1));
hold on
for num = 2:length(S8(1,:))
    tempy = S8(:,num);
    ff2 = fit(tempx,tempy,'gauss2');
    tempyy = ff2.a1.*exp(-((tempx-ff2.b1)/ff2.c1).^2)+ff2.a2.*exp(-((tempx-ff2.b2)/ff2.c2).^2);
    if ff2.a1<50 & ff2.a2 <50 & ff2.a1 >0 &ff2.a2 >0
        plot(ff2,tempx,tempy);
    end
end
hold off
legend('off')
title('S8-Gauss2');
subplot(2,2,3)
plot(tempx,S8);
subplot(2,2,4)
plot(tempx,S8sum);
saveas(gcf,'D:\DATA\OTTParsivel\Pictures\s8gs.png');
saveas(gcf,'D:\DATA\OTTParsivel\Pictures\s8gs.fig');
%
%S9
figure
scrsz = get(0,'ScreenSize');
set(gcf,'Position',scrsz);
ff1=fit(central_diameter(3:23).',S9(:,1),'gauss1');
subplot(2,2,1)
plot(ff1,central_diameter(3:23).',S9(:,1));
hold on
for num = 2:length(S9(1,:))
    tempy = S9(:,num);
    ff1 = fit(tempx,tempy,'gauss1');
    plot(ff1,tempx,tempy);
end
hold off
legend('off')
title('S9-Gauss1');
ff2=fit(central_diameter(3:23).',S9(:,1),'gauss2');
subplot(2,2,2)
plot(ff2,central_diameter(3:23).',S9(:,1));
hold on
for num = 2:length(S9(1,:))
    tempy = S9(:,num);
    ff2 = fit(tempx,tempy,'gauss2');
    tempyy = ff2.a1.*exp(-((tempx-ff2.b1)/ff2.c1).^2)+ff2.a2.*exp(-((tempx-ff2.b2)/ff2.c2).^2);
    if ff2.a1<50 & ff2.a2 <50 & ff2.a1 >0 &ff2.a2 >0
        plot(ff2,tempx,tempy);
    end
end
hold off
legend('off')
title('S9-Gauss2');
subplot(2,2,3)
plot(tempx,S9);
subplot(2,2,4)
plot(tempx,S9sum);
saveas(gcf,'D:\DATA\OTTParsivel\Pictures\s9gs.png');
saveas(gcf,'D:\DATA\OTTParsivel\Pictures\s9gs.fig');































