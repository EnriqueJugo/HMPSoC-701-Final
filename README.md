# HMPSoC Project - Group 13

## Overview

This project implements a heterogeneous multi-processor system-on-chip (HMPSoC) on the DE1-SoC, featuring:

* **ReCOP**: a reactive co-processor for custom instructions
* **ASPs**: Application-Specific Processors (ADC-ASP, AVG-ASP, CORR-ASP, PD-ASP)
* **TDMA-MIN** interconnect for deterministic data exchange
* **NIOS II** non-critical control path

The repository contains:

```
EnriqueJugo/        — Enrique's Repository for CORR-ASP
Quartus/       — Containing Project and Simulations
RoniJagini-PD - Roni's Repository for PD-ASP
```

## Prerequisites

* **Intel Quartus Prime 18.1 Lite** compatible with DE1-SoC
* **ModelSim‑Intel FPGA Edition 10.1** (or ModelSim‑Altera)
* **NIOS II EDS / Eclipse** (v18.1)
* **DE1‑SoC** board with USB‑Blaster cable
* **ARM JTAG UART** driver installed

## Directory Structure

```
EnriqueJugo/        — Enrique's Repository for CORR-ASP
Quartus/       — Containing Project and Simulations
RoniJagini-PD - Roni's Repository for PD-ASP
```

---

## 1. Simulation

Use ModelSim to verify functionality of ReCOP, ASPs, and the TDMA-MIN interconnect. This is done by simulation.
To get started on ModelSim, change the directory to the following:

```
Quartus\Work\Critical\ASPs\test
```

2. **Compile VHDL sources**

Ensure that all respective files (AVG_ASP.vhd, CORR_ASP.vhd, PD_ASP.vhd, ROM.vhd, Sig_Gen.vhd, TestTopLevel_ASP.vhd) and respective dependencies (i.e. TDMA-MIN files) are compiled before attempting simulation 

3. **Run testbench**

Use the Waveform Viewer to view the appropriate signals.
Run the simulation for 10 ms to observe the full behaviour of the system. 

## 2. Programming the DE1-SoC

Generate the FPGA configuration file and program the board.

1. **Open Quartus project**

   * Launch Quartus Prime and load `Quartus/Work/HMPSoC.qpf`.

2. **Compile design**

   * Click **Processing → Start Compilation**.
   * After successful compilation, locate the `.sof` in `Quartus/Work/output_files/`.

3. **Program FPGA**

   * Connect USB‑Blaster to DE1‑SoC.
   * In Quartus: **Tools → Programmer**.
   * Add the `.sof` file, set Mode to **JTAG**, and click **Start**.

---

## 3. Running NIOS II Eclipse Code

Develop and deploy the software application on the NIOS II processor.

1. **Launch NIOS II EDS**

   * Open Eclipse and select the workspace at `Quartus\Work\Non-Critical\Eclipse`.

2. **Build**

   * Right-click on the project named '' → **Build Project**.

4. **Run on Hardware**

   * Connect DE1‑SoC via USB‑Blaster.
   * Right-click NIOS II Application → **Run As → NIOS II Hardware**.
   * **Console** view will show JTAG UART output.

---

## Troubleshooting

* **Simulation failures**: Check testbench stimulus and clock/reset generation.
* **Programming issues**: Ensure USB‑Blaster driver is installed and cable is seated.
* **NIOS II download**: Restart JTAG Server in NIOS II EDS if connection fails.

---
