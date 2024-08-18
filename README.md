# Ball-and-Beam-Model
This project includes files to simulate the ball and arrow system and Arduino codes for real-world data results. Ball and beam is a basic reference point system that has non-linear and unstable system dynamics. In this project, we used a linear and stable system to simplify the equations and increase the accuracy of the calculations. it was done by a small approximation and rewrote the final equations in terms of this approximation.

![3D system model](https://github.com/user-attachments/assets/e3ac5685-e9cf-4a46-8eec-6a7537ed1db9)

Robot components:
  1. Arduino Uno
  2. Ultrasonic sensor
  3. Servo motor
  4. Joystick

![System2](https://github.com/user-attachments/assets/a5c8561b-60be-4720-b23f-bd7bd0d4ed24)


## Arduino

In order to use the codes and commands, we need to call the following libraries:
  * <PID_v1.h>
  * <Servo.h>
  * <TM1637Display.h>

We should consider a base between the existing bases for each base of the modules that are connected to the board. For example, we choose pin 12 for servo motor (const int servoPin = 12). In the same way, we enter their values ​​or bases for any other variable in the program or other modules.

By using the *setup function*, the initial values ​​of the bases are configured and they are introduced and set with their respective modules. e.g. for the ultrasonic sensor, we must determine whether each of the bases is input or output, which can be done using the command: *pinMode()* can be done like this: *pinMode(pingPin, OUTPUT)*

Using the **void loop** function, we create the main program. Items and codes placed in this function are repeated indefinitely. As long as the Arduino is connected to power, this code repetition will be done. This function is used to actively control the Arduino board.
The structure of the PID code: *PID (&Input, &Output, &Setpoint, Kp, Ki, Kd, ​​Direction)*
where *Input* is the input value to the controller, which is an error, and *Output* is its output and Setpoint is our desired output value, *Kp*, *Ki*, *Kd* are our PID coefficients.
