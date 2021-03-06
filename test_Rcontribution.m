%%
tempC1 = C1.';
tempC1([30,31],:)= [];
tempyy = mean(tempC1).';
figure
[ff1,gof1] = fit(tempx,tempyy,'gauss1');
 plot(ff1,tempx,tempyy);
%%
figure
scrsz = get(0,'ScreenSize');
set(gcf,'Position',scrsz);
[ff1,gof1]=fit(central_diameter(3:23).',C1(:,1),'gauss1');
[ff2,gof2]=fit(central_diameter(3:23).',C1(:,1),'gauss2');
if ff1.a1 < 60 & ff2.a1 <60 & ff2.a2 <60& ff1.a1 >0 & ff2.a1 >0 & ff2.a2 >0 & gof1.rsquare < gof2.rsquare
    plot(ff2,central_diameter(3:23).',C1(:,1));
else
    plot(ff1,central_diameter(3:23).',C1(:,1));
end
hold on
for num = 2:length(C1(1,:))
    tempy = C1(:,num);
    [ff1,gof1] = fit(tempx,tempy,'gauss1');
    [ff2,gof2] = fit(tempx,tempy,'gauss2');
    if ff1.a1 < 60 & ff2.a1 <60 & ff2.a2 <60& ff1.a1 >0 & ff2.a1 >0 & ff2.a2 >0 & gof1.rsquare < gof2.rsquare
        ff2.a1-ff2.a2
        plot(ff2,central_diameter(3:23).',C1(:,1));
    else
        plot(ff1,central_diameter(3:23).',C1(:,1));
    end
end
hold off
legend('off')
title('C1-Gauss');
%%
for num = 1:length(C1(1,:))
    tempy = C1(:,num);
    figure
    scrsz = get(0,'ScreenSize');
    set(gcf,'Position',scrsz);
    subplot(1,3,1)
    [ff1,gof1] = fit(tempx,tempy,'gauss1');
    plot(ff1,tempx,tempy);
    subplot(1,3,2)
      [ff2,gof2] = fit(tempx,tempy,'gauss2');
    plot(ff2,tempx,tempy);
        subplot(1,3,3)
      [ff3,gof3] = fit(tempx,tempy,'gauss3');
    plot(ff3,tempx,tempy);
end