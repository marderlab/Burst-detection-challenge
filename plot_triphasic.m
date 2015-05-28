function plot_triphasic(spks, amps, inds1, inds2, inds3)
% usage: plot_triphasic(spks, amps, inds1, inds2, inds3)
%
% Plots the triphasic rhythm separated by binned spike indices
% Inputs:
%     spks: spike times (sec)
%     amps: spike amplitudes (mV)
%     inds1-3: indices (of spks & amps) for groups of cell#1, #2 and #3
%

% for each index, plot the spike activity
inds = zeros(max([length(inds1), length(inds2), length(inds3)]),3);
inds(1:length(inds1),1) = inds1;
inds(1:length(inds2),2) = inds2;
inds(1:length(inds3),3) = inds3;
figure();
hold on;
cols = ['k','r','b'];

%for c = 1:3
%  curr_tms = spks(inds(find(inds(:,c))));
%  curr_amps = amps(inds(find(inds(:,c))));
%  scatter(curr_tms, curr_amps, '.');
%end

curr_tms = spks(inds(find(inds(:,1)),1));
curr_amps = amps(inds(find(inds(:,1)),1));
scatter(curr_tms, curr_amps, 'r.');
curr_tms = spks(inds(find(inds(:,2)),2));
curr_amps = amps(inds(find(inds(:,2)),2));
scatter(curr_tms, curr_amps, 'b.');
curr_tms = spks(inds(find(inds(:,3)),3));
curr_amps = amps(inds(find(inds(:,3)),3));
scatter(curr_tms, curr_amps, 'k.');

end