clear
clc

s = serial('COM5','BaudRate',9600);
fopen(s)

fprintf(s,'c')
out = fscanf(s)
fclose(s)
delete(s)
clear s