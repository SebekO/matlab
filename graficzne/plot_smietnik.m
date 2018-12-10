    switch pop_vl_6
        case handles.DGS
            switch pop_vl_2
                case handles.O3
                    if (odczyt_com(1,1)==handles.O3n)
                        x1(k2, 1) =odczyt_com(1,4)
                        set(Px(2), 'XData', 1:k2, 'YData', x1(1:k2, 1));
                        k2=k2+1;
                        drawnow;
                    end
                case handles.CO
                    if (odczyt_com(1,1)==handles.COn)
                        x1(k2, 1) =odczyt_com(1,4)
                        set(Px(2), 'XData', 1:k2, 'YData', x1(1:k2, 1));
                        k2=k2+1;
                        drawnow;
                    end
                case handles.SO2
                    if (odczyt_com(1,1)==handles.SO2n)
                        x1(k2, 1) =odczyt_com(1,4)
                        set(Px(2), 'XData', 1:k2, 'YData', x1(1:k2, 1));
                        k2=k2+1;
                        drawnow;
                    end                         
            end
        case handles.BME280
            if (odczyt_com(1,1)==handles.BME280n)
                switch pop_vl_2
                    case handles.temperatura
                            x1(k2, 1) =odczyt_com(1,2)
                            set(Px(2), 'XData', 1:k2, 'YData', x1(1:k2, 1));
                            k2=k2+1;
                            drawnow;
                    case handles.cisnienie
                            x1(k2, 1) =odczyt_com(1,3)
                            set(Px(2), 'XData', 1:k2, 'YData', x1(1:k2, 1));
                            k2=k2+1;
                            drawnow;
                    case handles.wilgotnosc
                            x1(k2, 1) =odczyt_com(1,4)
                            set(Px(2), 'XData', 1:k2, 'YData', x1(1:k2, 1));
                            k2=k2+1;
                            drawnow;
                    case handles.wysokosc
                            x1(k2, 1) =odczyt_com(1,5)
                            set(Px(2), 'XData', 1:k2, 'YData', x1(1:k2, 1));
                            k2=k2+1;
                            drawnow;  
                end
            end
        case handles.AltIMU
            if (odczyt_com(1,1)==handles.AltIMUn)
                switch pop_vl_2
                    case handles.temperatura
                            x1(k2, 1) =odczyt_com(1,2)
                            set(Px(2), 'XData', 1:k2, 'YData', x1(1:k2, 1));
                            k2=k2+1;
                            drawnow;
                    case handles.cisnienie
                            x1(k2, 1) =odczyt_com(1,3)
                            set(Px(2), 'XData', 1:k2, 'YData', x1(1:k2, 1));
                            k2=k2+1;
                            drawnow;
                    case handles.wysokosc
                            x1(k2, 1) =odczyt_com(1,4)
                            set(Px(2), 'XData', 1:k2, 'YData', x1(1:k2, 1));
                            k2=k2+1;
                            drawnow;
                end
            end
        case handles.Termopara
            if (odczyt_com(1,1)==handles.Termoparan)
                switch pop_vl_2
                    case handles.temperatura
                            x1(k2, 1) =odczyt_com(1,2)
                            set(Px(2), 'XData', 1:k2, 'YData', x1(1:k2, 1));
                            k2=k2+1;
                            drawnow;
                end
            end
    end