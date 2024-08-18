clear all;close all;clc
finishup = onCleanup(@() ExitProgram(a));
disp('For Exit Program Press Ctrl+C');
arduino=serial('COM10','BaudRate',9600);
serial communication object on port COM10
fopen(arduino);
CM(1)=0;
time(1)=0;
tic;
while (toc<=200)
CM(2)=fscanf(arduino,'%f');
time(2)=toc;
figure(1);
grid on;
%axis([0 30,0 35])
plot(time,CM,'r','LineWidth',1);
xlabel('time (second)')
ylabel('distance(CM)')
title('system response')
hold on
CM(1)=CM(2);
time(1)=time(2);
end
disp(CM)
fclose(arduino);
function ExitProgram(BoardName)
clear BoardName;
clear all;
disp('Program Terminated');
end