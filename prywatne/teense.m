clc
clear
[o, ErrM] = fopen ('5.txt', 'r');
if(o == -1)
    warning(ErrM); 
    return;
end;
a = fscanf(o,'%f	%f	%f	%f	%f\n',[5, Inf])';
b=[a(:,2),a(:,3),a(:,4),a(:,5)]
fclose(o);

[o, ErrM] = fopen ('6.txt', 'r');
if(o == -1)
    warning(ErrM); 
    return;
end;
a = fscanf(o,'%f	%f	%f	%f	%f\n',[5, Inf])';
c=[a(:,2),a(:,3),a(:,4),a(:,5)]
fclose(o);



x=b(:,4);
y1=b(:,1);
y2=b(:,2);
y3=b(:,3);
x1=c(:,4);
y11=c(:,1);
y21=c(:,2);
y31=c(:,3);
subplot(2,3,1);
plot(x,y1,'k-')
subplot(2,3,2);
plot(x,y2,'r.')
subplot(2,3,3);
plot(x,y3,'r-')
subplot(2,3,4);
plot(x1,y11,'k-')
subplot(2,3,5);
plot(x1,y21,'r.')
subplot(2,3,6);
plot(x1,y31,'r-')
