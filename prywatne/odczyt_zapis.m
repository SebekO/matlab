clc
clear
[o, ErrM] = fopen ('5.txt', 'r');
if(o == -1)
    warning(ErrM); 
    return;
end;
a = fscanf(o,'%d%c %d%c %d%c %d%c %i%c %i%c %i%c %d%c %d%c %d%c %d\n',[21, Inf])';
fclose(o);
g=[(a(:,3)),(a(:,5)),(a(:,7)),(a(:,17)),(a(:,19)),(a(:,21))]
[z, ErrM] = fopen ('5_1.txt', 'w');
if(z == -1)
    warning(ErrM); 
    return;
end;
b = fprintf(z,'%i %i %i %d:%d:%d\n',g');
fclose(z);


x=a(:,21)+a(:,19)*60+a(:,17)*3600;
y=a(:,3);
y2=a(:,5);
y3=a(:,7);
cy=a(:,9);
cy2=a(:,11);
cy3=a(:,13);
subplot(2,3,1);
plot(x,y,'k.')
subplot(2,3,2);
plot(x,y2,'r.')
subplot(2,3,3);
plot(x,y3,'r.')

subplot(2,3,4);
plot(x,cy,'k.')
subplot(2,3,5);
plot(x,cy2,'r.')
subplot(2,3,6);
plot(x,cy3,'r.')

