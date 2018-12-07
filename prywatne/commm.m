clc
clear
SerialPort = 'com10';
s = serial(SerialPort, 'BaudRate', 57600);
fopen(s);

t = 0;
y = 1;

a = str2num(fscanf(s));
data_n1(1,1)=a(1,3);
h = animatedline(t,data_n1(1,1));

serial_n1=061318011028;
serial_n2=082918010321;
serial_n3=102617010931;

tic
while t <= 15
    a = str2num(fscanf(s));
     if (a(1,1)==serial_n1)
       data_n1(y,1)=a(1,3);
       addpoints(h, t, data_n1(y,1));
       y= y+1;
       t= t+1;
       drawnow limitrate
     end
end
toc

fclose(s);
delete(s);
clear s;