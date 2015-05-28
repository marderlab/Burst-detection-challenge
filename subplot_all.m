function subplot_all(D)
% subplot all %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% usage: subplot_all(d)
% plots all channels of data serially on top of one another so that you can
% see which data correspond to which channel
% all data should have same number of time points, otherwise this function
% will skew it and spread sparse data out so that it covers the same time
% window

% verify the number of samples is the same
[numsamples, numchannels] = size(D);
for d = 1:numchannels
  if length(D(:,d)) ~= numsamples
    fprintf('channel %i should have %i points but has %i instead', ...
            d, numsamples, length(D(:,d)))
            break
  end
end

% plot these things
figure();
for d = 1:numchannels
  subplot(numchannels,1,d), plot(D(:,d));
  %title(char('plot of channel %i',d));
end


end
  

