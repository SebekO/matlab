clc
clear
[o, ErrM] = fopen ('51.txt', 'r');
if(o == -1)
    warning(ErrM); 
    return;
end;
a = fscanf(o,'%f	%f	%f	%f	%f\n',[5, Inf])';
b=[a(:,2),a(:,3),a(:,4),a(:,5)];
d=[a(:,1)];
fclose(o);
serial_n1=061318011028;
serial_n2=082918010321;
serial_n3=102617010931;
[m,n] = size(a);
t_n1=1;
t_n2=1;
t_n3=1;
tic
for y=1:1:m
    if (a(y,1)==serial_n1)
       data_n1(t_n1,:)=[a(y,2),a(y,3),a(y,4),a(y,5)];
       t_n1=t_n1+1;
    end
     if (a(y,1)==serial_n2)
       data_n2(t_n2,:)=[a(y,2),a(y,3),a(y,4),a(y,5)];
       t_n2=t_n2+1;
     end
     if (a(y,1)==serial_n3)
       data_n3(t_n3,:)=[a(y,2),a(y,3),a(y,4),a(y,5)];
       t_n3=t_n3+1;
    end
end
toc

x=data_n1(:,4);
y1=data_n1(:,1);
y2=data_n1(:,2);
y3=data_n1(:,3);
x1=data_n2(:,4);
y11=data_n2(:,1);
y21=data_n2(:,2);
y31=data_n2(:,3);
x2=data_n3(:,4);
y12=data_n3(:,1);
y22=data_n3(:,2);
y32=data_n3(:,3);
subplot(1,3,1);;
plot(x,y1,'r-',x1,y11,'b-',x2,y12,'g-')
subplot(1,3,2);
plot(x,y2,'r-',x1,y21,'b-',x2,y22,'g-');
subplot(1,3,3);
plot(x,y3,'r-',x1,y31,'b-',x2,y32,'g-');

