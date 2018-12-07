clear
clc

s = serial('COM5','BaudRate',9600);

[z, ErrM] = fopen ('O3.txt', 'w');
if(z == -1)
    warning(ErrM); 
    return;
end;
opis='   DATE    START DURATION  DOWN    UP\n';
b = fprintf(z, opis );
fopen(s);
for i=1:1:10
fprintf(s,'\n')
out = fscanf(s)
b = fprintf(z,out);
end
fclose(s)
delete(s)
clear s
fclose(z);