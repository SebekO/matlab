                case 'H2S'
                    if (odczyt_com(1,1)==handles.H2S)
                        x(k, 1) =odczyt_com(1,4);
                        set(Px(1), 'XData', 1:k, 'YData', x(1:k, 1));
                        k=k+1;
                    end
                case 'NO2'
                    if (odczyt_com(1,1)==handles.NO2)
                        x(k, 1) =odczyt_com(1,4);
                        set(Px(1), 'XData', 1:k, 'YData', x(1:k, 1));
                        k=k+1;
                    end  