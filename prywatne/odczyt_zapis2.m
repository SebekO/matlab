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




[o, ErrM] = fopen ('6.txt', 'r');
if(o == -1)
    warning(ErrM); 
    return;
end;
c = fscanf(o,'%d%c %d%c %d%c %d%c %i%c %i%c %i%c %d%c %d%c %d%c %d\n',[21, Inf])';
fclose(o);
h=[(c(:,3)),(c(:,5)),(c(:,7)),(c(:,17)),(c(:,19)),(c(:,21))]
[z, ErrM] = fopen ('5_1.txt', 'w');
if(z == -1)
    warning(ErrM); 
    return;
end;
d = fprintf(z,'%i %i %i %d:%d:%d\n',h');
fclose(z);



cx=c(:,21)+c(:,19)*60+c(:,17)*3600;
cy=c(:,9);
cy2=c(:,11);
cy3=c(:,13);

x=a(:,21)+a(:,19)*60+a(:,17)*3600;
y=a(:,9);
y2=a(:,11);
y3=a(:,13);
subplot(1,3,1);
plot(x,y,'r.',cx,cy,'b-');
subplot(1,3,2);
plot(x,y2,'r-',cx,cy2,'b-')
subplot(1,3,3);
plot(x,y3,'r-',cx,cy3,'b-')

%%
cx=c(:,21)+c(:,19)*60+c(:,17)*3600;
cy=c(:,3);
cy2=c(:,5);
cy3=c(:,7);

x=a(:,21)+a(:,19)*60+a(:,17)*3600;
y=a(:,3);
y2=a(:,5);
y3=a(:,7);
subplot(1,3,1);
plot(x,y,'r.',cx,cy,'b-');
subplot(1,3,2);
plot(x,y2,'r-',cx,cy2,'b-')
subplot(1,3,3);
plot(x,y3,'r-',cx,cy3,'b-')

