%Description:
%Calculating the contributions to R in different diameters
% History:
% 2022.01.08 by zhangtc
clear
RRall=[];%Rainrate in this minute
RRconv = [];
RRstra = [];
RRDall = [];
RRDconv = [];%Rainrate from diameter levels(3:23)
RRDstra = [];
RRDallper = [];%Percentage of rainrate from diameter levels
RRDconvper = [];
RRDstraper = [];
load('D:\DATA\Parsivel_temporary\DSD_parameters.mat','central_diameter');
load('D:\DATA\Parsivel_temporary\DSD_parameters.mat','central_speed');
load('D:\DATA\Parsivel_temporary\DSD_parameters.mat','diameter_bandwidth');
file_root = 'D:\DATA\OTTParsivel\nonQC2019-\';
file_day = dir([file_root,'*.h5']);

for fnum = 1 : length(file_day)
    fnum
    fname = [file_root,file_day(fnum).name];
    RR = h5read(fname,'/RR');
    %     rainflag = h5read(fname,'/rainflag');
    typeflag = h5read(fname,'/typeflag');
    putu = h5read(fname,'/Mputu');
    temp_t = datenum(fix(str2double(file_day(fnum).name(1:4))),...
        fix(str2double(file_day(fnum).name(5:6))),...
        fix(str2double(file_day(fnum).name(7:8))));
    temp_day = temp_t - datenum(2019,5,31);
    
    if   temp_day >0 && temp_day < 732
        rainkeya = find(RR >0.1);
        if ~isempty(rainkeya)
            RRall = [RRall;RR(rainkeya)];
            for raink = 1:length(rainkeya)
                tempR = zeros(1,21);
                for di = 3:23
                    for vj = 1:32
                        tempR(di-2)= tempR(di-2) + 6 * pi * (1e-4) .* putu(vj,di,rainkeya(raink)) .* central_diameter(di).^3 ./ (0.0054.*60);
                    end
                end
                RRDall = [RRDall;tempR];
                RRDallper = [RRDallper;tempR./RR(rainkeya(raink))];
                clear tempR
            end
        end
        
        rainkeyc = find(typeflag == 1);
        if ~isempty(rainkeyc)
            RRconv = [RRconv;RR(rainkeyc)];
            for raink = 1:length(rainkeyc)
                tempR = zeros(1,21);
                for di = 3:23
                    for vj = 1:32
                        tempR(di-2)= tempR(di-2) + 6 * pi * (1e-4) .* putu(vj,di,rainkeyc(raink)) .* central_diameter(di).^3 ./ (0.0054.*60);
                    end
                end
                RRDconv = [RRDconv;tempR];
                RRDconvper = [RRDconvper;tempR./RR(rainkeyc(raink))];
                clear tempR
            end
        end
        clear raink
        rainkeys = find(typeflag == 2);
        if ~isempty(rainkeys)
            RRstra = [RRstra;RR(rainkeys)];
            for raink = 1:length(rainkeys)
                tempR = zeros(1,21);
                for di = 3:23
                    for vj = 1:32
                        tempR(di-2)= tempR(di-2) + 6 * pi * (1e-4) .* putu(vj,di,rainkeys(raink)) .* central_diameter(di).^3 ./ (0.0054.*60);
                    end
                end
                RRDstra = [RRDstra;tempR];
                RRDstraper = [RRDstraper;tempR./RR(rainkeys(raink))];
                clear tempR
            end
        end
    end
end
RRDallper = RRDallper.*100;
RRDconvper = RRDconvper.*100;
RRDstraper = RRDstraper.*100;
%%
C1 = RRDconvper(RRconv >= 5 & RRconv <6,:).';
C1sum = cumsum(C1).';



%%
savename = 'D:\DATA\Parsivel_temporary\RDlevels.h5';
savenamee = 'E:\DATA\Parsivel_temporary\RDlevels.h5';

h5init(savename);
% write data
hdf5writedata(savename, '/RRall', RRall);
hdf5writedata(savename, '/RRDall', RRDall);
hdf5writedata(savename, '/RRDallper', RRDallper);
hdf5writedata(savename, '/RRconv', RRconv);
hdf5writedata(savename, '/RRDconv', RRDconv);
hdf5writedata(savename, '/RRDconvper', RRDconvper);
hdf5writedata(savename, '/RRstra', RRstra);
hdf5writedata(savename, '/RRDstra', RRDstra);
hdf5writedata(savename, '/RRDstraper', RRDstraper);
h5init(savenamee);
% write data
hdf5writedata(savenamee, '/RRall', RRall);
hdf5writedata(savenamee, '/RRDall', RRDall);
hdf5writedata(savenamee, '/RRDallper', RRDallper);
hdf5writedata(savenamee, '/RRconv', RRconv);
hdf5writedata(savenamee, '/RRDconv', RRDconv);
hdf5writedata(savenamee, '/RRDconvper', RRDconvper);
hdf5writedata(savenamee, '/RRstra', RRstra);
hdf5writedata(savenamee, '/RRDstra', RRDstra);
hdf5writedata(savenamee, '/RRDstraper', RRDstraper);