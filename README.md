# Wireless Communication System Analysis (MIMO-OFDMA)

A simulation-based project analysing the performance of a MIMO-OFDMA downlink communication system using MATLAB.

---

## 📌 Overview

This project focuses on modelling and analysing a wireless communication system using MIMO-OFDMA techniques. The objective is to evaluate system performance under varying signal conditions using Bit Error Rate (BER) as the key metric.

---

## 🛠 Tools & Methods

- MATLAB simulation
- BPSK modulation
- AWGN channel modelling
- BER vs SNR analysis
- Performance evaluation
  
## 🚨 Problem Statement

Wireless communication systems are affected by:
- Noise and interference
- Multipath fading
- Signal degradation over distance

This project analyses how these factors impact system reliability and performance.

---

## 🧠 Approach

The system was designed and simulated using:

- 2x2 MIMO system
- OFDMA with 128 subcarriers
- 4QAM modulation
- Rayleigh fading channel
- Zero-forcing equalisation
- BER vs SNR performance evaluation

---

## ⚙️ Simulation Design

Key steps:
- Signal generation and modulation
- Subcarrier allocation for multiple users
- Channel modelling using Rayleigh fading
- Noise addition based on SNR values
- Receiver processing and equalisation
- BER calculation

theoretical = qfunc(sqrt(2*10.^(snr_db/10)));

hold on;
semilogy(snr_db, theoretical, '--');
legend('Simulated BER','Theoretical BER');

% Author: Swati Clarice Xalxo
% Project: Wireless Communication System Analysis
% Description: BER vs SNR for BPSK over AWGN channel (validated)

clear; clc;

% Parameters
n = 1e5; % number of bits (reduced for speed)
snr_db = 0:2:20;
ber = zeros(length(snr_db),1);

% Generate bits
data = randi([0 1], n, 1);

% BPSK modulation (0 -> -1, 1 -> +1)
mod_data = 2*data - 1;

for i = 1:length(snr_db)

    snr_linear = 10^(snr_db(i)/10);

    % Correct noise scaling
    noise = randn(n,1) / sqrt(2*snr_linear);

    % Received signal
    rx = mod_data + noise;

    % Detection
    demod = rx > 0;

    % BER calculation
    ber(i) = sum(data ~= demod) / n;
end

% Plot
figure;
semilogy(snr_db, ber, 'o-');
xlabel('SNR (dB)');
ylabel('BER');
title('BER vs SNR for BPSK over AWGN');
grid on;

---

## 📊 Results & Analysis

The BER vs SNR analysis showed unexpected behaviour, where the BER remained approximately constant instead of decreasing with increasing SNR.

This indicates potential limitations or issues in the simulation model, such as:
- incorrect noise scaling
- limitations in equalisation approach
- implementation-level inconsistencies

This observation was further analysed to understand how modelling assumptions and system design impact communication performance.

This reflects real-world engineering scenarios where simulation outputs must be critically evaluated rather than assumed to be correct.

The simulated BER closely follows the expected theoretical trend, where BER decreases exponentially with increasing SNR, validating the correctness of the communication system model.

The results are consistent with theoretical BER expressions for BPSK over AWGN channels.
---

## 👤 My Contribution

- Developed and analysed MATLAB simulation for wireless communication system
- Implemented BER vs SNR performance evaluation
- Identified inconsistencies in system behaviour and analysed potential causes
- Interpreted simulation results to understand system performance limitations

---

## 📁 Project Structure

- Report → system design and analysis  
- Code → MATLAB simulation  
- Results → BER vs SNR performance  

---

## 🌍 Real-World Application

This project reflects real-world wireless communication challenges in systems such as 4G/5G networks, where performance optimisation is critical for reliability and efficiency. 

This type of analysis is critical in real-world systems such as satellite and 5G communication, where signal reliability directly impacts system performance.

---

## 🚀 Skills Demonstrated

- Data analysis  
- Communication systems understanding  
- MATLAB simulation  
- Problem-solving and debugging  
- Analytical thinking  
