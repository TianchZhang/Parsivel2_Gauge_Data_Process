%read gauge raw data.
%Example:
%   [mTime_gauge, rainf_min, rainf_hour] = read_gauge(filename)
%Inputs:
%   filename: char
%       absolute path of gauge data.
%Outputs:
%   mTime_gauge: datenum
%       measurement time. 11:30 => 11*60+30+1
%   rainf_min:
%       rainfall this minute;
%   rainf_hour:
%       rainfall this hour(accumulated)

%History:
%   2021-04-05. First Edition by Zhangtc.

function [mTime_gauge, rainf_min, rainf_hour] = read_gauge(filename)

rainf_min = NaN(1440, 1);
rainf_hour = NaN(1440, 1);

fid = fopen(filename,'r','l','UTF-8');
temp = textscan(fid, '%*s %s %f %f %f %[^\n]');
data = char(temp{1,1});
mTime_gauge = fix(str2num(data(:,1:2)))*60 + fix(str2num(data(:,4:5))) + 1;
temp2 = temp{1,2};
temp3 = temp{1,3};
rainf_min(mTime_gauge) = temp2;
rainf_hour(mTime_gauge) = temp3;
clear temp2 temp3
fclose(fid);
end