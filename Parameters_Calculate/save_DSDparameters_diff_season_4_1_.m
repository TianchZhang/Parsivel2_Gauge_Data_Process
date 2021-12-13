%Description:
%calculate DSD-parameters seasonly
% History:
% 2021.12.19 by zhangtc

%2019.06-2021.05
clear
load('D:\DATA\Parsivel_temporary\Rainevents-allR.mat','Rainev_day_30');
load('D:\DATA\Parsivel_temporary\Rainevents-allR.mat','Rainev_detal_30');

%
ND_conv_2019sum = [];
ND_stra_2019sum =[];
Nw_conv_2019sum = [];
Nw_stra_2019sum = [];
N0_stra_2019sum = [];
N0_conv_2019sum = [];
Dm_conv_2019sum = [];
Dm_stra_2019sum = [];
Delt_m_stra_2019sum = [];
Delt_m_conv_2019sum = [];
LWC_stra_2019sum = [];
LWC_conv_2019sum = [];
RR_conv_2019sum = [];
RR_stra_2019sum = [];
Z_conv_2019sum = [];
Z_stra_2019sum = [];
mu_stra_2019sum = [];
mu_conv_2019sum = [];
lamd_stra_2019sum = [];
lamd_conv_2019sum = [];
%
ND_conv_2019aut = [];
ND_stra_2019aut =[];
Nw_conv_2019aut = [];
Nw_stra_2019aut = [];
N0_stra_2019aut = [];
N0_conv_2019aut = [];
Dm_conv_2019aut = [];
Dm_stra_2019aut = [];
Delt_m_stra_2019aut = [];
Delt_m_conv_2019aut = [];
LWC_stra_2019aut = [];
LWC_conv_2019aut = [];
RR_conv_2019aut = [];
RR_stra_2019aut= [];
Z_conv_2019aut = [];
Z_stra_2019aut = [];
mu_stra_2019aut = [];
mu_conv_2019aut = [];
lamd_stra_2019aut = [];
lamd_conv_2019aut = [];
%
ND_conv_2019win = [];
ND_stra_2019win =[];
Nw_conv_2019win = [];
Nw_stra_2019win = [];
N0_stra_2019win = [];
N0_conv_2019win = [];
Dm_conv_2019win = [];
Dm_stra_2019win = [];
Delt_m_stra_2019win = [];
Delt_m_conv_2019win = [];
LWC_stra_2019win = [];
LWC_conv_2019win = [];
RR_conv_2019win = [];
RR_stra_2019win = [];
Z_conv_2019win = [];
Z_stra_2019win = [];
mu_stra_2019win = [];
mu_conv_2019win = [];
lamd_stra_2019win = [];
lamd_conv_2019win = [];
%
ND_conv_2019spr = [];
ND_stra_2019spr =[];
Nw_conv_2019spr = [];
Nw_stra_2019spr = [];
N0_stra_2019spr = [];
N0_conv_2019spr = [];
Dm_conv_2019spr = [];
Dm_stra_2019spr = [];
Delt_m_stra_2019spr = [];
Delt_m_conv_2019spr = [];
LWC_stra_2019spr = [];
LWC_conv_2019spr = [];
RR_conv_2019spr = [];
RR_stra_2019spr = [];
Z_conv_2019spr = [];
Z_stra_2019spr = [];
mu_stra_2019spr = [];
mu_conv_2019spr = [];
lamd_stra_2019spr = [];
lamd_conv_2019spr = [];
%
ND_conv_2019sum_ev = [];
ND_stra_2019sum_ev =[];
Nw_conv_2019sum_ev = [];
Nw_stra_2019sum_ev = [];
N0_stra_2019sum_ev = [];
N0_conv_2019sum_ev = [];
Dm_conv_2019sum_ev = [];
Dm_stra_2019sum_ev = [];
Delt_m_stra_2019sum_ev = [];
Delt_m_conv_2019sum_ev = [];
LWC_stra_2019sum_ev = [];
LWC_conv_2019sum_ev = [];
RR_conv_2019sum_ev = [];
RR_stra_2019sum_ev = [];
Z_conv_2019sum_ev = [];
Z_stra_2019sum_ev = [];
mu_stra_2019sum_ev = [];
mu_conv_2019sum_ev = [];
lamd_stra_2019sum_ev = [];
lamd_conv_2019sum_ev = [];
%
ND_conv_2019aut_ev = [];
ND_stra_2019aut_ev =[];
Nw_conv_2019aut_ev = [];
Nw_stra_2019aut_ev = [];
N0_stra_2019aut_ev = [];
N0_conv_2019aut_ev = [];
Dm_conv_2019aut_ev = [];
Dm_stra_2019aut_ev = [];
Delt_m_stra_2019aut_ev = [];
Delt_m_conv_2019aut_ev = [];
LWC_stra_2019aut_ev = [];
LWC_conv_2019aut_ev = [];
RR_conv_2019aut_ev = [];
RR_stra_2019aut_ev = [];
Z_conv_2019aut_ev = [];
Z_stra_2019aut_ev = [];
mu_stra_2019aut_ev = [];
mu_conv_2019aut_ev = [];
lamd_stra_2019aut_ev = [];
lamd_conv_2019aut_ev = [];
%
ND_conv_2019win_ev = [];
ND_stra_2019win_ev =[];
Nw_conv_2019win_ev = [];
Nw_stra_2019win_ev = [];
N0_stra_2019win_ev = [];
N0_conv_2019win_ev = [];
Dm_conv_2019win_ev = [];
Dm_stra_2019win_ev = [];
Delt_m_stra_2019win_ev = [];
Delt_m_conv_2019win_ev = [];
LWC_stra_2019win_ev = [];
LWC_conv_2019win_ev = [];
RR_conv_2019win_ev = [];
RR_stra_2019win_ev = [];
Z_conv_2019win_ev = [];
Z_stra_2019win_ev = [];
mu_stra_2019win_ev = [];
mu_conv_2019win_ev = [];
lamd_stra_2019win_ev = [];
lamd_conv_2019win_ev = [];
%
ND_conv_2019spr_ev = [];
ND_stra_2019spr_ev =[];
Nw_conv_2019spr_ev = [];
Nw_stra_2019spr_ev = [];
N0_stra_2019spr_ev = [];
N0_conv_2019spr_ev = [];
Dm_conv_2019spr_ev = [];
Dm_stra_2019spr_ev = [];
Delt_m_stra_2019spr_ev = [];
Delt_m_conv_2019spr_ev = [];
LWC_stra_2019spr_ev = [];
LWC_conv_2019spr_ev = [];
RR_conv_2019spr_ev = [];
RR_stra_2019spr_ev = [];
Z_conv_2019spr_ev = [];
Z_stra_2019spr_ev = [];
mu_stra_2019spr_ev = [];
mu_conv_2019spr_ev = [];
lamd_stra_2019spr_ev = [];
lamd_conv_2019spr_ev = [];
%
ND_conv_2020sum = [];
ND_stra_2020sum =[];
Nw_conv_2020sum = [];
Nw_stra_2020sum = [];
N0_stra_2020sum = [];
N0_conv_2020sum = [];
Dm_conv_2020sum = [];
Dm_stra_2020sum = [];
Delt_m_stra_2020sum = [];
Delt_m_conv_2020sum = [];
LWC_stra_2020sum = [];
LWC_conv_2020sum = [];
RR_conv_2020sum = [];
RR_stra_2020sum = [];
Z_conv_2020sum = [];
Z_stra_2020sum = [];
mu_stra_2020sum = [];
mu_conv_2020sum = [];
lamd_stra_2020sum = [];
lamd_conv_2020sum = [];
%
ND_conv_2020aut = [];
ND_stra_2020aut =[];
Nw_conv_2020aut = [];
Nw_stra_2020aut = [];
N0_stra_2020aut = [];
N0_conv_2020aut = [];
Dm_conv_2020aut = [];
Dm_stra_2020aut = [];
Delt_m_stra_2020aut = [];
Delt_m_conv_2020aut = [];
LWC_stra_2020aut = [];
LWC_conv_2020aut = [];
RR_conv_2020aut = [];
RR_stra_2020aut= [];
Z_conv_2020aut = [];
Z_stra_2020aut = [];
mu_stra_2020aut = [];
mu_conv_2020aut = [];
lamd_stra_2020aut = [];
lamd_conv_2020aut = [];
%
ND_conv_2020win = [];
ND_stra_2020win =[];
Nw_conv_2020win = [];
Nw_stra_2020win = [];
N0_stra_2020win = [];
N0_conv_2020win = [];
Dm_conv_2020win = [];
Dm_stra_2020win = [];
Delt_m_stra_2020win = [];
Delt_m_conv_2020win = [];
LWC_stra_2020win = [];
LWC_conv_2020win = [];
RR_conv_2020win = [];
RR_stra_2020win = [];
Z_conv_2020win = [];
Z_stra_2020win = [];
mu_stra_2020win = [];
mu_conv_2020win = [];
lamd_stra_2020win = [];
lamd_conv_2020win = [];
%
ND_conv_2020spr = [];
ND_stra_2020spr =[];
Nw_conv_2020spr = [];
Nw_stra_2020spr = [];
N0_stra_2020spr = [];
N0_conv_2020spr = [];
Dm_conv_2020spr = [];
Dm_stra_2020spr = [];
Delt_m_stra_2020spr = [];
Delt_m_conv_2020spr = [];
LWC_stra_2020spr = [];
LWC_conv_2020spr = [];
RR_conv_2020spr = [];
RR_stra_2020spr = [];
Z_conv_2020spr = [];
Z_stra_2020spr = [];
mu_stra_2020spr = [];
mu_conv_2020spr = [];
lamd_stra_2020spr = [];
lamd_conv_2020spr = [];
%
ND_conv_2020sum_ev = [];
ND_stra_2020sum_ev =[];
Nw_conv_2020sum_ev = [];
Nw_stra_2020sum_ev = [];
N0_stra_2020sum_ev = [];
N0_conv_2020sum_ev = [];
Dm_conv_2020sum_ev = [];
Dm_stra_2020sum_ev = [];
Delt_m_stra_2020sum_ev = [];
Delt_m_conv_2020sum_ev = [];
LWC_stra_2020sum_ev = [];
LWC_conv_2020sum_ev = [];
RR_conv_2020sum_ev = [];
RR_stra_2020sum_ev = [];
Z_conv_2020sum_ev = [];
Z_stra_2020sum_ev = [];
mu_stra_2020sum_ev = [];
mu_conv_2020sum_ev = [];
lamd_stra_2020sum_ev = [];
lamd_conv_2020sum_ev = [];
%
ND_conv_2020aut_ev = [];
ND_stra_2020aut_ev =[];
Nw_conv_2020aut_ev = [];
Nw_stra_2020aut_ev = [];
N0_stra_2020aut_ev = [];
N0_conv_2020aut_ev = [];
Dm_conv_2020aut_ev = [];
Dm_stra_2020aut_ev = [];
Delt_m_stra_2020aut_ev = [];
Delt_m_conv_2020aut_ev = [];
LWC_stra_2020aut_ev = [];
LWC_conv_2020aut_ev = [];
RR_conv_2020aut_ev = [];
RR_stra_2020aut_ev = [];
Z_conv_2020aut_ev = [];
Z_stra_2020aut_ev = [];
mu_stra_2020aut_ev = [];
mu_conv_2020aut_ev = [];
lamd_stra_2020aut_ev = [];
lamd_conv_2020aut_ev = [];
%
ND_conv_2020win_ev = [];
ND_stra_2020win_ev =[];
Nw_conv_2020win_ev = [];
Nw_stra_2020win_ev = [];
N0_stra_2020win_ev = [];
N0_conv_2020win_ev = [];
Dm_conv_2020win_ev = [];
Dm_stra_2020win_ev = [];
Delt_m_stra_2020win_ev = [];
Delt_m_conv_2020win_ev = [];
LWC_stra_2020win_ev = [];
LWC_conv_2020win_ev = [];
RR_conv_2020win_ev = [];
RR_stra_2020win_ev = [];
Z_conv_2020win_ev = [];
Z_stra_2020win_ev = [];
mu_stra_2020win_ev = [];
mu_conv_2020win_ev = [];
lamd_stra_2020win_ev = [];
lamd_conv_2020win_ev = [];
%
ND_conv_2020spr_ev = [];
ND_stra_2020spr_ev =[];
Nw_conv_2020spr_ev = [];
Nw_stra_2020spr_ev = [];
N0_stra_2020spr_ev = [];
N0_conv_2020spr_ev = [];
Dm_conv_2020spr_ev = [];
Dm_stra_2020spr_ev = [];
Delt_m_stra_2020spr_ev = [];
Delt_m_conv_2020spr_ev = [];
LWC_stra_2020spr_ev = [];
LWC_conv_2020spr_ev = [];
RR_conv_2020spr_ev = [];
RR_stra_2020spr_ev = [];
Z_conv_2020spr_ev = [];
Z_stra_2020spr_ev = [];
mu_stra_2020spr_ev = [];
mu_conv_2020spr_ev = [];
lamd_stra_2020spr_ev = [];
lamd_conv_2020spr_ev = [];
%
for inum = 1:length(Rainev_day_30)
    mkey = fix(str2num(Rainev_day_30{inum,1})/100);
    fname = ['D:\DATA\OTTParsivel\nonQC2019-\',Rainev_day_30{inum,1},'.h5'];
    rainloc = Rainev_detal_30{inum,1};
    loclen = size(rainloc,1);
    RR = h5read(fname,'/RR');
    ND = h5read(fname,'/ND');
    Nw = h5read(fname,'/Nw');
    N0 = h5read(fname,'/N0');
    Dm = h5read(fname,'/Dm');
    Delt_m = h5read(fname,'/Delt_m');
    LWC = h5read(fname,'/LWC');
    Z = h5read(fname,'/Z');
    mu = h5read(fname,'/mu');
    lamd = h5read(fname,'/lamd');
    typeflag = h5read(fname,'/typeflag');
    
    for enum = 1:loclen
        temptype = typeflag(rainloc(enum,1):rainloc(enum,2));
        tempRR = RR(rainloc(enum,1):rainloc(enum,2));
        tempNw = Nw(rainloc(enum,1):rainloc(enum,2));
        tempDm = Dm(rainloc(enum,1):rainloc(enum,2));
        tempLWC = LWC(rainloc(enum,1):rainloc(enum,2));
        tempZ = Z(rainloc(enum,1):rainloc(enum,2));
        tempDem = Delt_m(rainloc(enum,1):rainloc(enum,2));
        tempmu = mu(rainloc(enum,1):rainloc(enum,2));
        templamd = lamd(rainloc(enum,1):rainloc(enum,2));
        tempN0 = N0(rainloc(enum,1):rainloc(enum,2));
        tempND = ND(rainloc(enum,1):rainloc(enum,2),:);
        switch (fix(mkey./100)-2019)*12 + mod(mkey,100)-5
            case {1,2,3}
                if find(temptype == 1)
                    Nw_conv_2019sum = [Nw_conv_2019sum;log10(tempNw(temptype == 1))];
                    Dm_conv_2019sum = [Dm_conv_2019sum;tempDm(temptype == 1)];
                    Nw_conv_2019sum_ev = [Nw_conv_2019sum_ev;[mean(log10(tempNw(temptype == 1))),std(log10(tempNw(temptype == 1)))]];
                    Dm_conv_2019sum_ev = [Dm_conv_2019sum_ev;[mean(tempDm(temptype == 1)),std(tempDm(temptype == 1))]];
                    RR_conv_2019sum = [RR_conv_2019sum;tempRR(temptype == 1)];
                    RR_conv_2019sum_ev = [RR_conv_2019sum_ev;[mean(tempRR(temptype == 1)),std(tempRR(temptype == 1))]];
                    Delt_m_conv_2019sum = [Delt_m_conv_2019sum;tempDem(temptype == 1)];
                    Delt_m_conv_2019sum_ev = [Delt_m_conv_2019sum_ev;[mean(tempDem(temptype == 1)),std(tempDem(temptype == 1))]];
                    LWC_conv_2019sum = [LWC_conv_2019sum;tempLWC(temptype == 1)];
                    LWC_conv_2019sum_ev = [LWC_conv_2019sum_ev;[mean(tempLWC(temptype == 1)),std(tempLWC(temptype == 1))]];
                    mu_conv_2019sum = [mu_conv_2019sum;tempmu(temptype == 1)];
                    mu_conv_2019sum_ev = [mu_conv_2019sum_ev;[mean(tempmu(temptype == 1)),std(tempmu(temptype == 1))]];
                    lamd_conv_2019sum = [lamd_conv_2019sum;templamd(temptype == 1)];
                    lamd_conv_2019sum_ev = [lamd_conv_2019sum_ev;[mean(templamd(temptype == 1)),std(templamd(temptype == 1))]];
                    Z_conv_2019sum = [Z_conv_2019sum;tempZ(temptype == 1)];
                    Z_conv_2019sum_ev = [Z_conv_2019sum_ev;[mean(tempZ(temptype == 1)),std(tempZ(temptype == 1))]];
                    N0_conv_2019sum = [N0_conv_2019sum;tempN0(temptype == 1)];
                    N0_conv_2019sum_ev = [N0_conv_2019sum_ev;[mean(tempN0(temptype == 1)),std(tempN0(temptype == 1))]];
                    ND_conv_2019sum = [ND_conv_2019sum;tempND(temptype == 1,:)];
                    ND_conv_2019sum_ev = [ND_conv_2019sum_ev;mean(tempND(temptype == 1,:),1)];
                end
                if find(temptype == 2)
                    Nw_stra_2019sum = [Nw_stra_2019sum;log10(tempNw(temptype == 2))];
                    Dm_stra_2019sum = [Dm_stra_2019sum;tempDm(temptype == 2)];
                    Nw_stra_2019sum_ev = [Nw_stra_2019sum_ev;[mean(log10(tempNw(temptype == 2))),std(log10(tempNw(temptype == 2)))]];
                    Dm_stra_2019sum_ev = [Dm_stra_2019sum_ev;[mean(tempDm(temptype == 2)),std(tempDm(temptype == 2))]];
                    RR_stra_2019sum = [RR_stra_2019sum;tempRR(temptype == 2)];
                    RR_stra_2019sum_ev = [RR_stra_2019sum_ev;[mean(tempRR(temptype == 2)),std(tempRR(temptype == 2))]];
                    Delt_m_stra_2019sum = [Delt_m_stra_2019sum;tempDem(temptype == 2)];
                    Delt_m_stra_2019sum_ev = [Delt_m_stra_2019sum_ev;[mean(tempDem(temptype == 2)),std(tempDem(temptype == 2))]];
                    LWC_stra_2019sum = [LWC_stra_2019sum;tempLWC(temptype == 2)];
                    LWC_stra_2019sum_ev = [LWC_stra_2019sum_ev;[mean(tempLWC(temptype == 2)),std(tempLWC(temptype == 2))]];
                    mu_stra_2019sum = [mu_stra_2019sum;tempmu(temptype == 2)];
                    mu_stra_2019sum_ev = [mu_stra_2019sum_ev;[mean(tempmu(temptype == 2)),std(tempmu(temptype == 2))]];
                    lamd_stra_2019sum = [lamd_stra_2019sum;templamd(temptype == 2)];
                    lamd_stra_2019sum_ev = [lamd_stra_2019sum_ev;[mean(templamd(temptype == 2)),std(templamd(temptype == 2))]];
                    Z_stra_2019sum = [Z_stra_2019sum;tempZ(temptype == 2)];
                    Z_stra_2019sum_ev = [Z_stra_2019sum_ev;[mean(tempZ(temptype == 2)),std(tempZ(temptype == 2))]];
                    N0_stra_2019sum = [N0_stra_2019sum;tempN0(temptype == 2)];
                    N0_stra_2019sum_ev = [N0_stra_2019sum_ev;[mean(tempN0(temptype == 2)),std(tempN0(temptype == 2))]];
                    ND_stra_2019sum = [ND_stra_2019sum;tempND(temptype == 2,:)];
                    ND_stra_2019sum_ev = [ND_stra_2019sum_ev;mean(tempND(temptype == 2,:))];
                end
                
            case {4,5,6}
                if find(temptype == 1)
                    Nw_conv_2019aut = [Nw_conv_2019aut;log10(tempNw(temptype == 1))];
                    Dm_conv_2019aut = [Dm_conv_2019aut;tempDm(temptype == 1)];
                    Nw_conv_2019aut_ev = [Nw_conv_2019aut_ev;[mean(log10(tempNw(temptype == 1))),std(log10(tempNw(temptype == 1)))]];
                    Dm_conv_2019aut_ev = [Dm_conv_2019aut_ev;[mean(tempDm(temptype == 1)),std(tempDm(temptype == 1))]];
                    RR_conv_2019aut = [RR_conv_2019aut;tempRR(temptype == 1)];
                    RR_conv_2019aut_ev = [RR_conv_2019aut_ev;[mean(tempRR(temptype == 1)),std(tempRR(temptype == 1))]];
                    Delt_m_conv_2019aut = [Delt_m_conv_2019aut;tempDem(temptype == 1)];
                    Delt_m_conv_2019aut_ev = [Delt_m_conv_2019aut_ev;[mean(tempDem(temptype == 1)),std(tempDem(temptype == 1))]];
                    LWC_conv_2019aut = [LWC_conv_2019aut;tempLWC(temptype == 1)];
                    LWC_conv_2019aut_ev = [LWC_conv_2019aut_ev;[mean(tempLWC(temptype == 1)),std(tempLWC(temptype == 1))]];
                    mu_conv_2019aut = [mu_conv_2019aut;tempmu(temptype == 1)];
                    mu_conv_2019aut_ev = [mu_conv_2019aut_ev;[mean(tempmu(temptype == 1)),std(tempmu(temptype == 1))]];
                    lamd_conv_2019aut = [lamd_conv_2019aut;templamd(temptype == 1)];
                    lamd_conv_2019aut_ev = [lamd_conv_2019aut_ev;[mean(templamd(temptype == 1)),std(templamd(temptype == 1))]];
                    Z_conv_2019aut = [Z_conv_2019aut;tempZ(temptype == 1)];
                    Z_conv_2019aut_ev = [Z_conv_2019aut_ev;[mean(tempZ(temptype == 1)),std(tempZ(temptype == 1))]];
                    N0_conv_2019aut = [N0_conv_2019aut;tempN0(temptype == 1)];
                    N0_conv_2019aut_ev = [N0_conv_2019aut_ev;[mean(tempN0(temptype == 1)),std(tempN0(temptype == 1))]];
                    ND_conv_2019aut = [ND_conv_2019aut;tempND(temptype == 1,:)];
                    ND_conv_2019aut_ev = [ND_conv_2019aut_ev;mean(tempND(temptype == 1,:))];
                end
                if find(temptype == 2)
                    Nw_stra_2019aut = [Nw_stra_2019aut;log10(tempNw(temptype == 2))];
                    Dm_stra_2019aut = [Dm_stra_2019aut;tempDm(temptype == 2)];
                    Nw_stra_2019aut_ev = [Nw_stra_2019aut_ev;[mean(log10(tempNw(temptype == 2))),std(log10(tempNw(temptype == 2)))]];
                    Dm_stra_2019aut_ev = [Dm_stra_2019aut_ev;[mean(tempDm(temptype == 2)),std(tempDm(temptype == 2))]];
                    RR_stra_2019aut = [RR_stra_2019aut;tempRR(temptype == 2)];
                    RR_stra_2019aut_ev = [RR_stra_2019aut_ev;[mean(tempRR(temptype == 2)),std(tempRR(temptype == 2))]];
                    Delt_m_stra_2019aut = [Delt_m_stra_2019aut;tempDem(temptype == 2)];
                    Delt_m_stra_2019aut_ev = [Delt_m_stra_2019aut_ev;[mean(tempDem(temptype == 2)),std(tempDem(temptype == 2))]];
                    LWC_stra_2019aut = [LWC_stra_2019aut;tempLWC(temptype == 2)];
                    LWC_stra_2019aut_ev = [LWC_stra_2019aut_ev;[mean(tempLWC(temptype == 2)),std(tempLWC(temptype == 2))]];
                    mu_stra_2019aut = [mu_stra_2019aut;tempmu(temptype == 2)];
                    mu_stra_2019aut_ev = [mu_stra_2019aut_ev;[mean(tempmu(temptype == 2)),std(tempmu(temptype == 2))]];
                    lamd_stra_2019aut = [lamd_stra_2019aut;templamd(temptype == 2)];
                    lamd_stra_2019aut_ev = [lamd_stra_2019aut_ev;[mean(templamd(temptype == 2)),std(templamd(temptype == 2))]];
                    Z_stra_2019aut = [Z_stra_2019aut;tempZ(temptype == 2)];
                    Z_stra_2019aut_ev = [Z_stra_2019aut_ev;[mean(tempZ(temptype == 2)),std(tempZ(temptype == 2))]];
                    N0_stra_2019aut = [N0_stra_2019aut;tempN0(temptype == 2)];
                    N0_stra_2019aut_ev = [N0_stra_2019aut_ev;[mean(tempN0(temptype == 2)),std(tempN0(temptype == 2))]];
                    ND_stra_2019aut = [ND_stra_2019aut;tempND(temptype == 2,:)];
                    ND_stra_2019aut_ev = [ND_stra_2019aut_ev;mean(tempND(temptype == 2,:),1)];
                end
                
            case {7,8,9}
                if find(temptype == 1)
                    Nw_conv_2019win = [Nw_conv_2019win;log10(tempNw(temptype == 1))];
                    Dm_conv_2019win = [Dm_conv_2019win;tempDm(temptype == 1)];
                    Nw_conv_2019win_ev = [Nw_conv_2019win_ev;[mean(log10(tempNw(temptype == 1))),std(log10(tempNw(temptype == 1)))]];
                    Dm_conv_2019win_ev = [Dm_conv_2019win_ev;[mean(tempDm(temptype == 1)),std(tempDm(temptype == 1))]];
                    RR_conv_2019win = [RR_conv_2019win;tempRR(temptype == 1)];
                    RR_conv_2019win_ev = [RR_conv_2019win_ev;[mean(tempRR(temptype == 1)),std(tempRR(temptype == 1))]];
                    Delt_m_conv_2019win = [Delt_m_conv_2019win;tempDem(temptype == 1)];
                    Delt_m_conv_2019win_ev = [Delt_m_conv_2019win_ev;[mean(tempDem(temptype == 1)),std(tempDem(temptype == 1))]];
                    LWC_conv_2019win = [LWC_conv_2019win;tempLWC(temptype == 1)];
                    LWC_conv_2019win_ev = [LWC_conv_2019win_ev;[mean(tempLWC(temptype == 1)),std(tempLWC(temptype == 1))]];
                    mu_conv_2019win = [mu_conv_2019win;tempmu(temptype == 1)];
                    mu_conv_2019win_ev = [mu_conv_2019win_ev;[mean(tempmu(temptype == 1)),std(tempmu(temptype == 1))]];
                    lamd_conv_2019win = [lamd_conv_2019win;templamd(temptype == 1)];
                    lamd_conv_2019win_ev = [lamd_conv_2019win_ev;[mean(templamd(temptype == 1)),std(templamd(temptype == 1))]];
                    Z_conv_2019win = [Z_conv_2019win;tempZ(temptype == 1)];
                    Z_conv_2019win_ev = [Z_conv_2019win_ev;[mean(tempZ(temptype == 1)),std(tempZ(temptype == 1))]];
                    N0_conv_2019win = [N0_conv_2019win;tempN0(temptype == 1)];
                    N0_conv_2019win_ev = [N0_conv_2019win_ev;[mean(tempN0(temptype == 1)),std(tempN0(temptype == 1))]];
                    ND_conv_2019win = [ND_conv_2019win;tempND(temptype == 1,:)];
                    ND_conv_2019win_ev = [ND_conv_2019win_ev;mean(tempND(temptype == 1,:),1)];
                    
                end
                if find(temptype == 2)
                    Nw_stra_2019win = [Nw_stra_2019win;log10(tempNw(temptype == 2))];
                    Dm_stra_2019win = [Dm_stra_2019win;tempDm(temptype == 2)];
                    Nw_stra_2019win_ev = [Nw_stra_2019win_ev;[mean(log10(tempNw(temptype == 2))),std(log10(tempNw(temptype == 2)))]];
                    Dm_stra_2019win_ev = [Dm_stra_2019win_ev;[mean(tempDm(temptype == 2)),std(tempDm(temptype == 2))]];
                    RR_stra_2019win = [RR_stra_2019win;tempRR(temptype == 2)];
                    RR_stra_2019win_ev = [RR_stra_2019win_ev;[mean(tempRR(temptype == 2)),std(tempRR(temptype == 2))]];
                    Delt_m_stra_2019win = [Delt_m_stra_2019win;tempDem(temptype == 2)];
                    Delt_m_stra_2019win_ev = [Delt_m_stra_2019win_ev;[mean(tempDem(temptype == 2)),std(tempDem(temptype == 2))]];
                    LWC_stra_2019win = [LWC_stra_2019win;tempLWC(temptype == 2)];
                    LWC_stra_2019win_ev = [LWC_stra_2019win_ev;[mean(tempLWC(temptype == 2)),std(tempLWC(temptype == 2))]];
                    mu_stra_2019win = [mu_stra_2019win;tempmu(temptype == 2)];
                    mu_stra_2019win_ev = [mu_stra_2019win_ev;[mean(tempmu(temptype == 2)),std(tempmu(temptype == 2))]];
                    lamd_stra_2019win = [lamd_stra_2019win;templamd(temptype == 2)];
                    lamd_stra_2019win_ev = [lamd_stra_2019win_ev;[mean(templamd(temptype == 2)),std(templamd(temptype == 2))]];
                    Z_stra_2019win = [Z_stra_2019win;tempZ(temptype == 2)];
                    Z_stra_2019win_ev = [Z_stra_2019win_ev;[mean(tempZ(temptype == 2)),std(tempZ(temptype == 2))]];
                    N0_stra_2019win = [N0_stra_2019win;tempN0(temptype == 2)];
                    N0_stra_2019win_ev = [N0_stra_2019win_ev;[mean(tempN0(temptype == 2)),std(tempN0(temptype == 2))]];
                    ND_stra_2019win = [ND_stra_2019win;tempND(temptype == 2,:)];
                    ND_stra_2019win_ev = [ND_stra_2019win_ev;mean(tempND(temptype == 2,:),1)];
                end
            case {10,11,12}
                if find(temptype == 1)
                    Nw_conv_2019spr = [Nw_conv_2019spr;log10(tempNw(temptype == 1))];
                    Dm_conv_2019spr = [Dm_conv_2019spr;tempDm(temptype == 1)];
                    Nw_conv_2019spr_ev = [Nw_conv_2019spr_ev;[mean(log10(tempNw(temptype == 1))),std(log10(tempNw(temptype == 1)))]];
                    Dm_conv_2019spr_ev = [Dm_conv_2019spr_ev;[mean(tempDm(temptype == 1)),std(tempDm(temptype == 1))]];
                    RR_conv_2019spr = [RR_conv_2019spr;tempRR(temptype == 1)];
                    RR_conv_2019spr_ev = [RR_conv_2019spr_ev;[mean(tempRR(temptype == 1)),std(tempRR(temptype == 1))]];
                    Delt_m_conv_2019spr = [Delt_m_conv_2019spr;tempDem(temptype == 1)];
                    Delt_m_conv_2019spr_ev = [Delt_m_conv_2019spr_ev;[mean(tempDem(temptype == 1)),std(tempDem(temptype == 1))]];
                    LWC_conv_2019spr = [LWC_conv_2019spr;tempLWC(temptype == 1)];
                    LWC_conv_2019spr_ev = [LWC_conv_2019spr_ev;[mean(tempLWC(temptype == 1)),std(tempLWC(temptype == 1))]];
                    mu_conv_2019spr = [mu_conv_2019spr;tempmu(temptype == 1)];
                    mu_conv_2019spr_ev = [mu_conv_2019spr_ev;[mean(tempmu(temptype == 1)),std(tempmu(temptype == 1))]];
                    lamd_conv_2019spr = [lamd_conv_2019spr;templamd(temptype == 1)];
                    lamd_conv_2019spr_ev = [lamd_conv_2019spr_ev;[mean(templamd(temptype == 1)),std(templamd(temptype == 1))]];
                    Z_conv_2019spr = [Z_conv_2019spr;tempZ(temptype == 1)];
                    Z_conv_2019spr_ev = [Z_conv_2019spr_ev;[mean(tempZ(temptype == 1)),std(tempZ(temptype == 1))]];
                    N0_conv_2019spr = [N0_conv_2019spr;tempN0(temptype == 1)];
                    N0_conv_2019spr_ev = [N0_conv_2019spr_ev;[mean(tempN0(temptype == 1)),std(tempN0(temptype == 1))]];
                    ND_conv_2019spr = [ND_conv_2019spr;tempND(temptype == 1,:)];
                    ND_conv_2019spr_ev = [ND_conv_2019spr_ev;mean(tempND(temptype == 1,:),1)];
                end
                if find(temptype == 2)
                    Nw_stra_2019spr = [Nw_stra_2019spr;log10(tempNw(temptype == 2))];
                    Dm_stra_2019spr = [Dm_stra_2019spr;tempDm(temptype == 2)];
                    Nw_stra_2019spr_ev = [Nw_stra_2019spr_ev;[mean(log10(tempNw(temptype == 2))),std(log10(tempNw(temptype == 2)))]];
                    Dm_stra_2019spr_ev = [Dm_stra_2019spr_ev;[mean(tempDm(temptype == 2)),std(tempDm(temptype == 2))]];
                    RR_stra_2019spr = [RR_stra_2019spr;tempRR(temptype == 2)];
                    RR_stra_2019spr_ev = [RR_stra_2019spr_ev;[mean(tempRR(temptype == 2)),std(tempRR(temptype == 2))]];
                    Delt_m_stra_2019spr = [Delt_m_stra_2019spr;tempDem(temptype == 2)];
                    Delt_m_stra_2019spr_ev = [Delt_m_stra_2019spr_ev;[mean(tempDem(temptype == 2)),std(tempDem(temptype == 2))]];
                    LWC_stra_2019spr = [LWC_stra_2019spr;tempLWC(temptype == 2)];
                    LWC_stra_2019spr_ev = [LWC_stra_2019spr_ev;[mean(tempLWC(temptype == 2)),std(tempLWC(temptype == 2))]];
                    mu_stra_2019spr = [mu_stra_2019spr;tempmu(temptype == 2)];
                    mu_stra_2019spr_ev = [mu_stra_2019spr_ev;[mean(tempmu(temptype == 2)),std(tempmu(temptype == 2))]];
                    lamd_stra_2019spr = [lamd_stra_2019spr;templamd(temptype == 2)];
                    lamd_stra_2019spr_ev = [lamd_stra_2019spr_ev;[mean(templamd(temptype == 2)),std(templamd(temptype == 2))]];
                    Z_stra_2019spr = [Z_stra_2019spr;tempZ(temptype == 2)];
                    Z_stra_2019spr_ev = [Z_stra_2019spr_ev;[mean(tempZ(temptype == 2)),std(tempZ(temptype == 2))]];
                    N0_stra_2019spr = [N0_stra_2019spr;tempN0(temptype == 2)];
                    N0_stra_2019spr_ev = [N0_stra_2019spr_ev;[mean(tempN0(temptype == 2)),std(tempN0(temptype == 2))]];
                    ND_stra_2019spr = [ND_stra_2019spr;tempND(temptype == 2,:)];
                    ND_stra_2019spr_ev = [ND_stra_2019spr_ev;mean(tempND(temptype == 2,:),1)];
                end
            otherwise
                switch (fix(mkey./100)-2020)*12 + mod(mkey,100)-5
                    case {1,2,3}
                        if find(temptype == 1)
                            Nw_conv_2020sum = [Nw_conv_2020sum;log10(tempNw(temptype == 1))];
                            Dm_conv_2020sum = [Dm_conv_2020sum;tempDm(temptype == 1)];
                            Nw_conv_2020sum_ev = [Nw_conv_2020sum_ev;[mean(log10(tempNw(temptype == 1))),std(log10(tempNw(temptype == 1)))]];
                            Dm_conv_2020sum_ev = [Dm_conv_2020sum_ev;[mean(tempDm(temptype == 1)),std(tempDm(temptype == 1))]];
                            RR_conv_2020sum = [RR_conv_2020sum;tempRR(temptype == 1)];
                            RR_conv_2020sum_ev = [RR_conv_2020sum_ev;[mean(tempRR(temptype == 1)),std(tempRR(temptype == 1))]];
                            Delt_m_conv_2020sum = [Delt_m_conv_2020sum;tempDem(temptype == 1)];
                            Delt_m_conv_2020sum_ev = [Delt_m_conv_2020sum_ev;[mean(tempDem(temptype == 1)),std(tempDem(temptype == 1))]];
                            LWC_conv_2020sum = [LWC_conv_2020sum;tempLWC(temptype == 1)];
                            LWC_conv_2020sum_ev = [LWC_conv_2020sum_ev;[mean(tempLWC(temptype == 1)),std(tempLWC(temptype == 1))]];
                            mu_conv_2020sum = [mu_conv_2020sum;tempmu(temptype == 1)];
                            mu_conv_2020sum_ev = [mu_conv_2020sum_ev;[mean(tempmu(temptype == 1)),std(tempmu(temptype == 1))]];
                            lamd_conv_2020sum = [lamd_conv_2020sum;templamd(temptype == 1)];
                            lamd_conv_2020sum_ev = [lamd_conv_2020sum_ev;[mean(templamd(temptype == 1)),std(templamd(temptype == 1))]];
                            Z_conv_2020sum = [Z_conv_2020sum;tempZ(temptype == 1)];
                            Z_conv_2020sum_ev = [Z_conv_2020sum_ev;[mean(tempZ(temptype == 1)),std(tempZ(temptype == 1))]];
                            N0_conv_2020sum = [N0_conv_2020sum;tempN0(temptype == 1)];
                            N0_conv_2020sum_ev = [N0_conv_2020sum_ev;[mean(tempN0(temptype == 1)),std(tempN0(temptype == 1))]];
                            ND_conv_2020sum = [ND_conv_2020sum;tempND(temptype == 1,:)];
                            ND_conv_2020sum_ev = [ND_conv_2020sum_ev;mean(tempND(temptype == 1,:),1)];
                        end
                        if find(temptype == 2)
                            Nw_stra_2020sum = [Nw_stra_2020sum;log10(tempNw(temptype == 2))];
                            Dm_stra_2020sum = [Dm_stra_2020sum;tempDm(temptype == 2)];
                            Nw_stra_2020sum_ev = [Nw_stra_2020sum_ev;[mean(log10(tempNw(temptype == 2))),std(log10(tempNw(temptype == 2)))]];
                            Dm_stra_2020sum_ev = [Dm_stra_2020sum_ev;[mean(tempDm(temptype == 2)),std(tempDm(temptype == 2))]];
                            RR_stra_2020sum = [RR_stra_2020sum;tempRR(temptype == 2)];
                            RR_stra_2020sum_ev = [RR_stra_2020sum_ev;[mean(tempRR(temptype == 2)),std(tempRR(temptype == 2))]];
                            Delt_m_stra_2020sum = [Delt_m_stra_2020sum;tempDem(temptype == 2)];
                            Delt_m_stra_2020sum_ev = [Delt_m_stra_2020sum_ev;[mean(tempDem(temptype == 2)),std(tempDem(temptype == 2))]];
                            LWC_stra_2020sum = [LWC_stra_2020sum;tempLWC(temptype == 2)];
                            LWC_stra_2020sum_ev = [LWC_stra_2020sum_ev;[mean(tempLWC(temptype == 2)),std(tempLWC(temptype == 2))]];
                            mu_stra_2020sum = [mu_stra_2020sum;tempmu(temptype == 2)];
                            mu_stra_2020sum_ev = [mu_stra_2020sum_ev;[mean(tempmu(temptype == 2)),std(tempmu(temptype == 2))]];
                            lamd_stra_2020sum = [lamd_stra_2020sum;templamd(temptype == 2)];
                            lamd_stra_2020sum_ev = [lamd_stra_2020sum_ev;[mean(templamd(temptype == 2)),std(templamd(temptype == 2))]];
                            Z_stra_2020sum = [Z_stra_2020sum;tempZ(temptype == 2)];
                            Z_stra_2020sum_ev = [Z_stra_2020sum_ev;[mean(tempZ(temptype == 2)),std(tempZ(temptype == 2))]];
                            N0_stra_2020sum = [N0_stra_2020sum;tempN0(temptype == 2)];
                            N0_stra_2020sum_ev = [N0_stra_2020sum_ev;[mean(tempN0(temptype == 2)),std(tempN0(temptype == 2))]];
                            ND_stra_2020sum = [ND_stra_2020sum;tempND(temptype == 2,:)];
                            ND_stra_2020sum_ev = [ND_stra_2020sum_ev;mean(tempND(temptype == 2,:),1)];
                        end
                    case {4,5,6}
                        if find(temptype == 1)
                            Nw_conv_2020aut = [Nw_conv_2020aut;log10(tempNw(temptype == 1))];
                            Dm_conv_2020aut = [Dm_conv_2020aut;tempDm(temptype == 1)];
                            Nw_conv_2020aut_ev = [Nw_conv_2020aut_ev;[mean(log10(tempNw(temptype == 1))),std(log10(tempNw(temptype == 1)))]];
                            Dm_conv_2020aut_ev = [Dm_conv_2020aut_ev;[mean(tempDm(temptype == 1)),std(tempDm(temptype == 1))]];
                            RR_conv_2020aut = [RR_conv_2020aut;tempRR(temptype == 1)];
                            RR_conv_2020aut_ev = [RR_conv_2020aut_ev;[mean(tempRR(temptype == 1)),std(tempRR(temptype == 1))]];
                            Delt_m_conv_2020aut = [Delt_m_conv_2020aut;tempDem(temptype == 1)];
                            Delt_m_conv_2020aut_ev = [Delt_m_conv_2020aut_ev;[mean(tempDem(temptype == 1)),std(tempDem(temptype == 1))]];
                            LWC_conv_2020aut = [LWC_conv_2020aut;tempLWC(temptype == 1)];
                            LWC_conv_2020aut_ev = [LWC_conv_2020aut_ev;[mean(tempLWC(temptype == 1)),std(tempLWC(temptype == 1))]];
                            mu_conv_2020aut = [mu_conv_2020aut;tempmu(temptype == 1)];
                            mu_conv_2020aut_ev = [mu_conv_2020aut_ev;[mean(tempmu(temptype == 1)),std(tempmu(temptype == 1))]];
                            lamd_conv_2020aut = [lamd_conv_2020aut;templamd(temptype == 1)];
                            lamd_conv_2020aut_ev = [lamd_conv_2020aut_ev;[mean(templamd(temptype == 1)),std(templamd(temptype == 1))]];
                            Z_conv_2020aut = [Z_conv_2020aut;tempZ(temptype == 1)];
                            Z_conv_2020aut_ev = [Z_conv_2020aut_ev;[mean(tempZ(temptype == 1)),std(tempZ(temptype == 1))]];
                            N0_conv_2020aut = [N0_conv_2020aut;tempN0(temptype == 1)];
                            N0_conv_2020aut_ev = [N0_conv_2020aut_ev;[mean(tempN0(temptype == 1)),std(tempN0(temptype == 1))]];
                            ND_conv_2020aut = [ND_conv_2020aut;tempND(temptype == 1,:)];
                            ND_conv_2020aut_ev = [ND_conv_2020aut_ev;mean(tempND(temptype == 1,:),1)];
                        end
                        if find(temptype == 2)
                            Nw_stra_2020aut = [Nw_stra_2020aut;log10(tempNw(temptype == 2))];
                            Dm_stra_2020aut = [Dm_stra_2020aut;tempDm(temptype == 2)];
                            Nw_stra_2020aut_ev = [Nw_stra_2020aut_ev;[mean(log10(tempNw(temptype == 2))),std(log10(tempNw(temptype == 2)))]];
                            Dm_stra_2020aut_ev = [Dm_stra_2020aut_ev;[mean(tempDm(temptype == 2)),std(tempDm(temptype == 2))]];
                            RR_stra_2020aut = [RR_stra_2020aut;tempRR(temptype == 2)];
                            RR_stra_2020aut_ev = [RR_stra_2020aut_ev;[mean(tempRR(temptype == 2)),std(tempRR(temptype == 2))]];
                            Delt_m_stra_2020aut = [Delt_m_stra_2020aut;tempDem(temptype == 2)];
                            Delt_m_stra_2020aut_ev = [Delt_m_stra_2020aut_ev;[mean(tempDem(temptype == 2)),std(tempDem(temptype == 2))]];
                            LWC_stra_2020aut = [LWC_stra_2020aut;tempLWC(temptype == 2)];
                            LWC_stra_2020aut_ev = [LWC_stra_2020aut_ev;[mean(tempLWC(temptype == 2)),std(tempLWC(temptype == 2))]];
                            mu_stra_2020aut = [mu_stra_2020aut;tempmu(temptype == 2)];
                            mu_stra_2020aut_ev = [mu_stra_2020aut_ev;[mean(tempmu(temptype == 2)),std(tempmu(temptype == 2))]];
                            lamd_stra_2020aut = [lamd_stra_2020aut;templamd(temptype == 2)];
                            lamd_stra_2020aut_ev = [lamd_stra_2020aut_ev;[mean(templamd(temptype == 2)),std(templamd(temptype == 2))]];
                            Z_stra_2020aut = [Z_stra_2020aut;tempZ(temptype == 2)];
                            Z_stra_2020aut_ev = [Z_stra_2020aut_ev;[mean(tempZ(temptype == 2)),std(tempZ(temptype == 2))]];
                            N0_stra_2020aut = [N0_stra_2020aut;tempN0(temptype == 2)];
                            N0_stra_2020aut_ev = [N0_stra_2020aut_ev;[mean(tempN0(temptype == 2)),std(tempN0(temptype == 2))]];
                            ND_stra_2020aut = [ND_stra_2020aut;tempND(temptype == 2,:)];
                            ND_stra_2020aut_ev = [ND_stra_2020aut_ev;mean(tempND(temptype == 2,:),1)];
                        end
                        
                    case {7,8,9}
                        if find(temptype == 1)
                            Nw_conv_2020win = [Nw_conv_2020win;log10(tempNw(temptype == 1))];
                            Dm_conv_2020win = [Dm_conv_2020win;tempDm(temptype == 1)];
                            Nw_conv_2020win_ev = [Nw_conv_2020win_ev;[mean(log10(tempNw(temptype == 1))),std(log10(tempNw(temptype == 1)))]];
                            Dm_conv_2020win_ev = [Dm_conv_2020win_ev;[mean(tempDm(temptype == 1)),std(tempDm(temptype == 1))]];
                            RR_conv_2020win = [RR_conv_2020win;tempRR(temptype == 1)];
                            RR_conv_2020win_ev = [RR_conv_2020win_ev;[mean(tempRR(temptype == 1)),std(tempRR(temptype == 1))]];
                            Delt_m_conv_2020win = [Delt_m_conv_2020win;tempDem(temptype == 1)];
                            Delt_m_conv_2020win_ev = [Delt_m_conv_2020win_ev;[mean(tempDem(temptype == 1)),std(tempDem(temptype == 1))]];
                            LWC_conv_2020win = [LWC_conv_2020win;tempLWC(temptype == 1)];
                            LWC_conv_2020win_ev = [LWC_conv_2020win_ev;[mean(tempLWC(temptype == 1)),std(tempLWC(temptype == 1))]];
                            mu_conv_2020win = [mu_conv_2020win;tempmu(temptype == 1)];
                            mu_conv_2020win_ev = [mu_conv_2020win_ev;[mean(tempmu(temptype == 1)),std(tempmu(temptype == 1))]];
                            lamd_conv_2020win = [lamd_conv_2020win;templamd(temptype == 1)];
                            lamd_conv_2020win_ev = [lamd_conv_2020win_ev;[mean(templamd(temptype == 1)),std(templamd(temptype == 1))]];
                            Z_conv_2020win = [Z_conv_2020win;tempZ(temptype == 1)];
                            Z_conv_2020win_ev = [Z_conv_2020win_ev;[mean(tempZ(temptype == 1)),std(tempZ(temptype == 1))]];
                            N0_conv_2020win = [N0_conv_2020win;tempN0(temptype == 1)];
                            N0_conv_2020win_ev = [N0_conv_2020win_ev;[mean(tempN0(temptype == 1)),std(tempN0(temptype == 1))]];
                            ND_conv_2020win = [ND_conv_2020win;tempND(temptype == 1,:)];
                            ND_conv_2020win_ev = [ND_conv_2020win_ev;mean(tempND(temptype == 1,:),1)];
                        end
                        if find(temptype == 2)
                            Nw_stra_2020win = [Nw_stra_2020win;log10(tempNw(temptype == 2))];
                            Dm_stra_2020win = [Dm_stra_2020win;tempDm(temptype == 2)];
                            Nw_stra_2020win_ev = [Nw_stra_2020win_ev;[mean(log10(tempNw(temptype == 2))),std(log10(tempNw(temptype == 2)))]];
                            Dm_stra_2020win_ev = [Dm_stra_2020win_ev;[mean(tempDm(temptype == 2)),std(tempDm(temptype == 2))]];
                            RR_stra_2020win = [RR_stra_2020win;tempRR(temptype == 2)];
                            RR_stra_2020win_ev = [RR_stra_2020win_ev;[mean(tempRR(temptype == 2)),std(tempRR(temptype == 2))]];
                            Delt_m_stra_2020win = [Delt_m_stra_2020win;tempDem(temptype == 2)];
                            Delt_m_stra_2020win_ev = [Delt_m_stra_2020win_ev;[mean(tempDem(temptype == 2)),std(tempDem(temptype == 2))]];
                            LWC_stra_2020win = [LWC_stra_2020win;tempLWC(temptype == 2)];
                            LWC_stra_2020win_ev = [LWC_stra_2020win_ev;[mean(tempLWC(temptype == 2)),std(tempLWC(temptype == 2))]];
                            mu_stra_2020win = [mu_stra_2020win;tempmu(temptype == 2)];
                            mu_stra_2020win_ev = [mu_stra_2020win_ev;[mean(tempmu(temptype == 2)),std(tempmu(temptype == 2))]];
                            lamd_stra_2020win = [lamd_stra_2020win;templamd(temptype == 2)];
                            lamd_stra_2020win_ev = [lamd_stra_2020win_ev;[mean(templamd(temptype == 2)),std(templamd(temptype == 2))]];
                            Z_stra_2020win = [Z_stra_2020win;tempZ(temptype == 2)];
                            Z_stra_2020win_ev = [Z_stra_2020win_ev;[mean(tempZ(temptype == 2)),std(tempZ(temptype == 2))]];
                            N0_stra_2020win = [N0_stra_2020win;tempN0(temptype == 2)];
                            N0_stra_2020win_ev = [N0_stra_2020win_ev;[mean(tempN0(temptype == 2)),std(tempN0(temptype == 2))]];
                            ND_stra_2020win = [ND_stra_2020win;tempND(temptype == 2,:)];
                            ND_stra_2020win_ev = [ND_stra_2020win_ev;mean(tempND(temptype == 2,:),1)];
                        end
                    case {10,11,12}
                        if find(temptype == 1)
                            Nw_conv_2020spr = [Nw_conv_2020spr;log10(tempNw(temptype == 1))];
                            Dm_conv_2020spr = [Dm_conv_2020spr;tempDm(temptype == 1)];
                            Nw_conv_2020spr_ev = [Nw_conv_2020spr_ev;[mean(log10(tempNw(temptype == 1))),std(log10(tempNw(temptype == 1)))]];
                            Dm_conv_2020spr_ev = [Dm_conv_2020spr_ev;[mean(tempDm(temptype == 1)),std(tempDm(temptype == 1))]];
                            RR_conv_2020spr = [RR_conv_2020spr;tempRR(temptype == 1)];
                            RR_conv_2020spr_ev = [RR_conv_2020spr_ev;[mean(tempRR(temptype == 1)),std(tempRR(temptype == 1))]];
                            Delt_m_conv_2020spr = [Delt_m_conv_2020spr;tempDem(temptype == 1)];
                            Delt_m_conv_2020spr_ev = [Delt_m_conv_2020spr_ev;[mean(tempDem(temptype == 1)),std(tempDem(temptype == 1))]];
                            LWC_conv_2020spr = [LWC_conv_2020spr;tempLWC(temptype == 1)];
                            LWC_conv_2020spr_ev = [LWC_conv_2020spr_ev;[mean(tempLWC(temptype == 1)),std(tempLWC(temptype == 1))]];
                            mu_conv_2020spr = [mu_conv_2020spr;tempmu(temptype == 1)];
                            mu_conv_2020spr_ev = [mu_conv_2020spr_ev;[mean(tempmu(temptype == 1)),std(tempmu(temptype == 1))]];
                            lamd_conv_2020spr = [lamd_conv_2020spr;templamd(temptype == 1)];
                            lamd_conv_2020spr_ev = [lamd_conv_2020spr_ev;[mean(templamd(temptype == 1)),std(templamd(temptype == 1))]];
                            Z_conv_2020spr = [Z_conv_2020spr;tempZ(temptype == 1)];
                            Z_conv_2020spr_ev = [Z_conv_2020spr_ev;[mean(tempZ(temptype == 1)),std(tempZ(temptype == 1))]];
                            N0_conv_2020spr = [N0_conv_2020spr;tempN0(temptype == 1)];
                            N0_conv_2020spr_ev = [N0_conv_2020spr_ev;[mean(tempN0(temptype == 1)),std(tempN0(temptype == 1))]];
                            ND_conv_2020spr = [ND_conv_2020spr;tempND(temptype == 1,:)];
                            ND_conv_2020spr_ev = [ND_conv_2020spr_ev;mean(tempND(temptype == 1,:),1)];
                        end
                        if find(temptype == 2)
                            Nw_stra_2020spr = [Nw_stra_2020spr;log10(tempNw(temptype == 2))];
                            Dm_stra_2020spr = [Dm_stra_2020spr;tempDm(temptype == 2)];
                            Nw_stra_2020spr_ev = [Nw_stra_2020spr_ev;[mean(log10(tempNw(temptype == 2))),std(log10(tempNw(temptype == 2)))]];
                            Dm_stra_2020spr_ev = [Dm_stra_2020spr_ev;[mean(tempDm(temptype == 2)),std(tempDm(temptype == 2))]];
                            RR_stra_2020spr = [RR_stra_2020spr;tempRR(temptype == 2)];
                            RR_stra_2020spr_ev = [RR_stra_2020spr_ev;[mean(tempRR(temptype == 2)),std(tempRR(temptype == 2))]];
                            Delt_m_stra_2020spr = [Delt_m_stra_2020spr;tempDem(temptype == 2)];
                            Delt_m_stra_2020spr_ev = [Delt_m_stra_2020spr_ev;[mean(tempDem(temptype == 2)),std(tempDem(temptype == 2))]];
                            LWC_stra_2020spr = [LWC_stra_2020spr;tempLWC(temptype == 2)];
                            LWC_stra_2020spr_ev = [LWC_stra_2020spr_ev;[mean(tempLWC(temptype == 2)),std(tempLWC(temptype == 2))]];
                            mu_stra_2020spr = [mu_stra_2020spr;tempmu(temptype == 2)];
                            mu_stra_2020spr_ev = [mu_stra_2020spr_ev;[mean(tempmu(temptype == 2)),std(tempmu(temptype == 2))]];
                            lamd_stra_2020spr = [lamd_stra_2020spr;templamd(temptype == 2)];
                            lamd_stra_2020spr_ev = [lamd_stra_2020spr_ev;[mean(templamd(temptype == 2)),std(templamd(temptype == 2))]];
                            Z_stra_2020spr = [Z_stra_2020spr;tempZ(temptype == 2)];
                            Z_stra_2020spr_ev = [Z_stra_2020spr_ev;[mean(tempZ(temptype == 2)),std(tempZ(temptype == 2))]];
                            N0_stra_2020spr = [N0_stra_2020spr;tempN0(temptype == 2)];
                            N0_stra_2020spr_ev = [N0_stra_2020spr_ev;[mean(tempN0(temptype == 2)),std(tempN0(temptype == 2))]];
                            ND_stra_2020spr = [ND_stra_2020spr;tempND(temptype == 2,:)];
                            ND_stra_2020spr_ev = [ND_stra_2020spr_ev;mean(tempND(temptype == 2,:),1)];
                        end
                    otherwise
                        continue
                end
        end
        
    end
    
end

Nw_conv_all = [Nw_conv_2019spr;Nw_conv_2020spr;Nw_conv_2020sum;Nw_conv_2019sum;...
    Nw_conv_2019aut;Nw_conv_2020aut;Nw_conv_2019win;Nw_conv_2020win];
Dm_conv_all = [Dm_conv_2019spr;Dm_conv_2020spr;Dm_conv_2020sum;Dm_conv_2019sum;...
    Dm_conv_2019aut;Dm_conv_2020aut;Dm_conv_2019win;Dm_conv_2020win];
Nw_stra_all = [Nw_stra_2019spr;Nw_stra_2020spr;Nw_stra_2020sum;Nw_stra_2019sum;...
    Nw_stra_2019aut;Nw_stra_2020aut;Nw_stra_2019win;Nw_stra_2020win];
Dm_stra_all = [Dm_stra_2019spr;Dm_stra_2020spr;Dm_stra_2020sum;Dm_stra_2019sum;...
    Dm_stra_2019aut;Dm_stra_2020aut;Dm_stra_2019win;Dm_stra_2020win];
Nw_conv_all_ev = [Nw_conv_2019spr_ev;Nw_conv_2020spr_ev;Nw_conv_2020sum_ev;Nw_conv_2019sum_ev;...
    Nw_conv_2019aut_ev;Nw_conv_2020aut_ev;Nw_conv_2019win_ev;Nw_conv_2020win_ev];
Dm_conv_all_ev = [Dm_conv_2019spr_ev;Dm_conv_2020spr_ev;Dm_conv_2020sum_ev;Dm_conv_2019sum_ev;...
    Dm_conv_2019aut_ev;Dm_conv_2020aut_ev;Dm_conv_2019win_ev;Dm_conv_2020win_ev];
Nw_stra_all_ev = [Nw_stra_2019spr_ev;Nw_stra_2020spr_ev;Nw_stra_2020sum_ev;Nw_stra_2019sum_ev;...
    Nw_stra_2019aut_ev;Nw_stra_2020aut_ev;Nw_stra_2019win_ev;Nw_stra_2020win_ev];
Dm_stra_all_ev = [Dm_stra_2019spr_ev;Dm_stra_2020spr_ev;Dm_stra_2020sum_ev;Dm_stra_2019sum_ev;...
    Dm_stra_2019aut_ev;Dm_stra_2020aut_ev;Dm_stra_2019win_ev;Dm_stra_2020win_ev];

RR_conv_all = [RR_conv_2019spr;RR_conv_2020spr;RR_conv_2020sum;RR_conv_2019sum;...
    RR_conv_2019aut;RR_conv_2020aut;RR_conv_2019win;RR_conv_2020win];
RR_stra_all = [RR_stra_2019spr;RR_stra_2020spr;RR_stra_2020sum;RR_stra_2019sum;...
    RR_stra_2019aut;RR_stra_2020aut;RR_stra_2019win;RR_stra_2020win];
RR_conv_all_ev = [RR_conv_2019spr_ev;RR_conv_2020spr_ev;RR_conv_2020sum_ev;RR_conv_2019sum_ev;...
    RR_conv_2019aut_ev;RR_conv_2020aut_ev;RR_conv_2019win_ev;RR_conv_2020win_ev];
RR_stra_all_ev = [RR_stra_2019spr_ev;RR_stra_2020spr_ev;RR_stra_2020sum_ev;RR_stra_2019sum_ev;...
    RR_stra_2019aut_ev;RR_stra_2020aut_ev;RR_stra_2019win_ev;RR_stra_2020win_ev];


Z_conv_all = [Z_conv_2019spr;Z_conv_2020spr;Z_conv_2020sum;Z_conv_2019sum;...
    Z_conv_2019aut;Z_conv_2020aut;Z_conv_2019win;Z_conv_2020win];
Z_stra_all = [Z_stra_2019spr;Z_stra_2020spr;Z_stra_2020sum;Z_stra_2019sum;...
    Z_stra_2019aut;Z_stra_2020aut;Z_stra_2019win;Z_stra_2020win];
Z_conv_all_ev = [Z_conv_2019spr_ev;Z_conv_2020spr_ev;Z_conv_2020sum_ev;Z_conv_2019sum_ev;...
    Z_conv_2019aut_ev;Z_conv_2020aut_ev;Z_conv_2019win_ev;Z_conv_2020win_ev];
Z_stra_all_ev = [Z_stra_2019spr_ev;Z_stra_2020spr_ev;Z_stra_2020sum_ev;Z_stra_2019sum_ev;...
    Z_stra_2019aut_ev;Z_stra_2020aut_ev;Z_stra_2019win_ev;Z_stra_2020win_ev];

N0_conv_all = [N0_conv_2019spr;N0_conv_2020spr;N0_conv_2020sum;N0_conv_2019sum;...
    N0_conv_2019aut;N0_conv_2020aut;N0_conv_2019win;N0_conv_2020win];
N0_stra_all = [N0_stra_2019spr;N0_stra_2020spr;N0_stra_2020sum;N0_stra_2019sum;...
    N0_stra_2019aut;N0_stra_2020aut;N0_stra_2019win;N0_stra_2020win];
N0_conv_all_ev = [N0_conv_2019spr_ev;N0_conv_2020spr_ev;N0_conv_2020sum_ev;N0_conv_2019sum_ev;...
    N0_conv_2019aut_ev;N0_conv_2020aut_ev;N0_conv_2019win_ev;N0_conv_2020win_ev];
N0_stra_all_ev = [N0_stra_2019spr_ev;N0_stra_2020spr_ev;N0_stra_2020sum_ev;N0_stra_2019sum_ev;...
    N0_stra_2019aut_ev;N0_stra_2020aut_ev;N0_stra_2019win_ev;N0_stra_2020win_ev];

ND_conv_all = [ND_conv_2019spr;ND_conv_2020spr;ND_conv_2020sum;ND_conv_2019sum;...
    ND_conv_2019aut;ND_conv_2020aut;ND_conv_2019win;ND_conv_2020win];
ND_stra_all = [ND_stra_2019spr;ND_stra_2020spr;ND_stra_2020sum;ND_stra_2019sum;...
    ND_stra_2019aut;ND_stra_2020aut;ND_stra_2019win;ND_stra_2020win];
ND_conv_all_ev = [ND_conv_2019spr_ev;ND_conv_2020spr_ev;ND_conv_2020sum_ev;ND_conv_2019sum_ev;...
    ND_conv_2019aut_ev;ND_conv_2020aut_ev;ND_conv_2019win_ev;ND_conv_2020win_ev];
ND_stra_all_ev = [ND_stra_2019spr_ev;ND_stra_2020spr_ev;ND_stra_2020sum_ev;ND_stra_2019sum_ev;...
    ND_stra_2019aut_ev;ND_stra_2020aut_ev;ND_stra_2019win_ev;ND_stra_2020win_ev];

Delt_m_conv_all = [Delt_m_conv_2019spr;Delt_m_conv_2020spr;Delt_m_conv_2020sum;Delt_m_conv_2019sum;...
    Delt_m_conv_2019aut;Delt_m_conv_2020aut;Delt_m_conv_2019win;Delt_m_conv_2020win];
Delt_m_stra_all = [Delt_m_stra_2019spr;Delt_m_stra_2020spr;Delt_m_stra_2020sum;Delt_m_stra_2019sum;...
    Delt_m_stra_2019aut;Delt_m_stra_2020aut;Delt_m_stra_2019win;Delt_m_stra_2020win];
Delt_m_conv_all_ev = [Delt_m_conv_2019spr_ev;Delt_m_conv_2020spr_ev;Delt_m_conv_2020sum_ev;Delt_m_conv_2019sum_ev;...
    Delt_m_conv_2019aut_ev;Delt_m_conv_2020aut_ev;Delt_m_conv_2019win_ev;Delt_m_conv_2020win_ev];
Delt_m_stra_all_ev = [Delt_m_stra_2019spr_ev;Delt_m_stra_2020spr_ev;Delt_m_stra_2020sum_ev;Delt_m_stra_2019sum_ev;...
    Delt_m_stra_2019aut_ev;Delt_m_stra_2020aut_ev;Delt_m_stra_2019win_ev;Delt_m_stra_2020win_ev];

LWC_conv_all = [LWC_conv_2019spr;LWC_conv_2020spr;LWC_conv_2020sum;LWC_conv_2019sum;...
    LWC_conv_2019aut;LWC_conv_2020aut;LWC_conv_2019win;LWC_conv_2020win];
LWC_stra_all = [LWC_stra_2019spr;LWC_stra_2020spr;LWC_stra_2020sum;LWC_stra_2019sum;...
    LWC_stra_2019aut;LWC_stra_2020aut;LWC_stra_2019win;LWC_stra_2020win];
LWC_conv_all_ev = [LWC_conv_2019spr_ev;LWC_conv_2020spr_ev;LWC_conv_2020sum_ev;LWC_conv_2019sum_ev;...
    LWC_conv_2019aut_ev;LWC_conv_2020aut_ev;LWC_conv_2019win_ev;LWC_conv_2020win_ev];
LWC_stra_all_ev = [LWC_stra_2019spr_ev;LWC_stra_2020spr_ev;LWC_stra_2020sum_ev;LWC_stra_2019sum_ev;...
    LWC_stra_2019aut_ev;LWC_stra_2020aut_ev;LWC_stra_2019win_ev;LWC_stra_2020win_ev];

mu_conv_all = [mu_conv_2019spr;mu_conv_2020spr;mu_conv_2020sum;mu_conv_2019sum;...
    mu_conv_2019aut;mu_conv_2020aut;mu_conv_2019win;mu_conv_2020win];
mu_stra_all = [mu_stra_2019spr;mu_stra_2020spr;mu_stra_2020sum;mu_stra_2019sum;...
    mu_stra_2019aut;mu_stra_2020aut;mu_stra_2019win;mu_stra_2020win];
mu_conv_all_ev = [mu_conv_2019spr_ev;mu_conv_2020spr_ev;mu_conv_2020sum_ev;mu_conv_2019sum_ev;...
    mu_conv_2019aut_ev;mu_conv_2020aut_ev;mu_conv_2019win_ev;mu_conv_2020win_ev];
mu_stra_all_ev = [mu_stra_2019spr_ev;mu_stra_2020spr_ev;mu_stra_2020sum_ev;mu_stra_2019sum_ev;...
    mu_stra_2019aut_ev;mu_stra_2020aut_ev;mu_stra_2019win_ev;mu_stra_2020win_ev];

lamd_conv_all = [lamd_conv_2019spr;lamd_conv_2020spr;lamd_conv_2020sum;lamd_conv_2019sum;...
    lamd_conv_2019aut;lamd_conv_2020aut;lamd_conv_2019win;lamd_conv_2020win];
lamd_stra_all = [lamd_stra_2019spr;lamd_stra_2020spr;lamd_stra_2020sum;lamd_stra_2019sum;...
    lamd_stra_2019aut;lamd_stra_2020aut;lamd_stra_2019win;lamd_stra_2020win];
lamd_conv_all_ev = [lamd_conv_2019spr_ev;lamd_conv_2020spr_ev;lamd_conv_2020sum_ev;lamd_conv_2019sum_ev;...
    lamd_conv_2019aut_ev;lamd_conv_2020aut_ev;lamd_conv_2019win_ev;lamd_conv_2020win_ev];
lamd_stra_all_ev = [lamd_stra_2019spr_ev;lamd_stra_2020spr_ev;lamd_stra_2020sum_ev;lamd_stra_2019sum_ev;...
    lamd_stra_2019aut_ev;lamd_stra_2020aut_ev;lamd_stra_2019win_ev;lamd_stra_2020win_ev];


