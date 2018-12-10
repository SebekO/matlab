clc
clear
SerialPort = 'com10';
s = serial(SerialPort, 'BaudRate', 57600);
fopen(s);
t = 0;
tic
while t <= 7
   d= str2num(fscanf(s))
    d(1,1)
    t=t+1;
end
toc

fclose(s);
delete(s);
clear s;