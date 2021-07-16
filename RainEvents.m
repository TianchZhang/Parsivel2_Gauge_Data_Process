% Description:
% Classifying the Rain Events
% History:
% 2021.05.24 by zhangtc

clear;
file_root = 'E:\DATA\OTTParsivel\QC2019-\';
file_day = dir([file_root,'*.h5']);
Rainev_day={};
Rainev_detal = {};

for fnum = 1 : length(file_day)
    fname = [file_root,file_day(fnum).name];
    rainflag = h5read(fname,'/rainflag');
    
    if sum(rainflag) > 30
        cons5 = circshift(smooth(rainflag,5),-2);
        cons5(1437:1440) = 0;
        loc5 = find(cons5 ==1);
        nloc5 = length(loc5);
        if nloc5 > 0
            temploc5 = circshift(loc5,-1);
            temploc5(nloc5) = 1437;
            inter30 = find((temploc5 - loc5) > 30);
            count = length(inter30);
            
            if 1437 - loc5(nloc5) < 30
                nrain = count + 1;
                rainloc = zeros(nrain,3);
                for inum = 1:nrain
                    if inum == 1
                        rainloc(inum,1) = loc5(1);
                    else
                        rainloc(inum,1) = temploc5(inter30(inum-1));
                    end
                    if inum == nrain
                        rainloc(inum,2) = loc5(nloc5)+4;
                    else
                        rainloc(inum,2) = loc5(inter30(inum))+4;
                    end
                    rainloc(inum,3) = sum(rainflag(rainloc(inum,1):rainloc(inum,2)));
                end
            else
                nrain = count;
                rainloc = zeros(nrain,3);
                for inum = 1:nrain
                    if inum == 1
                        rainloc(inum,1) = loc5(1);
                    else
                        rainloc(inum,1) = temploc5(inter30(inum-1));
                    end
                    rainloc(inum,2) = loc5(inter30(inum))+4;
                    rainloc(inum,3) = sum(rainflag(rainloc(inum,1):rainloc(inum,2)));
                end
            end
            key = [];
            for inum = 1:nrain
                if rainloc(inum,2) - rainloc(inum,1) + 1 < 30
                    key = [key,inum];
                end
            end
            rainloc(key,:)=[];
            if length(rainloc) > 0
                Rainev_day = [Rainev_day;file_day(fnum).name(1:8)];
                Rainev_detal = [Rainev_detal;rainloc];
            end
        end
    end
end
save('E:\DATA\OTTParsivel\Rainevents_30.mat','Rainev_day','Rainev_detal');