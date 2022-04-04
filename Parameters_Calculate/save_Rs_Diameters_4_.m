%Description:
%Calculating the contributions to R in different diameters
% History:
% 2022.01.08 by zhangtc
clear
RRall=[];%Rainrate in this minute
RRconv = [];
RRstra = [];
RRDall = [];
RRDconv = [];%Rainrate from diameter levels(3:23)
RRDstra = [];
RRDallper = [];%Percentage of rainrate from diameter levels
RRDconvper = [];
RRDstraper = [];
RRDconvday = [];
RRDconvmin = [];
RRDstraday = [];
RRDstramin = [];
load('D:\DATA\Parsivel_temporary\DSD_parameters.mat','central_diameter');
load('D:\DATA\Parsivel_temporary\DSD_parameters.mat','central_speed');
load('D:\DATA\Parsivel_temporary\DSD_parameters.mat','diameter_bandwidth');
file_root = 'D:\DATA\OTTParsivel\nonQC2019-\';
file_day = dir([file_root,'*.h5']);

for fnum = 1 : length(file_day)
    fnum
    fname = [file_root,file_day(fnum).name];
    RR = h5read(fname,'/RR');
    %     rainflag = h5read(fname,'/rainflag');
    typeflag = h5read(fname,'/typeflag');
    putu = h5read(fname,'/Mputu');
    temp_t = datenum(fix(str2double(file_day(fnum).name(1:4))),...
        fix(str2double(file_day(fnum).name(5:6))),...
        fix(str2double(file_day(fnum).name(7:8))));
    temp_day = temp_t - datenum(2019,5,31);
    
    if   temp_day >0 && temp_day < 732
        rainkeya = find(RR >0.1);
        if ~isempty(rainkeya)
            RRall = [RRall;RR(rainkeya)];
            for raink = 1:length(rainkeya)
                tempR = zeros(1,21);
                for di = 3:23
                    for vj = 1:32
                        tempR(di-2)= tempR(di-2) + 6 * pi * (1e-4) .* putu(vj,di,rainkeya(raink)) .* central_diameter(di).^3 ./ (0.0054.*60);
                    end
                end
                RRDall = [RRDall;tempR];
                RRDallper = [RRDallper;tempR./RR(rainkeya(raink))];
                clear tempR
            end
        end
        
        rainkeyc = find(typeflag == 1);
        if ~isempty(rainkeyc)
            RRconv = [RRconv;RR(rainkeyc)];
            for raink = 1:length(rainkeyc)
                tempR = zeros(1,21);
                for di = 3:23
                    for vj = 1:32
                        tempR(di-2)= tempR(di-2) + 6 * pi * (1e-4) .* putu(vj,di,rainkeyc(raink)) .* central_diameter(di).^3 ./ (0.0054.*60);
                    end
                end
                RRDconv = [RRDconv;tempR];
                RRDconvper = [RRDconvper;tempR./RR(rainkeyc(raink))];
                RRDconvday = [RRDconvday;file_day(fnum).name(1:8)];
                RRDconvmin = [RRDconvmin;rainkeyc(raink)];
                clear tempR
            end
        end
        clear raink
        rainkeys = find(typeflag == 2);
        if ~isempty(rainkeys)
            RRstra = [RRstra;RR(rainkeys)];
            for raink = 1:length(rainkeys)
                tempR = zeros(1,21);
                for di = 3:23
                    for vj = 1:32
                        tempR(di-2)= tempR(di-2) + 6 * pi * (1e-4) .* putu(vj,di,rainkeys(raink)) .* central_diameter(di).^3 ./ (0.0054.*60);
                    end
                end
                RRDstra = [RRDstra;tempR];
                RRDstraper = [RRDstraper;tempR./RR(rainkeys(raink))];
                RRDstraday = [RRDstraday;file_day(fnum).name(1:8)];
                RRDstramin = [RRDstramin;rainkeys(raink)];
                clear tempR
            end
        end
    end
end
RRDallper = RRDallper.*100;
RRDconvper = RRDconvper.*100;
RRDstraper = RRDstraper.*100;
save('D:\DATA\Parsivel_temporary\RDlevels.mat','RRDall','RRDallper','RRall',...
    'RRDconv','RRDconvper','RRconv','RRDconvday','RRDstra','RRDstraper',...
'RRstra','RRDstraday','RRDstramin','RRDconvmin');
save('E:\DATA\Parsivel_temporary\RDlevels.mat','RRDall','RRDallper','RRall',...
    'RRDconv','RRDconvper','RRconv','RRDconvday','RRDstra','RRDstraper',...
    'RRstra','RRDstraday','RRDstramin','RRDconvmin');
%%
clear
RRDconvper = h5read('D:\DATA\Parsivel_temporary\RDlevels.h5','/RRDconvper');
RRconv= h5read('D:\DATA\Parsivel_temporary\RDlevels.h5','/RRconv');
load('D:\DATA\Parsivel_temporary\DSD_parameters.mat','central_diameter');
tempx = central_diameter(3:23).';
C1 = RRDconvper(RRconv >= 5 & RRconv <6,:).';
C1sum = cumsum(C1);
C2 = RRDconvper(RRconv >= 6 & RRconv <7,:).';
C2sum = cumsum(C2);
C3 = RRDconvper(RRconv >= 7 & RRconv <8,:).';
C3sum = cumsum(C3);
C4 = RRDconvper(RRconv >= 8 & RRconv <9,:).';
C4sum = cumsum(C4);
C5 = RRDconvper(RRconv >= 9 & RRconv <10,:).';
C5sum = cumsum(C5);
C6 = RRDconvper(RRconv >= 10 & RRconv <11,:).';
C6sum = cumsum(C6);
C7 = RRDconvper(RRconv >= 11 & RRconv <12,:).';
C7sum = cumsum(C7);
C8 = RRDconvper(RRconv >= 12 & RRconv <13,:).';
C8sum = cumsum(C8);
C9 = RRDconvper(RRconv >= 13 & RRconv <14,:).';
C9sum = cumsum(C9);
C10 = RRDconvper(RRconv >= 14 & RRconv <15,:).';
C10sum = cumsum(C10);
C11 = RRDconvper(RRconv >= 15 & RRconv <20,:).';
C11sum = cumsum(C11);
C12 = RRDconvper(RRconv >= 20 & RRconv <25,:).';
C12sum = cumsum(C12);
C13 = RRDconvper(RRconv >= 25 & RRconv <30,:).';
C13sum = cumsum(C13);
C14 = RRDconvper(RRconv >= 30 & RRconv <40,:).';
C14sum = cumsum(C14);
C15 = RRDconvper(RRconv >= 40 & RRconv <50,:).';
C15sum = cumsum(C15);
C16= RRDconvper(RRconv >= 50 & RRconv <70,:).';
C16sum = cumsum(C16);
C17 = RRDconvper(RRconv >= 70 & RRconv <100,:).';
C17sum = cumsum(C17);
C18 = RRDconvper(RRconv >= 100,:).';
C18sum = cumsum(C18);
%%
Carr = {C1,C2,C3,C4,C5,C6,C7,C8,C9,C10,C11,C12,C13,C14,C15,C16,C17,C18};
for Ck = 1:18
    figure(Ck);
    set(gcf,'Position',get(0,'screensize'));
    title(['Cpeak',num2str(Ck)]);
    for k = 1:length(Carr{Ck}(1,:))
        ax(k) = subplot(ceil(sqrt(length(Carr{Ck}(1,:)))),ceil(sqrt(length(Carr{Ck}(1,:)))),k);
        plot(tempx,Carr{Ck}(:,k));
        %     plot(C1(:,k));
        findpeaks(Carr{Ck}(:,k),tempx,'MinPeakHeight',12,'MinPeakProminence',5,'MinPeakDistance',0.5);
        [pks,locs] = findpeaks(Carr{Ck}(:,k),tempx,'MinPeakHeight',12,'MinPeakProminence',5,'MinPeakDistance',0.5); 
    end
    
    saveas(gcf,['D:\DATA\OTTParsivel\Pictures\',['Cpeak',num2str(Ck)],'.png']);
    saveas(gcf,['E:\DATA\OTTParsivel\Pictures\new\',['Cpeak',num2str(Ck)],'.png']);
    close
end
%%
Carr = {C1sum,C2sum,C3sum,C4sum,C5sum,C6sum,C7sum,C8sum,C9sum,C10sum,C11sum,C12sum,C13sum,C14sum,C15sum,C16sum,C17sum,C18sum};
figure;
set(gcf,'Position',get(0,'screensize'));
for Ck = 1:18
    subplot(3,6,Ck);
    mtemp = diff(Carr{1,Ck})./diff(tempx);
    [tempm,ni] = max(mtemp);
    h = histogram(ni,'BinEdges',4.5:1:15.5);
end
%%
clear
RRDstraper = h5read('D:\DATA\Parsivel_temporary\RDlevels.h5','/RRDstraper');
RRstra= h5read('D:\DATA\Parsivel_temporary\RDlevels.h5','/RRstra');
load('D:\DATA\Parsivel_temporary\DSD_parameters.mat','central_diameter');
tempx = central_diameter(3:23).';
clear central_diameter
S1 = RRDstraper(RRstra >= 0.5 & RRstra <0.6,:).';
S1sum = cumsum(S1);
S11 = RRDstraper(RRstra >= 0.6 & RRstra <0.7,:).';
S11sum = cumsum(S11);
S12 = RRDstraper(RRstra >= 0.7 & RRstra <0.8,:).';
S12sum = cumsum(S12);
S13 = RRDstraper(RRstra >= 0.8 & RRstra <0.9,:).';
S13sum = cumsum(S13);
S14 = RRDstraper(RRstra >= 0.9 & RRstra <1,:).';
S14sum = cumsum(S14);
S2 = RRDstraper(RRstra >= 1 & RRstra <1.5,:).';
S2sum = cumsum(S2);
S3 = RRDstraper(RRstra >= 1.5 & RRstra <2,:).';
S3sum = cumsum(S3);
S4 = RRDstraper(RRstra >= 2 & RRstra <2.5,:).';
S4sum = cumsum(S4);
S5 = RRDstraper(RRstra >= 2.5 & RRstra <3,:).';
S5sum = cumsum(S5);
S6 = RRDstraper(RRstra >= 3 & RRstra <3.5,:).';
S6sum = cumsum(S6);
S7 = RRDstraper(RRstra >= 3.5 & RRstra <4,:).';
S7sum = cumsum(S7);
S8 = RRDstraper(RRstra >= 4 & RRstra <4.5,:).';
S8sum = cumsum(S8);
S9 = RRDstraper(RRstra >= 4.5 & RRstra <5,:).';
S9sum = cumsum(S9);
%%
figure;
set(gcf,'Position',get(0,'screensize'));
Sarr = {S1,S2,S3,S4,S5,S6,S7,S8,S9,S11,S12,S13,S14};
for Sk = 8:9
    figure(Sk);
    set(gcf,'Position',get(0,'screensize'));
    title(['Speak',num2str(Sk)]);
    for k = 1:length(Sarr{Sk}(1,:))
        ax(k) = subplot(ceil(sqrt(length(Sarr{Sk}(1,:)))),ceil(sqrt(length(Sarr{Sk}(1,:)))),k);
        plot(tempx,Sarr{Sk}(:,k));
        %     plot(S1(:,k));
        findpeaks(Sarr{Sk}(:,k),tempx,'MinPeakHeight',12,'MinPeakProminence',5,'MinPeakDistance',0.5);
%         [pks,locs] = findpeaks(Carr{Sk}(:,k),tempx);
        %     [pks,locs,w,p] = findpeaks(S1(:,k));
       
    end
    
    saveas(gcf,['D:\DATA\OTTParsivel\Pictures\',['Speak',num2str(Sk)],'.png']);
    saveas(gcf,['E:\DATA\OTTParsivel\Pictures\new\',['Speak',num2str(Sk)],'.png']);
    close
end
%%
savename = 'D:\DATA\Parsivel_temporary\RDlevels.h5';
savenamee = 'E:\DATA\Parsivel_temporary\RDlevels.h5';

% write data
h5init(savename);
hdf5writedata(savename, '/RRDall', RRDall);
hdf5writedata(savename, '/RRDallper', RRDallper);
hdf5writedata(savename, '/RRall', RRall);
hdf5writedata(savename, '/RRDconv', RRDconv);
% hdf5writedata(savename, '/RRDconvday', RRDconvday);
hdf5writedata(savename, '/RRDconvper', RRDconvper);
hdf5writedata(savename, '/RRconv', RRconv);
hdf5writedata(savename, '/RRDstra', RRDstra);
% hdf5writedata(savename, '/RRDstra', RRDstraday);
hdf5writedata(savename, '/RRDstraper', RRDstraper);
hdf5writedata(savename, '/RRstra', RRstra);
% write data
h5init(savenamee);
hdf5writedata(savenamee, '/RRDall', RRDall);
hdf5writedata(savenamee, '/RRDallper', RRDallper);
hdf5writedata(savenamee, '/RRall', RRall);
hdf5writedata(savenamee, '/RRDconv', RRDconv);
% hdf5writedata(savenamee, '/RRDconvday', RRDconvday);
hdf5writedata(savenamee, '/RRDconvper', RRDconvper);
hdf5writedata(savenamee, '/RRconv', RRconv);
hdf5writedata(savenamee, '/RRDstra', RRDstra);
% hdf5writedata(savenamee, '/RRDstra', RRDstraday);
hdf5writedata(savenamee, '/RRDstraper', RRDstraper);
hdf5writedata(savenamee, '/RRstra', RRstra);