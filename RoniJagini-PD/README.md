# Peak Detector Module

This module detects peaks in a stream of correlation data using a finite state machine that monitors the signal slope. A peak is identified when the data transitions from rising to falling, and a counter tracks the number of samples between such events for reporting.

## New Implementation: PD_ASP

The new implementation (`PD_ASP`) introduces a more structured and reliable FSM with clearly defined states and transitions. Key improvements include:

- **Full 28-bit correlation values** are used for higher accuracy.
- **Separation of configuration and processing logic** for better maintainability.
- **Proper counter implementation**: The counter is now a signal, ensuring correct tracking and reporting of peak positions.
- **Clear FSM design**: State and next_state are separated, making the logic easier to follow.
- **Simplified detection logic**: Configuration handling is isolated from peak detection.


## How to Simulate (Quartus & ModelSim)

1. **Open the project in Quartus.**
2. **Add all VHDL source files to your Quartus project:**
   - `TdmaMinTypes.vhd` 
   - `PD_ASP.vhd`
   - `test/tb_PD.vhd`
3. **Compile the project in Quartus** to check for syntax and elaboration errors.
4. **Launch ModelSim from Quartus:**
   - Go to **Tools > Run Simulation Tool > RTL Simulation**.
   - ModelSim will open with your project files pre-loaded.
5. **In ModelSim, set up and run the simulation:**
   - In the ModelSim console, set the testbench as the top-level:
     ```
     vsim work.PD_ASP_tb
     ```
   - Run the simulation for at least **300 ns**:
     ```
     run 300 ns
     ```
6. **View the simulation output:**
   - The testbench will print the value of `send.data` at each clock cycle in the transcript window.
   - You can also add signals to the waveform viewer to observe peaks and valleys as the testbench applies various input patterns.

## Comparison with Old Implementation

The previous implementation (`AspPeakDetector`) attempted similar functionality but had a couple issues:

- Mixed configuration and data logic, reducing clarity.
- FSM design was less clear, making it harder to maintain.
- The counter was implemented as a variable, leading to unreliable updates and inconsistent peak reporting.

The new design resolves these issues, resulting in improved clarity, accuracy, and maintainability.