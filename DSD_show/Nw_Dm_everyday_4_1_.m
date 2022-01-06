%Description:
%scatter of log10(Nw)-Dm everyday
% History:
% 2021.05.06 first by zhangtc
%
savepath = 'E:\DATA\OTTParsivel\Pictures\Nw-Dm\';
file_root = 'D:\DATA\OTTParsivel\nonQC2019-\';
file_day = dir([file_root,'*.h5']);
for fnum = 1 : length(file_day)
    fname = [file_root,file_day(fnum).name];
    Nw_conv = [];
    Dm_conv = [];
    Nw_stra= [];
    Dm_stra = [];
    typeflag = h5read(fname,'/typeflag');
    loc1 = find(typeflag == 1);
    loc2 = find(typeflag == 2);
 
    if length(loc1)+length(loc2) > 1
        Nw = h5read(fname,'/Nw');
        Dm = h5read(fname,'/Dm');
        Nw_conv = log10(Nw(loc1));
        Dm_conv = Dm(loc1);
        Nw_stra= log10(Nw(loc2));
        Dm_stra = Dm(loc2);

        figure;
        Nw_Dm_show(Nw_conv,Dm_conv,Nw_stra,Dm_stra);
        title({'log_{10}Nw-Dm'; file_day(fnum).name(1:8)});
        saveas(gcf,[savepath,file_day(fnum).name(1:8),'.png']);
        saveas(gcf,['D:\DATA\OTTParsivel\Pictures\Nw-Dm\',file_day(fnum).name(1:8),'.png']);
        close

    end
end