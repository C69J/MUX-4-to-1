# 4-to-1 Multiplexer (MUX) – Verilog

This project implements a **4-to-1 Multiplexer (MUX)** using **Verilog HDL**.

A multiplexer is a combinational digital circuit that selects one of multiple input signals and forwards the selected input to a single output based on the select lines.

## Overview

The 4-to-1 MUX consists of:

- 4 Data Inputs (`I0`–`I3`)
- 2 Select Inputs (`S1`, `S0`)
- 1 Output (`Y`)
- Combinational Logic
- Verilog HDL implementation
- Verilog testbench for functional verification

## Block Diagram

```text
                         ┌───────────────┐
        I0 ─────────────►│               │
        I1 ─────────────►│               │
        I2 ─────────────►│    4-to-1     │──────► Y
        I3 ─────────────►│      MUX      │
                         │               │
        S1 ─────────────►│               │
        S0 ─────────────►│               │
                         └───────────────┘
