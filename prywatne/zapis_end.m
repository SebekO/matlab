    [o, ErrM] = fopen (filename, 'r');
        if(o == -1)
            warning(ErrM); 
            return;
        end;
odczyt_plik = fscanf(o,'%c');

call_arr = splitlines(odczyt_plik);
[m,n] = size(call_arr);
chr1 = char(call_arr);
i=1;k=1;k2=1;k3=1;k4=1;k5=1;k6=1;
while i<m
    g_line_data = sscanf(chr1(i,:),'%f')';
    switch pop_vl_5
        case handles.DGS
            switch pop_vl_1
                case handles.O3
                    if (g_line_data(1,1)==handles.O3n)
                        x(k, 1) =g_line_data(1,4)
                        set(Px(1), 'XData', 1:k, 'YData', x(1:k, 1));
                        k=k+1;
                        drawnow;
                    end
                case handles.CO
                    if (g_line_data(1,1)==handles.COn)
                        x(k, 1) =g_line_data(1,4)
                        set(Px(1), 'XData', 1:k, 'YData', x(1:k, 1));
                        k=k+1;
                        drawnow;
                    end
                case handles.SO2
                    if (g_line_data(1,1)==handles.SO2n)
                        x(k, 1) =g_line_data(1,4)
                        set(Px(1), 'XData', 1:k, 'YData', x(1:k, 1));
                        k=k+1;
                        drawnow;
                    end                         
            end
        case handles.BME280
            if (g_line_data(1,1)==handles.BME280n)
                switch pop_vl_1
                    case handles.temperatura
                            x(k, 1) =g_line_data(1,2)
                            set(Px(1), 'XData', 1:k, 'YData', x(1:k, 1));
                            k=k+1;
                            drawnow;
                    case handles.cisnienie
                            x(k, 1) =g_line_data(1,3)
                            set(Px(1), 'XData', 1:k, 'YData', x(1:k, 1));
                            k=k+1;
                            drawnow;
                    case handles.wilgotnosc
                            x(k, 1) =g_line_data(1,4)
                            set(Px(1), 'XData', 1:k, 'YData', x(1:k, 1));
                            k=k+1;
                            drawnow;
                    case handles.wysokosc
                            x(k, 1) =g_line_data(1,5)
                            set(Px(1), 'XData', 1:k, 'YData', x(1:k, 1));
                            k=k+1;
                            drawnow;  
                end
            end
        case handles.AltIMU
            if (g_line_data(1,1)==handles.AltIMUn)
                switch pop_vl_1
                    case handles.temperatura
                            x(k, 1) =g_line_data(1,2)
                            set(Px(1), 'XData', 1:k, 'YData', x(1:k, 1));
                            k=k+1;
                            drawnow;
                    case handles.cisnienie
                            x(k, 1) =g_line_data(1,3)
                            set(Px(1), 'XData', 1:k, 'YData', x(1:k, 1));
                            k=k+1;
                            drawnow;
                    case handles.wysokosc
                            x(k, 1) =g_line_data(1,4)
                            set(Px(1), 'XData', 1:k, 'YData', x(1:k, 1));
                            k=k+1;
                            drawnow;
                end
            end
        case handles.Termopara
            if (g_line_data(1,1)==handles.Termoparan)
                switch pop_vl_1
                    case handles.temperatura
                            x(k, 1) =g_line_data(1,2)
                            set(Px(1), 'XData', 1:k, 'YData', x(1:k, 1));
                            k=k+1;
                            drawnow;
                end
            end
    end
    switch pop_vl_6
        case handles.DGS
            switch pop_vl_2
                case handles.O3
                    if (g_line_data(1,1)==handles.O3n)
                        x1(k2, 1) =g_line_data(1,4)
                        set(Px(2), 'XData', 1:k2, 'YData', x1(1:k2, 1));
                        k2=k2+1;
                        drawnow;
                    end
                case handles.CO
                    if (g_line_data(1,1)==handles.COn)
                        x1(k2, 1) =g_line_data(1,4)
                        set(Px(2), 'XData', 1:k2, 'YData', x1(1:k2, 1));
                        k2=k2+1;
                        drawnow;
                    end
                case handles.SO2
                    if (g_line_data(1,1)==handles.SO2n)
                        x1(k2, 1) =g_line_data(1,4)
                        set(Px(2), 'XData', 1:k2, 'YData', x1(1:k2, 1));
                        k2=k2+1;
                        drawnow;
                    end                         
            end
        case handles.BME280
            if (g_line_data(1,1)==handles.BME280n)
                switch pop_vl_2
                    case handles.temperatura
                            x1(k2, 1) =g_line_data(1,2)
                            set(Px(2), 'XData', 1:k2, 'YData', x1(1:k2, 1));
                            k2=k2+1;
                            drawnow;
                    case handles.cisnienie
                            x1(k2, 1) =g_line_data(1,3)
                            set(Px(2), 'XData', 1:k2, 'YData', x1(1:k2, 1));
                            k2=k2+1;
                            drawnow;
                    case handles.wilgotnosc
                            x1(k2, 1) =g_line_data(1,4)
                            set(Px(2), 'XData', 1:k2, 'YData', x1(1:k2, 1));
                            k2=k2+1;
                            drawnow;
                    case handles.wysokosc
                            x1(k2, 1) =g_line_data(1,5)
                            set(Px(2), 'XData', 1:k2, 'YData', x1(1:k2, 1));
                            k2=k2+1;
                            drawnow;  
                end
            end
        case handles.AltIMU
            if (g_line_data(1,1)==handles.AltIMUn)
                switch pop_vl_2
                    case handles.temperatura
                            x1(k2, 1) =g_line_data(1,2)
                            set(Px(2), 'XData', 1:k2, 'YData', x1(1:k2, 1));
                            k2=k2+1;
                            drawnow;
                    case handles.cisnienie
                            x1(k2, 1) =g_line_data(1,3)
                            set(Px(2), 'XData', 1:k2, 'YData', x1(1:k2, 1));
                            k2=k2+1;
                            drawnow;
                    case handles.wysokosc
                            x1(k2, 1) =g_line_data(1,4)
                            set(Px(2), 'XData', 1:k2, 'YData', x1(1:k2, 1));
                            k2=k2+1;
                            drawnow;
                end
            end
        case handles.Termopara
            if (g_line_data(1,1)==handles.Termoparan)
                switch pop_vl_2
                    case handles.temperatura
                            x1(k2, 1) =g_line_data(1,2)
                            set(Px(2), 'XData', 1:k2, 'YData', x1(1:k2, 1));
                            k2=k2+1;
                            drawnow;
                end
            end
    end
    switch pop_vl_7
        case handles.DGS
            switch pop_vl_3
                case handles.O3
                    if (g_line_data(1,1)==handles.O3n)
                        x2(k3, 1) =g_line_data(1,4)
                        set(Px(3), 'XData', 1:k3, 'YData', x2(1:k3, 1));
                        k3=k3+1;
                        drawnow;
                    end
                case handles.CO
                    if (g_line_data(1,1)==handles.COn)
                        x2(k3, 1) =g_line_data(1,4)
                        set(Px(3), 'XData', 1:k3, 'YData', x2(1:k3, 1));
                        k3=k3+1;
                        drawnow;
                    end
                case handles.SO2
                    if (g_line_data(1,1)==handles.SO2n)
                        x2(k3, 1) =g_line_data(1,4)
                        set(Px(3), 'XData', 1:k3, 'YData', x2(1:k3, 1));
                        k3=k3+1;
                        drawnow;
                    end                         
            end
        case handles.BME280
            if (g_line_data(1,1)==handles.BME280n)
                switch pop_vl_3
                    case handles.temperatura
                            x2(k3, 1) =g_line_data(1,2)
                            set(Px(3), 'XData', 1:k3, 'YData', x2(1:k3, 1));
                            k3=k3+1;
                            drawnow;
                    case handles.cisnienie
                            x2(k3, 1) =g_line_data(1,3)
                            set(Px(3), 'XData', 1:k3, 'YData', x2(1:k3, 1));
                            k3=k3+1;
                            drawnow;
                    case handles.wilgotnosc
                            x2(k3, 1) =g_line_data(1,4)
                            set(Px(3), 'XData', 1:k3, 'YData', x2(1:k3, 1));
                            k3=k3+1;
                            drawnow;
                    case handles.wysokosc
                            x2(k3, 1) =g_line_data(1,5)
                            set(Px(3), 'XData', 1:k3, 'YData', x2(1:k3, 1));
                            k3=k3+1;
                            drawnow;  
                end
            end
        case handles.AltIMU
            if (g_line_data(1,1)==handles.AltIMUn)
                switch pop_vl_3
                    case handles.temperatura
                            x2(k3, 1) =g_line_data(1,2)
                            set(Px(3), 'XData', 1:k3, 'YData', x2(1:k3, 1));
                            k3=k3+1;
                            drawnow;
                    case handles.cisnienie
                            x2(k3, 1) =g_line_data(1,3)
                            set(Px(3), 'XData', 1:k3, 'YData', x2(1:k3, 1));
                            k3=k3+1;
                            drawnow;
                    case handles.wysokosc
                            x2(k3, 1) =g_line_data(1,4)
                            set(Px(3), 'XData', 1:k3, 'YData', x2(1:k3, 1));
                            k3=k3+1;
                            drawnow;
                end
            end
        case handles.Termopara
            if (g_line_data(1,1)==handles.Termoparan)
                switch pop_vl_3
                    case handles.temperatura
                            x2(k3, 1) =g_line_data(1,2)
                            set(Px(3), 'XData', 1:k3, 'YData', x2(1:k3, 1));
                            k3=k3+1;
                            drawnow;
                end
            end
    end
    switch pop_vl_8
        case handles.DGS
            switch pop_vl_4
                case handles.O3
                    if (g_line_data(1,1)==handles.O3n)
                        x3(k4, 1) =g_line_data(1,4)
                        set(Px(4), 'XData', 1:k4, 'YData', x3(1:k4, 1));
                        k4=k4+1;
                        drawnow;
                    end
                case handles.CO
                    if (g_line_data(1,1)==handles.COn)
                        x3(k4, 1) =g_line_data(1,4)
                        set(Px(4), 'XData', 1:k4, 'YData', x3(1:k4, 1));
                        k4=k4+1;
                        drawnow;
                    end
                case handles.SO2
                    if (g_line_data(1,1)==handles.SO2n)
                        x3(k4, 1) =g_line_data(1,4)
                        set(Px(4), 'XData', 1:k4, 'YData', x3(1:k4, 1));
                        k4=k4+1;
                        drawnow;
                    end                         
            end
        case handles.BME280
            if (g_line_data(1,1)==handles.BME280n)
                switch pop_vl_4
                    case handles.temperatura
                            x3(k4, 1) =g_line_data(1,2)
                            set(Px(4), 'XData', 1:k4, 'YData', x3(1:k4, 1));
                            k4=k4+1;
                            drawnow;
                    case handles.cisnienie
                            x3(k4, 1) =g_line_data(1,3)
                            set(Px(4), 'XData', 1:k4, 'YData', x3(1:k4, 1));
                            k4=k4+1;
                            drawnow;
                    case handles.wilgotnosc
                            x3(k4, 1) =g_line_data(1,4)
                            set(Px(4), 'XData', 1:k4, 'YData', x3(1:k4, 1));
                            k4=k4+1;
                            drawnow;
                    case handles.wysokosc
                            x3(k4, 1) =g_line_data(1,5)
                            set(Px(4), 'XData', 1:k4, 'YData', x3(1:k4, 1));
                            k4=k4+1;
                            drawnow;  
                end
            end
        case handles.AltIMU
            if (g_line_data(1,1)==handles.AltIMUn)
                switch pop_vl_4
                    case handles.temperatura
                            x3(k4, 1) =g_line_data(1,2)
                            set(Px(4), 'XData', 1:k4, 'YData', x3(1:k4, 1));
                            k4=k4+1;
                            drawnow;
                    case handles.cisnienie
                            x3(k4, 1) =g_line_data(1,3)
                            set(Px(4), 'XData', 1:k4, 'YData', x3(1:k4, 1));
                            k4=k4+1;
                            drawnow;
                    case handles.wysokosc
                            x3(k4, 1) =g_line_data(1,4)
                            set(Px(4), 'XData', 1:k4, 'YData', x3(1:k4, 1));
                            k4=k4+1;
                            drawnow;
                end
            end
        case handles.Termopara
            if (g_line_data(1,1)==handles.Termoparan)
                switch pop_vl_4
                    case handles.temperatura
                            x3(k4, 1) =g_line_data(1,2)
                            set(Px(4), 'XData', 1:k4, 'YData', x3(1:k4, 1));
                            k4=k4+1;
                            drawnow;
                end
            end
    end
    switch pop_vl_12
        case handles.DGS
            switch pop_vl_11
                case handles.O3
                    if (g_line_data(1,1)==handles.O3n)
                        x4(k5, 1) =g_line_data(1,4)
                        set(Px(5), 'XData', 1:k5, 'YData', x4(1:k5, 1));
                        k5=k5+1;
                        drawnow;
                    end
                case handles.CO
                    if (g_line_data(1,1)==handles.COn)
                        x4(k5, 1) =g_line_data(1,4)
                        set(Px(5), 'XData', 1:k5, 'YData', x4(1:k5, 1));
                        k5=k5+1;
                        drawnow;
                    end
                case handles.SO2
                    if (g_line_data(1,1)==handles.SO2n)
                        x4(k5, 1) =g_line_data(1,4)
                        set(Px(5), 'XData', 1:k5, 'YData', x4(1:k5, 1));
                        k5=k5+1;
                        drawnow;
                    end                         
            end
        case handles.BME280
            if (g_line_data(1,1)==handles.BME280n)
                switch pop_vl_11
                    case handles.temperatura
                            x4(k5, 1) =g_line_data(1,2)
                            set(Px(5), 'XData', 1:k5, 'YData', x4(1:k5, 1));
                            k5=k5+1;
                            drawnow;
                    case handles.cisnienie
                            x4(k5, 1) =g_line_data(1,3)
                            set(Px(5), 'XData', 1:k5, 'YData', x4(1:k5, 1));
                            k5=k5+1;
                            drawnow;
                    case handles.wilgotnosc
                            x4(k5, 1) =g_line_data(1,4)
                            set(Px(5), 'XData', 1:k5, 'YData', x4(1:k5, 1));
                            k5=k5+1;
                            drawnow;
                    case handles.wysokosc
                            x4(k5, 1) =g_line_data(1,5)
                            set(Px(5), 'XData', 1:k5, 'YData', x4(1:k5, 1));
                            k5=k5+1;
                            drawnow;  
                end
            end
        case handles.AltIMU
            if (g_line_data(1,1)==handles.AltIMUn)
                switch pop_vl_11
                    case handles.temperatura
                            x4(k5, 1) =g_line_data(1,2)
                            set(Px(5), 'XData', 1:k5, 'YData', x4(1:k5, 1));
                            k5=k5+1;
                            drawnow;
                    case handles.cisnienie
                            x4(k5, 1) =g_line_data(1,3)
                            set(Px(5), 'XData', 1:k5, 'YData', x4(1:k5, 1));
                            k5=k5+1;
                            drawnow;
                    case handles.wysokosc
                            x4(k5, 1) =g_line_data(1,4)
                            set(Px(5), 'XData', 1:k5, 'YData', x4(1:k5, 1));
                            k5=k5+1;
                            drawnow;
                end
            end
        case handles.Termopara
            if (g_line_data(1,1)==handles.Termoparan)
                switch pop_vl_11
                    case handles.temperatura
                            x4(k5, 1) =g_line_data(1,2)
                            set(Px(5), 'XData', 1:k5, 'YData', x4(1:k5, 1));
                            k5=k5+1;
                            drawnow;
                end
            end
    end
    switch pop_vl_14
        case handles.DGS
            switch pop_vl_13
                case handles.O3
                    if (g_line_data(1,1)==handles.O3n)
                        x5(k6, 1) =g_line_data(1,4)
                        set(Px(6), 'XData', 1:k6, 'YData', x5(1:k6, 1));
                        k6=k6+1;
                        drawnow;
                    end
                case handles.CO
                    if (g_line_data(1,1)==handles.COn)
                        x5(k6, 1) =g_line_data(1,4)
                        set(Px(6), 'XData', 1:k6, 'YData', x5(1:k6, 1));
                        k6=k6+1;
                        drawnow;
                    end
                case handles.SO2
                    if (g_line_data(1,1)==handles.SO2n)
                        x5(k6, 1) =g_line_data(1,4)
                        set(Px(6), 'XData', 1:k6, 'YData', x5(1:k6, 1));
                        k6=k6+1;
                        drawnow;
                    end                         
            end
        case handles.BME280
            if (g_line_data(1,1)==handles.BME280n)
                switch pop_vl_13
                    case handles.temperatura
                            x5(k6, 1) =g_line_data(1,2)
                            set(Px(6), 'XData', 1:k6, 'YData', x5(1:k6, 1));
                            k6=k6+1;
                            drawnow;
                    case handles.cisnienie
                            x5(k6, 1) =g_line_data(1,3)
                            set(Px(6), 'XData', 1:k6, 'YData', x5(1:k6, 1));
                            k6=k6+1;
                            drawnow;
                    case handles.wilgotnosc
                            x5(k6, 1) =g_line_data(1,4)
                            set(Px(6), 'XData', 1:k6, 'YData', x5(1:k6, 1));
                            k6=k6+1;
                            drawnow;
                    case handles.wysokosc
                            x5(k6, 1) =g_line_data(1,5)
                            set(Px(6), 'XData', 1:k6, 'YData', x5(1:k6, 1));
                            k6=k6+1;
                            drawnow;  
                end
            end
        case handles.AltIMU
            if (g_line_data(1,1)==handles.AltIMUn)
                switch pop_vl_13
                    case handles.temperatura
                            x5(k6, 1) =g_line_data(1,2)
                            set(Px(6), 'XData', 1:k6, 'YData', x5(1:k6, 1));
                            k6=k6+1;
                            drawnow;
                    case handles.cisnienie
                            x5(k6, 1) =g_line_data(1,3)
                            set(Px(6), 'XData', 1:k6, 'YData', x5(1:k6, 1));
                            k6=k6+1;
                            drawnow;
                    case handles.wysokosc
                            x5(k6, 1) =g_line_data(1,4)
                            set(Px(6), 'XData', 1:k6, 'YData', x5(1:k6, 1));
                            k6=k6+1;
                            drawnow;
                end
            end
        case handles.Termopara
            if (g_line_data(1,1)==handles.Termoparan)
                switch pop_vl_13
                    case handles.temperatura
                            x5(k6, 1) =g_line_data(1,2)
                            set(Px(6), 'XData', 1:k6, 'YData', x5(1:k6, 1));
                            k6=k6+1;
                            drawnow;
                end
            end
    end
    i=i+1;
end