# Peak Detector Module

This module detects peaks in a stream of correlation data using a finite state machine that monitors the signal slope. A peak is identified when the data transitions from rising to falling, and a counter tracks the number of samples between such events for reporting.

## New Implementation: PD_ASP

The new implementation (`PD_ASP`) introduces a more structured and reliable FSM with clearly defined states and transitions. Key improvements include:

- **Full 28-bit correlation values** are used for higher accuracy.
- **Separation of configuration and processing logic** for better maintainability.
- **Proper counter implementation**: The counter is now a signal, ensuring correct tracking and reporting of peak positions.
- **Clear FSM design**: State and next_state are separated, making the logic easier to follow.
- **Simplified detection logic**: Configuration handling is isolated from peak detection.


## Comparison with Old Implementation

The previous implementation (`AspPeakDetector`) attempted similar functionality but had a couple issues:

- Mixed configuration and data logic, reducing clarity.
- FSM design was less clear, making it harder to maintain.
- The counter was implemented as a variable, leading to unreliable updates and inconsistent peak reporting.

The new design resolves these issues, resulting in improved clarity, accuracy, and maintainability.