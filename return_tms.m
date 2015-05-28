function tms = return_tms(array)
%
% usage: return_tms(array)
%
%
% assumes 10kHz sampling rate and returns a tms array of length 'array'
tms = linspace(0,(0.0001*length(array)),length(array));

end

