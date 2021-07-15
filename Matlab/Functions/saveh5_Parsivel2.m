%Description:
%Convert Parsivel and Gauge data into H5 files
% History:
% 2020-05-19. First Edition by Zhenping
% 2021-04-01 by Zhangtc
%Example:
%   [h5Filepath] = saveh5_Parsivel2_Gauge(Mfolder, Sfile,savePath)
%Inputs:
%   Mfolder: char
%       folder of parsivel Minute data. '/Mputu'
%   Sfile: char
%       file of parsivel Source data. '/DataSource'
%   savePath: char
%       path for saving the HDF5 file.
%Keywords:
%   force: logical
%       whether to create the save path forcefully.
%   (optional)Sernum:double
%       the 'Sernum'th file where function starts.
%   [h5Filepath] = saveh5_Parsivel2(Mfolder, Sfolder, savePath)
%   [h5Filepath] = saveh5_Parsivel2(Mfolder, Sfolder, savePath, 'Sernum',10)
%Outputs:
%   h5Filepath: char
%       absolute path of the HDF5 file.

function [h5Filepath] = saveh5_Parsivel2(Mfolder, Sfolder, savePath, varargin)

p = inputParser;
p.KeepUnmatched = true;

addRequired(p, 'Mfolder', @ischar);
addRequired(p, 'Sfile', @ischar);
addRequired(p, 'savePath', @ischar);
addParameter(p, 'force', false, @islogical);
addParameter(p,'Sernum',1,@isnumeric);
parse(p, Mfolder, Sfolder, savePath, varargin{:});

if ~ exist(Mfolder, 'dir')
    error('Mputu folder does not exist!\n%s', Mfolder);
end
if ~ exist(Sfolder, 'dir')
    error('Source file does not exist!\n%s', Sfolder);
end

%% global attributes
globalAttris.instrument = 'Parsivel';
globalAttris.Conventions = 'CF-1.0';
globalAttris.location = 'Wuhan';
globalAttris.institute = 'MUA';
globalAttris.source = 'Operational measurements';
globalAttris.station_longitude = 114.37;
globalAttris.station_latitude = 30.53;
globalAttris.station_altitude = 72;
globalAttris.parsivel_sampling_area = '54.0 cm^2';
globalAttris.parsivel_sampling_time = '60 s';

%%
h5Filepath = '';
files = dir(Mfolder);
if isempty(files)
    warning('No data files were found.');
    h5Filepath = '';
    return;
else
    for ifolder = 2 + p.Results.Sernum : length(files)
        if ~files(ifolder).isdir
            coutinue
        end
        h5Filename = sprintf('parsivel_wuhan_%s.h5', files(ifolder).name);
        rain_flag = NaN(1440,1);
        splv_dia = NaN(1440,32);
        num_dia = NaN(1440,32);
        Mputu = NaN(32,32,1440);
        
        sourcefname = [Sfolder,'\PS_57494_',files(ifolder).name,'.DAT'];
        [mTime_source, w_code_source,rain_rate_source, accum_perc_source,...
            rad_refl_source, visi_source, keng_flux_source, elec_current, sensor_volt,...
            sensor_sta, sensor_temp, parti_num, snow_rate_source, sensor_id, error_code]...
            = read_parsivel2_source(sourcefname);
        ftxts = dir([fullfile(Mfolder,files(ifolder).name),'\*.txt']);
        for ifile =1:length(ftxts)
            %             fprintf('Reading %s.\n', ftxts(ifile).name);
            tempname = [fullfile(Mfolder,files(ifolder).name),'\',ftxts(ifile).name];
            [mTime_putu, sp_per_dia, n_per_dia,putu ,flag] = read_parsivel2_putu(tempname);
            rain_flag(mTime_putu) = flag;
            splv_dia(mTime_putu,:) = sp_per_dia;
            num_dia(mTime_putu,:) = n_per_dia;
            Mputu(:,:,mTime_putu) = putu;
        end
        
        if (~ exist(savePath, 'dir')) && p.Results.force
            mkdir(savePath);
        elseif (~ exist(savePath, 'dir'))
            error('savePath does not exist!\n%s', savePath);
        end
        
        thisH5Filepath = fullfile(savePath, sprintf('parsivel_wuhan_%s.h5',files(ifolder).name));
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
        hdf5writedata(thisH5Filepath, '/Mputu/rain_flag', rain_flag, ...
            'dataAttr', ...
            struct('Units', '', 'long_name', 'rainflag'));
        
        hdf5writedata(thisH5Filepath, '/Mputu/avsp_per_dia', splv_dia, ...
            'dataAttr', ...
            struct('Units', '', ...
            'long_name', 'level of average speed per diameter'));
        
        hdf5writedata(thisH5Filepath, '/Mputu/num_per_dia', num_dia, ...
            'dataAttr', ...
            struct('Units', '', ...
            'long_name', 'number of raindrops per diameter'));
        
        hdf5writedata(thisH5Filepath, '/Mputu/putu', Mputu, ...
            'dataAttr', ...
            struct('Units', '', 'long_name', ''));
        
        hdf5writedata(thisH5Filepath, '/Source/recorded_time', mTime_source, ...
            'dataAttr', ...
            struct('Units', '', 'long_name', 'recorded measurement time'));
        
        hdf5writedata(thisH5Filepath, '/Source/w_code', w_code_source, ...
            'dataAttr', ...
            struct('Units', '', 'long_name', 'weather code'));
        hdf5writedata(thisH5Filepath, '/Source/rain_rate',rain_rate_source, ...
            'dataAttr', ...
            struct('Units', 'mm*h^{-1}',  'long_name', 'rain rate'));
        hdf5writedata(thisH5Filepath, '/Source/accum_rainfall',accum_perc_source, ...
            'dataAttr', ...
            struct('Units', 'mm',  'long_name', 'accumulated rainfall'));
        hdf5writedata(thisH5Filepath, '/Source/rad_refl',rad_refl_source, ...
            'dataAttr', ...
            struct('Units', 'dBZ',  'long_name', 'radar_reflection'));
        hdf5writedata(thisH5Filepath, '/Source/visi',visi_source, ...
            'dataAttr', ...
            struct('Units', 'm',  'long_name', 'visibility in rain'));
        hdf5writedata(thisH5Filepath, '/Source/keng_flux',keng_flux_source, ...
            'dataAttr', ...
            struct('Units', 'J*(m^2*h)^{-1}',  'long_name', 'kinetic energy flux'));
        hdf5writedata(thisH5Filepath, '/Source/snow_rate',snow_rate_source, ...
            'dataAttr', ...
            struct('Units', 'mm*h^{-1}',  'long_name', 'snow rate'));
        hdf5writedata(thisH5Filepath, '/Source/parti_num', parti_num, ...
            'dataAttr', ...
            struct('Units', '',  'long_name', 'particle number'));
        
        hdf5writedata(thisH5Filepath, '/Sensor/sensor_id',sensor_id, ...
            'dataAttr', ...
            struct('Units', '',  'long_name', 'sensor_id'));
        hdf5writedata(thisH5Filepath, '/Sensor/elec_current',elec_current, ...
            'dataAttr', ...
            struct('Units', 'A',  'long_name', 'electric current'));
        hdf5writedata(thisH5Filepath, '/Sensor/sensor_volt',sensor_volt, ...
            'dataAttr', ...
            struct('Units', 'V',  'long_name', 'sensor voltage'));
        hdf5writedata(thisH5Filepath, '/Sensor/sensor_sta',sensor_sta, ...
            'dataAttr', ...
            struct('Units', '',  'long_name', 'sensor state'));
        hdf5writedata(thisH5Filepath, '/Sensor/error_code',error_code, ...
            'dataAttr', ...
            struct('Units', '',  'long_name', 'error code'));
        hdf5writedata(thisH5Filepath, '/Sensor/sensor_temp',sensor_temp, ...
            'dataAttr', ...
            struct('Units', '¡æ',  'long_name', 'sensor temperature'));
        
    end
end
end
