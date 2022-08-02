% Description:
% Classifying the Rain Events
% PS:
%   excluding non-rain days manually
%
% History:
% 2021.05.24 by zhangtc

clear
nonrain = ["20190404";"20190405";"20190406";"20190407";...
    "20191218";"20200109";"20200115";"20200116";"20200125";...
    "20200215";"20201213";"20201214";"20201229"];
file_root = 'E:\DATA\OTTParsivel\nonQC2019mR-\';
file_day = dir([file_root,'*.h5']);
Rainev_day={};
Rainev_detal = {};
Conv_day = {};
Conv_detal = {};
Stra_day = {};
Stra_detal = {};
Rainev_day_30={};
Rainev_detal_30 = {};
Conv_day_30 = {};
Conv_detal_30 = {};
Stra_day_30 = {};
Stra_detal_30 = {};
for fnum = 1 : length(file_day)
    fname = [file_root,file_day(fnum).name];
    if ~any(contains(nonrain,file_day(fnum).name(1:8)))
        rainflag = h5read(fname,'/rainflag');
        typeflag = h5read(fname,'/typeflag');
        if sum(rainflag) > 10
            cons5 = circshift(smooth(rainflag,3),-1);
            cons5(1439:1440) = 0;
            loc5 = find(cons5 ==1);
            nloc5 = length(loc5);
            if nloc5 > 0
                temploc5 = circshift(loc5,-1);
                temploc5(nloc5) = 1439;
                inter30 = find((temploc5 - loc5) > 30);
                count = length(inter30);
                
                if 1439 - loc5(nloc5) < 30
                    nrain = count + 1;
                    rainloc = zeros(nrain,3);
                    for inum = 1:nrain
                        if inum == 1
                            rainloc(inum,1) = loc5(1);
                        else
                            rainloc(inum,1) = temploc5(inter30(inum-1));
                        end
                        if inum == nrain
                            rainloc(inum,2) = loc5(nloc5)+2;
                        else
                            rainloc(inum,2) = loc5(inter30(inum))+2;
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
                        rainloc(inum,2) = loc5(inter30(inum))+2;
                        rainloc(inum,3) = sum(rainflag(rainloc(inum,1):rainloc(inum,2)));
                    end
                end
                
                cflag = 0;
                sflag = 0;
                tempc = [];
                temps = [];
                if ~isempty(rainloc)
                    Rainev_day = [Rainev_day;file_day(fnum).name(1:8)];
                    Rainev_detal = [Rainev_detal;rainloc];
                    for knum = 1:size(rainloc,1)
                        if any(typeflag(rainloc(knum,1):rainloc(knum,2)) == 1)
                            cflag = 1;
                            tempc = [tempc;rainloc(knum,:)];
                        end
                        if any(typeflag(rainloc(knum,1):rainloc(knum,2)) == 2)
                            sflag = 1;
                            temps = [temps;rainloc(knum,:)];
                        end
                    end
                    if cflag
                        Conv_day = [Conv_day;file_day(fnum).name(1:8)];
                        Conv_detal = [Conv_detal;tempc];
                    end
                    if sflag
                        Stra_day = [Stra_day;file_day(fnum).name(1:8)];
                        Stra_detal = [Stra_detal;temps];
                    end
                end
                
                key = [];
                for inum = 1:nrain
                    if rainloc(inum,2) - rainloc(inum,1) + 1 < 30
                        key = [key,inum];
                    end
                end
                rainloc(key,:)=[];
                cflag = 0;
                sflag = 0;
                tempc = [];
                temps = [];
                if ~isempty(rainloc)
                    Rainev_day_30 = [Rainev_day_30;file_day(fnum).name(1:8)];
                    Rainev_detal_30 = [Rainev_detal_30;rainloc];
                    for knum = 1:size(rainloc,1)
                        if any(typeflag(rainloc(knum,1):rainloc(knum,2)) == 1)
                            cflag = 1;
                            tempc = [tempc;rainloc(knum,:)];
                        end
                        if any(typeflag(rainloc(knum,1):rainloc(knum,2)) == 2)
                            sflag = 1;
                            temps = [temps;rainloc(knum,:)];
                        end
                    end
                    if cflag
                        Conv_day_30 = [Conv_day_30;file_day(fnum).name(1:8)];
                        Conv_detal_30 = [Conv_detal_30;tempc];
                    end
                    if sflag
                        Stra_day_30 = [Stra_day_30;file_day(fnum).name(1:8)];
                        Stra_detal_30 = [Stra_detal_30;temps];
                    end
                end
                
            end
        end
    end
end
save('D:\DATA\Parsivel_temporary\Rainevents-allR-3-30.mat',...
    'Rainev_day','Rainev_detal','Rainev_day_30','Rainev_detal_30',...
    'Conv_day','Conv_detal','Conv_day_30','Conv_detal_30',...
    'Stra_day','Stra_detal','Stra_day_30','Stra_detal_30');
save('E:\DATA\Parsivel_temporary\Rainevents-allR-3-30.mat',...
    'Rainev_day','Rainev_detal','Rainev_day_30','Rainev_detal_30',...
    'Conv_day','Conv_detal','Conv_day_30','Conv_detal_30',...
    'Stra_day','Stra_detal','Stra_day_30','Stra_detal_30');