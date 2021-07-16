% 
% speed_coe = zeros(32,32);
% for num=1:32
%     key = find(abs(central_speed-emp_speed1(num)) < 0.6 .* emp_speed1(num));
%     speed_coe(key,num) = 1;
%     
% end

% save('E:\CODE\OTTparsivel2_mat\Raintype_data.mat',...
%         'daymark_c','daymark_s');
%%
%rain events


%%
non_Rain = [];
non_Rain_loc = {};
file_root = 'E:\DATA\OTTParsivel\Parsivel2019-\';
file_day = dir([file_root,'*.h5']);
for fnum = 1 : length(file_day)
    fname = [file_root,file_day(fnum).name];
    
    w_code = h5read(fname,'/Source/w_code');
    temp = find(w_code > 63);
    if ~isempty(temp) & length(temp) > 5
        
        non_Rain = [non_Rain;file_day(fnum).name(16:23)];
        non_Rain_loc = [non_Rain_loc;find(w_code > 63)];
    end
end

save('E:\CODE\OTTparsivel2_mat\nonRain.mat','non_Rain','non_Rain_loc');