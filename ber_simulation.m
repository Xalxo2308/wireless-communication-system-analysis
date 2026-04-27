% MATLAB Simulation for BPSK Modulation in a Satellite Communication System
% This script simulates the BER performance of a BPSK communication system
% over an AWGN channel, which is relevant for the transmission of soil moisture
% data from satellites to ground stations.

% Parameters
M = 2; % Modulation order for BPSK
n = 1e6; % Number of bits to simulate
snr_db = 0:2:20; % SNR range in dB

% Generate random bit stream
data = randi([0 1], n, 1);

% BPSK modulation: Map 0 to -1 and 1 to 1
mod_data = 2 * data - 1;

% Initialize BER vector to store the results
ber = zeros(length(snr_db), 1);

% Loop over SNR values
for i = 1:length(snr_db)
    % Calculate the linear SNR from dB value
    snr_linear = 10^(snr_db(i) / 10);
    
    % Generate AWGN noise
    noise = (1 / sqrt(2 * snr_linear)) * randn(n, 1);
    
    % Add noise to the modulated data
    noisy_data = mod_data + noise;
    
    % BPSK demodulation: Decision based on the sign of the noisy data
    demod_data = noisy_data > 0;
    
    % Calculate BER manually: Compare transmitted and received bits
    num_errors = sum(data ~= demod_data);
    ber(i) = num_errors / n;
end

% Plot BER vs. SNR
figure;
semilogy(snr_db, ber, '-o');
xlabel('SNR (dB)');
ylabel('BER');
title('BER Performance of BPSK over AWGN Channel');
grid on;

% Constellation Diagram for BPSK
% To visualize the constellation points at a given SNR value
snr_db_constellation = 10; % SNR value for constellation diagram
snr_linear_constellation = 10^(snr_db_constellation / 10);

% Generate AWGN noise for constellation diagram
noise_constellation = (1 / sqrt(2 * snr_linear_constellation)) * randn(n, 1);
noisy_data_constellation = mod_data + noise_constellation;

% Plot constellation diagram
figure;
plot(noisy_data_constellation, zeros(n, 1), 'o', markersize=2);
ax = gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
title('Constellation Diagram for BPSK');
xlabel('In-Phase');
ylabel('Quadrature');
grid on;
xlim([-2 2]);
ylim([-1 1]);
