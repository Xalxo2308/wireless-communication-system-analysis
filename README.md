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

---

## 📊 Results & Analysis

The BER vs SNR analysis showed unexpected behaviour, where the BER remained approximately constant instead of decreasing with increasing SNR.

This indicates potential limitations or issues in the simulation model, such as:
- incorrect noise scaling
- limitations in equalisation approach
- implementation-level inconsistencies

This observation was further analysed to understand how modelling assumptions and system design impact communication performance.

This reflects real-world engineering scenarios where simulation outputs must be critically evaluated rather than assumed to be correct.

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

---

## 🚀 Skills Demonstrated

- Data analysis  
- Communication systems understanding  
- MATLAB simulation  
- Problem-solving and debugging  
- Analytical thinking  
