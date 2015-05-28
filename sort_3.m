function [inds1, inds2, inds3] = sort_3(amps, bounds)
% usage: [spk1, spk2, spk3] = sort_3(amps, bounds)
% This bins the spikes into three groups based on bounds of their amps,
% where amps are the amplitudes of the (extracellular) spikes
% amps : n x 1 array
% bounds: 4 x 1 array [bound0, bound1, bound2, bound3] where the three
% spikes groups are found between each of the bounds.
% inds (output) are the indices of where each of these spikes occurs in the
% list

inds1 = [];
inds2 = [];
inds3 = [];
orphans = [];

for a = 1:length(amps)
  if amps(a) >= bounds(1) && amps(a) < bounds(2)
    inds1(end+1) = a;
  elseif amps(a) >= bounds(2) && amps(a) < bounds(3)
    inds2(end+1) = a;
  elseif amps(a) >= bounds(3) && amps(a) < bounds(4)
    inds3(end+1) = a;
  else
    orphans(end+1) = a;
  end
end

end
