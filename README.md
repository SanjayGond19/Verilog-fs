# Verilog FSM Design & Verification

A Finite State Machine (FSM) designed and verified using Verilog HDL.

## Project Overview

This project implements an FSM using D flip-flop based state storage and combinational next-state logic. A Verilog testbench is used to generate clock and input stimulus for functional verification.

## Files

- `d.v` - D flip-flop module with set and reset
- `fsm1.v` - FSM design with next-state logic
- `fsm1_tb.v` - Verilog testbench for simulation and verification
- `waveform_01.png` - GTKWave simulation waveform
- `calculation.png` - FSM calculation / analysis

## Verification

The testbench includes:

- Clock generation
- Reset testing
- Input stimulus
- Signal monitoring
- VCD waveform generation

Simulation waveforms were analyzed using GTKWave to verify the FSM behavior.

## Tools Used

- Verilog HDL
- GTKWave
- VCD Simulation
