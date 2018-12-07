clc
clear
[o, ErrM] = fopen ('a1.txt', 'r');
if(o == -1)
    warning(ErrM); 
    return;
end;
a = fscanf(o,'%f	%f	%f	%f	%f\n',[5, Inf])';
b=[a(:,2),a(:,3),a(:,4),a(:,5)];
fclose(o);

[o, ErrM] = fopen ('b1.txt', 'r');
if(o == -1)
    warning(ErrM); 
    return;
end;
a = fscanf(o,'%f	%f	%f	%f	%f\n',[5, Inf])';
c=[a(:,2),a(:,3),a(:,4),a(:,5)];
fclose(o);

[o, ErrM] = fopen ('c1.txt', 'r');
if(o == -1)
    warning(ErrM); 
    return;
end;
a = fscanf(o,'%f	%f	%f	%f	%f\n',[5, Inf])';
d=[a(:,2),a(:,3),a(:,4),a(:,5)];
fclose(o);

[o, ErrM] = fopen ('d1.txt', 'r');
if(o == -1)
    warning(ErrM); 
    return;
end;
a = fscanf(o,'%f %f %f %f\n',[4, Inf])';
e=[a(:,1),a(:,2),a(:,3),a(:,4)];
fclose(o);

[o, ErrM] = fopen ('e1.txt', 'r');
if(o == -1)
    warning(ErrM); 
    return;
end;
a = fscanf(o,'%f %f %f %f\n',[4, Inf])';
f=[a(:,1),a(:,2),a(:,3),a(:,4)];
fclose(o);





[o, ErrM] = fopen ('f1.txt', 'r');
if(o == -1)
    warning(ErrM); 
    return;
end;
a = fscanf(o,'%f %f %f %f\n',[4, Inf])';
g=[a(:,1),a(:,2),a(:,3),a(:,4)];
fclose(o);

[o, ErrM] = fopen ('g1.txt', 'r');
if(o == -1)
    warning(ErrM); 
    return;
end;
a = fscanf(o,'%f %f %f %f\n',[4, Inf])';
h=[a(:,1),a(:,2),a(:,3),a(:,4)];
fclose(o);

[o, ErrM] = fopen ('h1.txt', 'r');
if(o == -1)
    warning(ErrM); 
    return;
end;
a = fscanf(o,'%f %f %f %f\n',[4, Inf])';
i=[a(:,1),a(:,2),a(:,3),a(:,4)];
fclose(o);


x=b(:,4);
y1=b(:,1);
y2=b(:,2);
y3=b(:,3);
x1=c(:,4);
y11=c(:,1);
y21=c(:,2);
y31=c(:,3);
x2=d(:,4);
y12=d(:,1);
y22=d(:,2);
y32=d(:,3);
subplot(3,3,1);;
plot(x,y1,'r-',x1,y11,'b-',x2,y12,'g-')
subplot(3,3,2);
plot(x,y2,'r-',x1,y21,'b-',x2,y22,'g-');
subplot(3,3,3);
plot(x,y3,'r-',x1,y31,'b-',x2,y32,'g-');

x=e(:,4);
y1=e(:,1);
y2=e(:,2);
y3=e(:,3);
x1=f(:,4);
y11=f(:,1);
y21=f(:,2);
y31=f(:,3);
subplot(3,3,4);;
plot(x,y1,'r-',x1,y11,'b-')
subplot(3,3,5);
plot(x,y2,'r-',x1,y21,'b-');
subplot(3,3,6);
plot(x,y3,'r-',x1,y31,'b-');

x=g(:,4);
y1=g(:,1);
y2=g(:,2);
y3=g(:,3);
x1=h(:,4);
y11=h(:,1);
y21=h(:,2);
y31=h(:,3);
x2=i(:,4);
y12=i(:,1);
y22=i(:,2);
y32=i(:,3);
subplot(3,3,7);;
plot(x,y1,'r-',x1,y11,'b-',x2,y12,'g-')
subplot(3,3,8);
plot(x,y2,'r-',x1,y21,'b-',x2,y22,'g-');
subplot(3,3,9);
plot(x,y3,'r-',x1,y31,'b-',x2,y32,'g-');

