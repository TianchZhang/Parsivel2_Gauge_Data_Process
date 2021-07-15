%read_parsivel source raw data.
%Example:
%   [mTime, w_code, perc_rate , accum_perc, rad_refl, visi, keng_flux] = read_parsivel2_source(filename)
%Inputs:
%   dataFile: char
%       absolute path of parsivel Mputu data.
%Outputs:
%   mTime: datenum
%       recorded measurement time. 11:30 => 11*60+30+1
%   w_code:
%       weather code(00)
%   rain_rate:
%       rain rate
%   acum_perc:
%       accumulated percipitation
%   rad_refl:
%       radar reflectivity
%   visi:
%       visibility in rain
%   keng_flux:
%       kinetic energy flux
%   snow_rate_source:
%       snow rate
%   sensor_id:
%   elec_current:
%   sensor_volt:
%   sensor_sta:
%   error_code:

%History:
%   2021-04-05. First Edition by Zhangtc.

function [mTime_source, w_code_source,rain_rate_source, accum_perc_source,...
    rad_refl_source, visi_source, keng_flux_source, elec_current, sensor_volt,...
    sensor_sta, sensor_temp, parti_num, snow_rate_source, sensor_id, error_code]...
     = read_parsivel2_source(filename)

w_code_source = NaN(1440, 1);
rain_rate_source = NaN(1440, 1);
accum_perc_source = NaN(1440, 1);
rad_refl_source = NaN(1440, 1);
visi_source = NaN(1440, 1);
keng_flux_source = NaN(1440, 1);
snow_rate_source = NaN(1440, 1);
sensor_temp = NaN(1440, 1);
parti_num = NaN(1440, 1);
sensor_id = NaN(1440, 1);
elec_current = NaN(1440, 1);
sensor_volt = NaN(1440, 1);
sensor_sta = NaN(1440, 1);
error_code = NaN(1440, 1);

if exist(filename, 'file') ~= 2
    warning('file does not exist!\n%s', filename);
    mTime_source = NaN;
else
    fid = fopen(filename, 'r');
    temp = textscan(fid, '%*s %*s %s %*s %2d %8.3f %7.2f %6.3f %5d %7.2f %4.2f %4.1f %d %d %d %7.2f %6d %3d %[^\n]');
    temp1 = char(temp{1,1});
    mTime_source = fix(str2num(temp1(:,1:2)))*60 + fix(str2num(temp1(:,4:5))) + 1
    w_code_source(mTime_source) = temp{1,2};
    rain_rate_source(mTime_source) = temp{1,3};
    accum_perc_source(mTime_source) = temp{1,4};
    rad_refl_source(mTime_source) = temp{1,5};
    visi_source(mTime_source) = temp{1,6};
    keng_flux_source(mTime_source) = temp{1,7};
    elec_current(mTime_source) = temp{1,8}; 
    sensor_volt(mTime_source) = temp{1,9};
    sensor_sta(mTime_source) = temp{1,10}; 
    sensor_temp(mTime_source) = temp{1,11};
    parti_num(mTime_source) = temp{1,12};
    snow_rate_source(mTime_source) = temp{1,13};
    sensor_id(mTime_source) = temp{1,14};
    error_code(mTime_source) = temp{1,15};
    fclose(fid);
end

end