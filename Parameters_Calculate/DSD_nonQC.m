
%Description:
%DSD characters(NON-quality control)
% correction of raindrop diameters  was not conducted
% History:
% 2021-05-08 by zhangtc

clear;
nonrain = ["20190404";"20190405";"20190406";"20190407";...
    "20191218";"20200109";"20200115";"20200116";"20200125";...
    "20200215";"20201213";"20201214";"20201229"];
savepath ='E:\DATA\OTTParsivel\nonQC2019-\';
file_root = 'E:\DATA\OTTParsivel\57494\Mputu\';
file_day = dir(file_root);
load('D:\DATA\Parsivel_temporary\DSD_parameters.mat','speed_coe');
load('D:\DATA\Parsivel_temporary\DSD_parameters.mat','central_diameter');
load('D:\DATA\Parsivel_temporary\DSD_parameters.mat','central_speed');
load('D:\DATA\Parsivel_temporary\DSD_parameters.mat','diameter_bandwidth');
for fnum = 3:length(file_day)
    if ~any(contains(nonrain,file_day(fnum).name))
        fname = [file_root,file_day(fnum).name];
        
        Mputu = zeros(32,32,1440);
        rainflag = zeros(1440,1)-1;
        typeflag = zeros(1440,1);
        
        ND = zeros(1440,32);
        Dm = zeros(1440,1);
        Delt_m = zeros(1440,1);
        Nw = zeros(1440,1);
        
        RR = zeros(1440,1);
        LWC = zeros(1440,1);
        Z = zeros(1440,1);
        Rainfall = 0;
        
        M2 = zeros(1440,1);
        M3 = zeros(1440,1);
        M4 = zeros(1440,1);
        M6 = zeros(1440,1);
        mu = zeros(1440,1);
        lamd = zeros(1440,1);
        N0 = zeros(1440,1);
        D0 = zeros(1440,1);
        ftxts = dir([fname,'\*.txt']);
        for ifile =1:length(ftxts)
            %             fprintf('Reading %s.\n', ftxts(ifile).name);
            tempname = [fname,'\',ftxts(ifile).name];
            [mTime_putu, sp_per_dia, n_per_dia,putu ,flag] = read_parsivel2_putu(tempname);
            putu(:,[1:2,24:32]) = 0;
            temp_putu = putu .* speed_coe;
            clear putu
            rainflag(mTime_putu) = 0;
            if sum(sum(temp_putu)) > 10
                Mputu(:,:,mTime_putu) = temp_putu;
                rainflag(mTime_putu) = 1;
                for di = 3:23
                    for vj = 1:32
                        ND(mTime_putu,di) = ND(mTime_putu,di) + temp_putu(vj,di)./(0.0054.*60 .* central_speed(vj).*diameter_bandwidth(di));
                        RR(mTime_putu) = RR(mTime_putu) + 6 * pi * (1e-4) .* temp_putu(vj,di) .* central_diameter(di).^3 ./ (0.0054.*60);
                        LWC(mTime_putu) = LWC(mTime_putu) + pi/6 * (1e-3) .* temp_putu(vj,di) .* central_diameter(di).^3 ./ (0.0054.*60.*central_speed(vj));
                    end
                    M2(mTime_putu) = M2(mTime_putu) + ND(mTime_putu,di) .*central_diameter(di).^2 .* diameter_bandwidth(di);
                    M3(mTime_putu) = M3(mTime_putu) + ND(mTime_putu,di) .*central_diameter(di).^3 .* diameter_bandwidth(di);
                    M4(mTime_putu) = M4(mTime_putu) + ND(mTime_putu,di) .*central_diameter(di).^4 .* diameter_bandwidth(di);
                    M6(mTime_putu) = M6(mTime_putu) + ND(mTime_putu,di) .*central_diameter(di).^6 .* diameter_bandwidth(di);
                end
                
                Dm(mTime_putu) = M4(mTime_putu)./M3(mTime_putu);
                Z(mTime_putu) = M6(mTime_putu);
                Nw(mTime_putu) = 4^4 ./ pi .* 1e3 .* LWC(mTime_putu) ./ (Dm(mTime_putu) .^4);
                
                ita =(M4(mTime_putu).^2)./(M2(mTime_putu) .* M6(mTime_putu));
                mu(mTime_putu) = ((7-11*ita)-sqrt(ita^.2+14*ita+1))./(2*(ita-1));
                lamd(mTime_putu) = sqrt((M2(mTime_putu) .* gamma(mu(mTime_putu)+5))./(M4(mTime_putu) .* gamma(mu(mTime_putu)+3)));
                N0(mTime_putu) = M6(mTime_putu)*lamd(mTime_putu).^(mu(mTime_putu)+6+1)./gamma(mu(mTime_putu)+6+1);
                temp = 0;
                for di = 3:23
                    temp = temp + (central_diameter(di)-Dm(mTime_putu)).^2 .* ...
                        ND(mTime_putu,di) .*central_diameter(di).^3 .* diameter_bandwidth(di);
                end
                Delt_m(mTime_putu) = sqrt(temp ./ M3(mTime_putu));
                D0(mTime_putu) = (mu(mTime_putu)+3.67)./lamd(mTime_putu);
                clear temp
                if RR(mTime_putu) <0.01
                    Mputu(:,:,mTime_putu) = 0;
                    rainflag(mTime_putu) = 0;
                    ND(mTime_putu,:) = 0;
                    RR(mTime_putu) = 0;
                    LWC(mTime_putu) = 0;
                    Dm(mTime_putu) = 0;
                    Z(mTime_putu) = 0;
                    Nw(mTime_putu) = 0;
                    Delt_m(mTime_putu) = 0;
                    mu(mTime_putu) = 0;
                    lamd(mTime_putu) = 0;
                    N0(mTime_putu) = 0;
                    D0(mTime_putu) = 0;
                end
                
            else
                continue
            end
            
        end
        
        Rainfall = sum(RR)./60;
        
        if any(rainflag > 0)
            temp_rf = rainflag;
            temp_rf(RR < 0.5) = 0;
            temp_r = smooth(temp_rf,11);
            clear temp_rf
            temp_r([1:5,end-4:end]) = 0;
            temp_loc = find(abs(temp_r-1)<0.00001);
            if ~isempty(temp_loc)
                for num = 1:length(temp_loc)
                    temp_RR = RR(temp_loc(num) - 5:temp_loc(num) + 5);
                    if mean(temp_RR) >= 5.0
                        if std(temp_RR) > 1.5
                            typeflag(temp_loc(num)) = 1;%convective
                        else
                            typeflag(temp_loc(num)) = 10;
                        end
                    else
                        if mean(temp_RR) < 5.0
                            if std(temp_RR) <= 1.5
                                typeflag(temp_loc(num)) = 2;%stratiform
                            else
                                typeflag(temp_loc(num)) = 20;
                            end
                        end
                    end
                end
            end
            clear temp_r

            savename = [savepath,file_day(fnum).name,'.h5'];
            
            h5init(savename);
            % write data
            hdf5writedata(savename, '/rainflag', rainflag, ...
                'dataAttr', ...
                struct('Units', '', 'long_name', 'rainflag'));
            
            hdf5writedata(savename, '/typeflag', typeflag, ...
                'dataAttr', ...
                struct('Units', '', 'long_name', 'typeflag'));
            
            hdf5writedata(savename, '/Mputu', Mputu, ...
                'dataAttr', ...
                struct('Units', '', ...
                'long_name', 'Mputu'));
            
            hdf5writedata(savename, '/ND', ND, ...
                'dataAttr', ...
                struct('Units', '', ...
                'long_name', 'number concentration of raindrops'));
            
            hdf5writedata(savename, '/RR', RR, ...
                'dataAttr', ...
                struct('Units', 'mm*h{-1}', 'long_name', 'rainrate'));
            hdf5writedata(savename, '/Rainfall', Rainfall, ...
                'dataAttr', ...
                struct('Units', 'mm', 'long_name', 'rainfall'));
            
            hdf5writedata(savename, '/LWC', LWC, ...
                'dataAttr', ...
                struct('Units', 'g*m^{-3}', 'long_name', 'liquid water content'));
            
            hdf5writedata(savename, '/Dm', Dm, ...
                'dataAttr', ...
                struct('Units', 'mm', 'long_name', 'mass-weighted mean diameter'));
            hdf5writedata(savename, '/D0', D0, ...
                'dataAttr', ...
                struct('Units', 'mm', 'long_name', 'volume-weighted mean diameter'));
            hdf5writedata(savename, '/Nw',Nw, ...
                'dataAttr', ...
                struct('Units', 'mm^{-1}*m^{-3}',  'long_name', 'normalized intercept parameter'));
            hdf5writedata(savename, '/Z',Z, ...
                'dataAttr', ...
                struct('Units', 'mm^6*m^{-3}',  'long_name', 'radar reflectivity factor'));
            hdf5writedata(savename, '/Delt_m',Delt_m, ...
                'dataAttr', ...
                struct('Units', 'mm',  'long_name', 'mass spectrum standard deviation'));
            hdf5writedata(savename, '/mu',mu, ...
                'dataAttr', ...
                struct('Units', '',  'long_name', 'shape parameter'));
            hdf5writedata(savename, '/lamd',lamd, ...
                'dataAttr', ...
                struct('Units', '',  'long_name', 'slope'));
            hdf5writedata(savename, '/N0',N0, ...
                'dataAttr', ...
                struct('Units', 'm^{-3}*mm^{-1-¦Ì}',  'long_name', 'intercept parameter'));
            hdf5writedata(savename, '/Mn/M2', M2, ...
                'dataAttr', ...
                struct('Units', '', 'long_name', 'M2'));
            hdf5writedata(savename, '/Mn/M3', M3, ...
                'dataAttr', ...
                struct('Units', '', 'long_name', 'M3'));
            hdf5writedata(savename, '/Mn/M4', M4, ...
                'dataAttr', ...
                struct('Units', '', 'long_name', 'M4'));
            max(lamd)
            min(lamd)
        end
    end
end

