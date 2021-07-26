% Description:
% Classifying the Rain Events
% History:
% 2021.05.24 by zhangtc

clear;
file_root = 'D:\DATA\OTTParsivel\nonQC2019-\';
file_day = dir([file_root,'*.h5']);
Rainev_day={};
Rainev_detal = {};
temp_Rainev_day= [];
temp_Rainev_detal = [];
Conv_day = [];
Conv_detal = [];
Stra_day = [];
Stra_detal = [];

for fnum = 1 : length(file_day)
    fname = [file_root,file_day(fnum).name];
    rainflag = h5read(fname,'/rainflag');
    typeflag = h5read(fname,'/typeflag');
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
            if ~isempty(rainloc)
                temp_Rainev_day = [Rainev_day;file_day(fnum).name(1:8)];
                temp_Rainev_detal = [Rainev_detal;rainloc];
                if find()
            end
        end
    end
end
save('D:\DATA\Parsivel_temporary\Rainevents_30.mat','Rainev_day','Rainev_detal');