%Description:
%Classifying Rcontriburions curve

% History:
% 2022.03.28 by zhangtc

clear
load('D:\DATA\Parsivel_temporary\DSD_parameters.mat','central_diameter');
tempx = central_diameter(3:23).';
RRDconvper = h5read('D:\DATA\Parsivel_temporary\RDlevels.h5','/RRDconvper');
RRconv= h5read('D:\DATA\Parsivel_temporary\RDlevels.h5','/RRconv');
RRDconvday= cell2mat(struct2cell(load('D:\DATA\Parsivel_temporary\RDlevels.mat','RRDconvday')));
RRDconvmin= cell2mat(struct2cell(load('D:\DATA\Parsivel_temporary\RDlevels.mat','RRDconvmin')));
pk1 = zeros(length(RRconv),3);%location in RRconv;peak;location in diameters
pk2 = zeros(length(RRconv),5);%location in RRconv;two peaks;two locations in diameters
pk3 = zeros(length(RRconv),7);%location in RRconv
pk0 = zeros(length(RRconv),1);%location in RRconv when none of peaks
pk4 = zeros(length(RRconv),1);%location in RRconv when number of peaks is more than 3
%         findpeaks(RRDconvper,tempx,'MinPeakHeight',12,'MinPeakProminence',5,'MinPeakDistance',0.5);
for rk = 1: length(RRconv)
    [pks,locs] = findpeaks(RRDconvper(rk,:),tempx,'MinPeakHeight',12,'MinPeakProminence',5,'MinPeakDistance',0.25);
    switch length(pks)
        case 0
            pk0(rk) = rk;
        case 1
            pk1(rk,:) = [rk,pks,locs];
        case 2
            pk2(rk,:)  = [rk,pks,locs.'];
        case 3
            pk3(rk,:)  = [rk,pks,locs.'];
        otherwise
            pk4(rk) = rk;
    end
end
pk0(pk0==0) = [];pk4(pk4==0) = [];
pk1(sum(pk1,2)==0,:) = [];
pk2(sum(pk2,2)==0,:) = [];
pk3(sum(pk3,2)==0,:) = [];
%%
% figure
% set(gcf,'Position',get(0,'screensize'));
Rpk1 = {};
Rpk1day = {};
Rpk1min = {};
Rconvpk1 ={};
for ik = 7:20
    Rconvpk1 = [Rconvpk1,RRDconvper(pk1(pk1(:,3)==tempx(ik),1),:)];
%     subplot(4,4,ik-6)
%     plot(tempx,Rconvpk1);
    Rpk1 = [Rpk1,RRconv(pk1(pk1(:,3)==tempx(ik),1),:)];
    Rpk1day =[Rpk1day,RRDconvday(pk1(pk1(:,3)==tempx(ik),1),:)];
    Rpk1min =[Rpk1min,RRDconvmin(pk1(pk1(:,3)==tempx(ik),1),:)];
%     histogram(Rpk1);
end
%  saveas(gcf,'D:\DATA\OTTParsivel\Pictures\Rconpeak1.png');
%     saveas(gcf,'E:\DATA\OTTParsivel\Pictures\new\Rconpeak1.png');
%%
figure
set(gcf,'Position',get(0,'screensize'));
for ik = 7:20
    temp = pk1(pk1(:,3)==tempx(ik),1);
    Rconvpk1 = (sum(RRDconvper(temp,:),1)./length(temp)).';
    subplot(4,4,ik-6)
    [ff1,gof1]=fit(tempx,Rconvpk1,'gauss1');
    plot(ff1,tempx,Rconvpk1);
    legend('off')
end
%%
figure
set(gcf,'Position',get(0,'screensize'));
for ik = 7:20
    Rconvpk2 = RRDconvper(pk2(pk2(:,4)==tempx(ik),1),:);
    if ~isempty(Rconvpk2)
    subplot(4,4,ik-6)
    plot(tempx,Rconvpk2);
    end
end
%     saveas(gcf,'D:\DATA\OTTParsivel\Pictures\Rconpeak2.png');
%     saveas(gcf,'E:\DATA\OTTParsivel\Pictures\new\Rconpeak2.png');
%%
figure
set(gcf,'Position',get(0,'screensize'));
for ik = 7:20
    temp = pk2(pk2(:,4)==tempx(ik),1);
    if ~isempty(temp)
        Rconvpk2 = (sum(RRDconvper(temp,:),1)./length(temp)).';
        subplot(4,4,ik-6)
        [ff2,gof2]=fit(tempx,Rconvpk2,'gauss2');
        plot(ff2,tempx,Rconvpk2);
        legend('off')
    end
end
%%
figure
set(gcf,'Position',get(0,'screensize'));
for ik = 7:20
    Rconvpk3 = RRDconvper(pk3(pk3(:,5)==tempx(ik),1),:);
    if ~isempty(Rconvpk3)
    subplot(4,4,ik-6)
    plot(tempx,Rconvpk3);
    end
end
%     saveas(gcf,'D:\DATA\OTTParsivel\Pictures\Rconpeak3.png');
%     saveas(gcf,'E:\DATA\OTTParsivel\Pictures\new\Rconpeak3.png');