%Description:
%Parsivel-Gauge pairs
%
% History:
% 2021-12-20 by zhangtc

clear
par2019 = [];
par2020 = [];
gau2019 = [];
gau2020 = [];

file_root = 'D:\DATA\OTTParsivel\nonQC2019-\';
file_day = dir([file_root,'*.h5']);

temp_time2019 = datenum(2019,5,31);
temp_time2020 = datenum(2020,5,31);

for fnum = 1 : length(file_day)
    fname = [file_root,file_day(fnum).name];
%     rfh = sum(reshape(h5read(fname,'/RR'),60,[])).'./60;
    rainfh = h5read(fname,'/Rainfall_h');
    if isfile(['D:\DATA\OTTParsivel\Gauge2019-\','raingauge_wuhan_',file_day(fnum).name])
        %         tempgrainfh = h5read(['D:\DATA\OTTParsivel\Gauge2019-\','raingauge_wuhan_',file_day(fnum).name],'/rainfall_minute');
        grainfh = h5read(['D:\DATA\OTTParsivel\Gauge2019-\','raingauge_wuhan_',file_day(fnum).name],'/rainf_h');
        loc = find(rainfh);
        temp_t = datenum(fix(str2double(file_day(fnum).name(1:4))),...
            fix(str2double(file_day(fnum).name(5:6))),...
            fix(str2double(file_day(fnum).name(7:8))));
        temp_day = temp_t - temp_time2019;
        if   temp_day >0
            if temp_day < 367
                if ~isempty(loc)
                    for ik = 1:length(loc)
                        if  grainfh(loc(ik))
                            par2019 = [par2019;rainfh(loc(ik))];
                            gau2019 = [gau2019;grainfh(loc(ik))];
                        end
                    end
                end
            else
                if temp_day < 732
                    if ~isempty(loc)
                        for ik = 1:length(loc)
                            if  grainfh(loc(ik))
                                par2020 = [par2020;rainfh(loc(ik))];
                                gau2020 = [gau2020;grainfh(loc(ik))];
                            end
                        end
                    end
                end
            end
        end
    end
end
par = [par2019;par2020];
gau = [gau2019;gau2020];
tempp = par - gau;
par(tempp > 10) = [];
gau(tempp > 10) = [];
save('D:\DATA\Parsivel_temporary\parsivel_gauge.mat',...
    'par2019','par2020','gau2019','gau2020','par','gau');
save('E:\DATA\Parsivel_temporary\parsivel_gauge.mat',...
    'par2019','par2020','gau2019','gau2020','par','gau');