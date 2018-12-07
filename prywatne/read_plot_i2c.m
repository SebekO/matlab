clc
clear
[o, ErrM] = fopen ('abc1.txt', 'r');
if(o == -1)
    warning(ErrM); 
    return;
end;
a = fscanf(o,'%f %f %f %f\n',[4, Inf])'
b=[a(:,1),a(:,2),a(:,3),a(:,4)]
fclose(o);

[o, ErrM] = fopen ('abc2.txt', 'r');
if(o == -1)
    warning(ErrM); 
    return;
end;
a = fscanf(o,'%f %f %f %f\n',[4, Inf])'
c=[a(:,1),a(:,2),a(:,3),a(:,4)]
fclose(o);



x=b(:,4);
y1=b(:,1);
y2=b(:,2);
y3=b(:,3);
x1=c(:,4);
y11=c(:,1);
y21=c(:,2);
y31=c(:,3);

subplot(1,3,1);
plot(x,y1,'r-',x1,y11,'b-')
subplot(1,3,2);
plot(x,y2,'r.',x1,y21,'b.')
subplot(1,3,3);
plot(x,y3,'r.',x1,y31,'b.')

%%
subplot(2,3,1);
plot(x,y1,'r-')
subplot(2,3,2);
plot(x,y2,'r.')
subplot(2,3,3);
plot(x,y3,'r-')
subplot(2,3,4);
plot(x1,y11,'b-')
subplot(2,3,5);
plot(x1,y21,'b.')
subplot(2,3,6);
plot(x1,y31,'b-')
