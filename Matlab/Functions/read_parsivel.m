function [mTime, n_per_diameter, n_per_speed] = read_parsivel(dataFile)
%read_parsivel read parsivel raw data.
%Example:
%   [mTime, n_per_diameter, n_per_speed] = read_parsivel(dataFile)
%Inputs:
%   dataFile: char
%       absolute path of parsivel data.
%Outputs:
%   mTime: datenum
%       measurement time. (per min)
%   n_per_diameter: array
%       number per diameter bin.
%   n_per_speed: array
%       number per speed bin.
%History:
%   2020-05-19. First Edition by Zhenping
%Contact:
%   zp.yin@whu.edu.cn

if exist(dataFile, 'file') ~= 2
    error('file does not exist!\n%s', dataFile);
end

n_per_diameter = zeros(1, 32) - 999;
n_per_speed = zeros(1, 32) - 999;
mTime = -999;

try
    
    fh = fopen(dataFile, 'r');

    cLine = fgetl(fh);
    mTime = datenum(cLine(1:16), 'yyyy-mm-dd HH:MM');

    fgetl(fh);

    % interpret diameter data
    cLine = fgetl(fh);
    cData = strsplit(cLine, {' ', ','});
    for iBin = 1:32
        n_per_diameter(iBin) = str2double(cData{2*iBin});
    end

    % interpret speed data
    cLine = fgetl(fh);
    cData = strsplit(cLine, {' ', ','});
    for iBin = 1:32
        n_per_speed(iBin) = str2double(cData{2*iBin});
    end

catch
    warning('failed to read %s', dataFile);
end

fclose(fh);

end