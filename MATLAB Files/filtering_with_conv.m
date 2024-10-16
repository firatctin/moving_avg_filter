%we are creating a desired sinozoidal signal
sample = linspace(0,0.2,100);
sin_s = 10*sin(2*pi*10*sample);
%we are adding a gaussian noise to our singal N ~ (1,4)
noise = 2*randn(size(sample));
noisy_s = sin_s + noise;

%creating an impulse response to perform convolution

N = 12; %elements in the filter mask

mask = (1/N)*ones(1,N);
masked_sig=conv(noisy_s, mask,'same');%we are using the same keyword because we want to make
%filtered signal's length same as the input signal length

plot(noisy_s);
hold
plot(masked_sig,'r');
legend({'Noisy Signal','Filtered Signal'},'Location','southwest')
