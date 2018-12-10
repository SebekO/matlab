function odczyt(handles)
com_ab9=get(handles.popupmenu9,'String');
com_nb9=strtrim(com_ab9(get(handles.popupmenu9,'Value'),:));
handles.s = serial(com_nb9, 'BaudRate', 57600);
fopen(handles.s);
cla;

Px = gobjects(1, 4); 
for c = 1:4 %Initilize all your plots, for 4 pins
    Px(c) = plot(handles.(['axes' num2str(c)]), 0, 'LineWidth', 2); %Store your plot handles
    grid on;
end
k=1;k1=1;k2=1;

tic
while get(handles.togglebutton1, 'Value')
   
       odczyt_com = str2num(fscanf(handles.s));
    if (get(handles.popupmenu1,'Value')==2)
     if (odczyt_com(1,1)==handles.O3)
        x(k, 1) =odczyt_com(1,4)
        set(Px(1), 'XData', 1:k, 'YData', x(1:k, 1));%Setting the XData and YData directly to prevent redrawing plot from scrap.
        k=k+1;    
     end
     drawnow;
    end
     
  %Do only 1 drawnow, instead of 4 drawnow you had before
end
toc

fclose(handles.s);
delete(handles.s);
clear handles.s;