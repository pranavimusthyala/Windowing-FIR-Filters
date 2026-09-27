clc;
clear;
close all;

% Band-Stop FIR Filter using Windowing Technique

% Filter specifications
Fs = 1000;          % Sampling frequency (Hz)
F1 = 100;           % Lower cutoff frequency (Hz)
F2 = 300;           % Upper cutoff frequency (Hz)
N = 50;             % Filter order

% Normalized cutoff frequencies
Wn = [F1 F2] / (Fs/2);

% Design FIR Band-Stop filter using Hamming window
b = fir1(N, Wn, 'stop', hamming(N+1));

% Frequency response
freqz(b, 1, 1024, Fs);

title('FIR Band-Stop Filter using Hamming Window');

% Display filter coefficients
disp('Band-Stop Filter Coefficients:');
disp(b);