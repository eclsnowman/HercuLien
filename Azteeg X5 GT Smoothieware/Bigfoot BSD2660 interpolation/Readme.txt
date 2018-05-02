The spreadsheet used to determine register values can be found at the following link: 
https://www.kreativ-fraesen.de/technisches/3d-drucker/stepper-driver-tmc2660-en/

Modifications to the original TMC2660 settings provided by Kreativ-fraesen on this 
spreadsheet were made by altering green values in the spreadsheet tabs and adding 
lines to the config file corresponding to the calculated register hexadecimal value using:

motor_driver_control.alpha.reg 00204,981C0,A0000,C000E,E0060
motor_driver_control.beta.reg 00204,981C0,A0000,C000E,E0060
motor_driver_control.gamma.reg 00204,981C0,A0000,C000E,E0060

The configuration shown above allows for step generation at 1/16 microstepping and
driver-performed interpolation to 1/256. The result is a (much) quieter running
system where microstepping isn't limited by processor step generation. My initial tests
have shown equal performance for driver-enabled interpolation, no interpolation, and 
1/64 on-board microstepping (4x steps/mm) when printed using identical g-code 

Note: The config is for a system with X and Y steps per mm of 100 and Z steps @ 720/mm
(at 1/16 microstepping) with drivers running at 1.0A.

The stock Herculien runs X, Y and Z @ 80, 80, and 2880 steps/mm @ 1/16 microstepping. Be
sure to alter the config file accordingly before use in your system.

Directly editing the driver registers without knowing what you are doing can lead to
nonsensical and potentially damaging results. Do this at your own risk.