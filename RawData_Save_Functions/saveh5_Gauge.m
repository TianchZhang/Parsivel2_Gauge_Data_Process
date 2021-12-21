%Description:
%Convert Gauge data into H5 files
% History:
% 2020-05-21. First Edition by Zhenping
% 2021-04-01 by Zhangtc
%Example:
%   [h5Filepath] = saveh5_Gauge(Gfolder,savePath)
%Inputs:
%   Gfolder: char
%       Gfolder of Gauge data.'/Files/MData/'
%   savePath: char
%       savePath of Gauge data.
%Keywords:
%   force: logical
%       whether to create the save path forcefully.
%   (optional)Sernum:double
%       the 'Sernum'th file where function starts.
%   [h5Filepath] = saveh5_Gauge(Gfolder, savePath)
%   [h5Filepath] = saveh5_Gauge( Gfolder, savePath, 'Sernum',10)
%Outputs:
%   h5Filepath: char
%       absolute path of the HDF5 file.

function [h5Filepath] = saveh5_Gauge( Gfolder, savePath, varargin)

p = inputParser;
p.KeepUnmatched = true;

addRequired(p, 'Gfolder', @ischar);
addRequired(p, 'savePath', @ischar);
addParameter(p, 'force', false, @islogical);
addParameter(p,'Sernum',1,@isnumeric);
parse(p, Gfolder, savePath, varargin{:});

if ~ exist(Gfolder, 'file')
    error('Gauge file does not exist!\n%s', Gfolder);
end

%% global attributes
globalAttris.instrument = 'Rain_gauge';
globalAttris.Conventions = 'CF-1.0';
globalAttris.location = 'Wuhan';
globalAttris.institute = 'MUA';
globalAttris.source = 'Operational measurements';
globalAttris.station_longitude = 114.37;
globalAttris.station_latitude = 30.53;
globalAttris.station_altitude = 72;

h5Filepath = char('');
files = dir (Gfolder);

for iFile = 2+p.Results.Sernum : length(files)
    fprintf('Reading %s.\n', files(iFile).name);
    [~,fname,~]=fileparts(files(iFile).name);
    [mTime_gauge, rainf_min, rainf_hour] = read_gauge(fullfile(Gfolder,files(iFile).name));
    if isnan(mTime_gauge)
        continue
    end
    temp = rainf_min;
    temp(isnan(temp)) = 0;
    rainf_h = sum(reshape(temp,60,[])).';
    
    thisH5Filepath = fullfile(savePath, sprintf('raingauge_wuhan_%s.h5',fname));
    h5Filepath = cat(1, h5Filepath, thisH5Filepath);
    %% save data to HDF5 file
    % initialize the HDF5 file (overwrite the file if it exists.)
    h5init(thisH5Filepath);
    
    % write global attributes
    gAttrs = fieldnames(globalAttris);
    
    for iField = 1:length(gAttrs)
        fn = gAttrs{iField};
        attr_item = globalAttris.(fn);
        attr_details.Name = fn;
        attr_details.AttachedTo = '/';
        attr_details.AttachType = 'group';
        
        hdf5write(thisH5Filepath, attr_details, attr_item, 'WriteMode', 'append');
    end
    
    % write data
    hdf5writedata(thisH5Filepath, '/recorded_time', mTime_gauge, ...
        'dataAttr', ...
        struct('Units', '', ...
        'long_name', 'local time', ...
        'standard_name', 'time', ...
        'calendar', 'gregorian', 'axis', 'T'), 'flagArray', true);
    
    hdf5writedata(thisH5Filepath, '/rainfall_minute', rainf_min, ...
        'dataAttr', ...
        struct('Units', 'mm', ...
        'long_name', 'rainfall_this_minute', ...
        'standard_name', 'd', 'axis', 'Y'), 'flagArray', true);
    hdf5writedata(thisH5Filepath, '/rainfall_hour', rainf_hour, ...
        'dataAttr', ...
        struct('Units', 'mm', ...
        'long_name', 'accumulated_rainfall_this_hour', ...
        'standard_name', 'd', 'axis', 'Y'), 'flagArray', true);
        hdf5writedata(thisH5Filepath, '/rainf_h', rainf_h, ...
        'dataAttr', ...
        struct('Units', 'mm', ...
        'long_name', 'accumulated_rainfall_hourly', ...
        'standard_name', 'd', 'axis', 'Y'), 'flagArray', true);
    
    
    
    
end
end