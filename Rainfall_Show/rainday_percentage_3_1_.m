%Description:
%show rain day percentage
% History:
% 2021.09.13 by zhangtc

%daily rainfall
load('D:\DATA\Parsivel_temporary\Rainfall_data_non.mat',...
    'rainfall2019_2020', 'rainfall2020_2021');
rainday2019 = zeros(1,11);
rainday2020 = zeros(1,11);
rainfall2019 = sum(rainfall2019_2020);
rainfall2020 = sum(rainfall2020_2021);
