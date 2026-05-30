# Low Power VLSI Design using Clock Gating

## Overview

This project demonstrates a low-power RTL design methodology using clock-enable based clock gating techniques in Verilog HDL.

An 8-bit counter was implemented in two versions:

1. Normal Counter
2. Clock-Gated Counter

The gated design updates only when the enable signal is asserted, reducing unnecessary switching activity and improving power efficiency.

---

## Objectives

- Design a baseline sequential circuit
- Implement clock-enable based gating
- Perform RTL simulation
- Analyze RTL and synthesized schematics
- Generate utilization and power reports
- Study switching activity reduction techniques

---

## Tools Used

- Verilog HDL
- Xilinx Vivado
- Vivado Simulator

---

## Design Description

### Normal Counter

The counter increments on every clock cycle.

### Clock-Gated Counter

The counter increments only when:

```verilog
if(en)
    count <= count + 1;
```

Vivado maps this enable condition to dedicated clock-enable resources instead of creating a physically gated clock.

---

## Simulation Results

### Normal Counter

Counter increments continuously.

### Clock-Gated Counter

Counter pauses when enable is low and resumes counting when enable becomes high.

---

## RTL Schematic

The elaborated design contains:

- 8-bit register
- Incrementer
- Clock Enable path
- Reset logic

---

## Synthesis Results

### Resource Utilization

| Resource | Used |
|-----------|--------|
| LUTs | 6 |
| Flip-Flops | 8 |
| IO | 11 |

---

## Power Analysis

Vivado power estimation was performed on the synthesized design.

Results:

- Total On-Chip Power: 4.034 W
- Dynamic Power: 3.951 W
- Static Power: 0.082 W

The design demonstrates a low-power RTL methodology by reducing unnecessary switching activity through clock-enable based optimization.

---

## Learning Outcomes

- Low Power VLSI Design
- Clock Gating Concepts
- RTL Design and Verification
- FPGA Synthesis Flow
- Resource Utilization Analysis
- Power Estimation

---

## Author

Shubham Shaw
ECE Undergraduate
