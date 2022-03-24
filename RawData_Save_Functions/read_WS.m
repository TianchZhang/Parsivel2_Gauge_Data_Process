%read Weather Station raw data.
%Example:
%   [mTime_WS, rainf_min, rainf_hour] = read_WS(filename)
%Inputs:
%   filename: char
%       absolute path of WS data.
%Outputs:
%   mTime_WS: datenum
%       measurement time. 11:30 => 11*60+30+1
%   Pa:
%       atmospheric pressure;
%   Rc:
%       rainfall(accumulated)
%   Ri:
%       rainrate

%History:
%   2022-03-23. First Edition by Zhangtc.

function [mTime_WS,Pa, Rc, Ri] = read_WS(filename)

Pa = NaN(1440, 1);
Rc = NaN(1440, 1);
Ri = NaN(1440, 1);

fid = fopen(filename,'r','l','UTF-8');
% temp = textscan(fid, '%*s %*s %s %*s %*s %*s %*s Pa=%f Rc=%f %[^\n]','Delimiter',',');
temp = textscan(fid, '%*s %*s %s %*s %*s %*s %*s Pa=%f Rc=%f Ri=%f %[^\n]','Delimiter',',');
data = char(temp{1,1});
mTime_WS = fix(str2num(data(:,1:2)))*60 + fix(str2num(data(:,4:5))) + 1;
Pa(mTime_WS) = temp{1,2};
Rc(mTime_WS) = temp{1,3};
Ri(mTime_WS) = temp{1,4};
fclose(fid);
end