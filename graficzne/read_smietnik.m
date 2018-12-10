        value1 = app.EditField.Value;
                       [o, ErrM] = fopen (value1, 'r');
        if(o == -1)
            warning(ErrM); 
            return;
        end;
        a = fscanf(o,'%f %f %f %f %f\n',[5, Inf])';
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
        
        switch (app.DropDown7.Value)
    case 'CO'
        x=data_n1(:,4);
        y1=data_n1(:,1);
        plot(app.UIAxes5,x,y1,'r-');
    case 'H2S'
        x=data_n2(:,4);
        y1=data_n2(:,1);
        plot(app.UIAxes5,x,y1,'r-');
            case 'SO2'
        x=data_n3(:,4);
        y1=data_n3(:,1);
        plot(app.UIAxes5,x,y1,'r-');
        end
        