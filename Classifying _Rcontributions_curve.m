%Description:
%Classifying Rcontriburions curve

% History:
% 2022.03.28 by zhangtc


load('D:\DATA\Parsivel_temporary\DSD_parameters.mat','central_diameter');
tempx = central_diameter(3:23).';
RRDconvper = h5read('D:\DATA\Parsivel_temporary\RDlevels.h5','/RRDconvper');
RRconv= h5read('D:\DATA\Parsivel_temporary\RDlevels.h5','/RRconv');
        findpeaks(RRDconvper),tempx,'MinPeakHeight',12,'MinPeakProminence',5,'MinPeakDistance',0.5);
        [pks,locs] = findpeaks(RRDconvper,tempx,'MinPeakHeight',12,'MinPeakProminence',5,'MinPeakDistance',0.5); 




