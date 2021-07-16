%read_parsivel putu raw data.
%Example:
%   [mTime, sp_per_dia, n_per_dia,putu ,rainflag] = read_parsivel2_putu(dataFile)
%Inputs:
%   dataFile: char
%       absolute path of parsivel Mputu data.  
%Outputs:
%   mTime: datenum
%       measurement time. (per min)
%   flag:0/1
%       0:no raindrops
%       1:raindrops detected
%   sp_per_dia:
%       level of average speed per diameter
%   n_per_dia:
%       number of raindrops per diameter
%   putu:
%       Velocity-Diameter relationship
%History:
%   2020-05-19. First Edition by Zhenping
%   2021-04-04 edited by Zhangtc

function [mTime_putu, sp_per_dia, n_per_dia,putu ,flag] = read_parsivel2_putu(dataFile)
if exist(dataFile, 'file') ~= 2
    error('file does not exist!\n%s', dataFile);
end

sp_per_dia = zeros(1, 32);
n_per_dia = zeros(1, 32);
flag = 0;
putu = zeros(32,32);
mTime_putu = 0;

fh = fopen(dataFile, 'r');
temp = textscan(fh,'%s','CollectOutput',1);

temp2 = temp{1}{2};
mTime_putu = fix(str2num(temp2(1:2)))*60 + fix(str2num(temp2(4:5))) + 1;
clear temp2

temp3 = temp{1}{3};
putu = (reshape(fix(str2num(temp3)),32,32)).';
clear temp3

for num = 1:32
    tempd = str2num(temp{1}{10+num});
    sp_per_dia(1,num) = tempd(2);
end
clear tempd
for num = 1:32
    tempd = str2num(temp{1}{42+num});
    n_per_dia(1,num) = tempd(2);
end
clear tempd

if sum(n_per_dia) > 10
    flag = 1;
end

fclose(fh);
end