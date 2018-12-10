function varargout = wykres_test(varargin)
% WYKRES_TEST MATLAB code for wykres_test.fig
%      WYKRES_TEST, by itself, creates a new WYKRES_TEST or raises the existing
%      singleton*.
%
%      H = WYKRES_TEST returns the handle to a new WYKRES_TEST or the handle to
%      the existing singleton*.
%
%      WYKRES_TEST('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in WYKRES_TEST.M with the given input arguments.
%
%      WYKRES_TEST('Property','Value',...) creates a new WYKRES_TEST or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before wykres_test_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to wykres_test_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help wykres_test

% Last Modified by GUIDE v2.5 09-Dec-2018 23:55:51


% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @wykres_test_OpeningFcn, ...
                   'gui_OutputFcn',  @wykres_test_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before wykres_test is made visible.
function wykres_test_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to wykres_test (see VARARGIN)
handles.Wybierz_czujnik='Wybierz czujnik';
handles.Wybierz_paramtert='Wybierz paramtert';
handles.DGS='DGS';
handles.O3='O3';
handles.CO='CO';
handles.SO2='SO2';
handles.H2S='H2S';
handles.NO2='NO2';
handles.BME280='BME280';
handles.temperatura='temperatura';
handles.cisnienie='ciœnienie';
handles.wilgotnosc='wilgotnoœæ';
handles.wysokosc='wysokoœæ';
handles.AltIMU='AltIMU';
handles.akceleracja='akceleracja';
handles.magnetometr='magnetometr';
handles.zyroskop='¿yroskop';
handles.Termopara='Termopara';

handles.O3n=061318011028;
handles.SO2n=082918010321;
handles.COn=102617010931;
handles.AltIMUn=651081167785;
handles.BME280n=667769;
handles.An=65;
handles.Gn=71;
handles.Mn=77;
handles.Termoparan=84;
% Choose default command line output for wykres_test
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes wykres_test wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = wykres_test_OutputFcn(hObject, eventdata, handles) 

varargout{1} = handles.output;



function togglebutton1_Callback(hObject, eventdata, handles)
pop_st_5=get(handles.popupmenu5,'String');
pop_vl_5=strtrim(pop_st_5(get(handles.popupmenu5,'Value'),:));
pop_st_1=get(handles.popupmenu1,'String');
pop_vl_1=strtrim(pop_st_1(get(handles.popupmenu1,'Value'),:));

pop_st_6=get(handles.popupmenu6,'String');
pop_vl_6=strtrim(pop_st_6(get(handles.popupmenu6,'Value'),:));
pop_st_2=get(handles.popupmenu2,'String');
pop_vl_2=strtrim(pop_st_2(get(handles.popupmenu2,'Value'),:));

pop_st_7=get(handles.popupmenu7,'String');
pop_vl_7=strtrim(pop_st_7(get(handles.popupmenu7,'Value'),:));
pop_st_3=get(handles.popupmenu3,'String');
pop_vl_3=strtrim(pop_st_3(get(handles.popupmenu3,'Value'),:));

pop_st_8=get(handles.popupmenu8,'String');
pop_vl_8=strtrim(pop_st_8(get(handles.popupmenu8,'Value'),:));
pop_st_4=get(handles.popupmenu4,'String');
pop_vl_4=strtrim(pop_st_4(get(handles.popupmenu4,'Value'),:));

pop_st_12=get(handles.popupmenu12,'String');
pop_vl_12=strtrim(pop_st_12(get(handles.popupmenu12,'Value'),:));
pop_st_11=get(handles.popupmenu11,'String');
pop_vl_11=strtrim(pop_st_11(get(handles.popupmenu11,'Value'),:));

pop_st_14=get(handles.popupmenu14,'String');
pop_vl_14=strtrim(pop_st_14(get(handles.popupmenu14,'Value'),:));
pop_st_13=get(handles.popupmenu13,'String');
pop_vl_13=strtrim(pop_st_13(get(handles.popupmenu13,'Value'),:));

pop_st_9=get(handles.popupmenu9,'String');
pop_vl_9=strtrim(pop_st_9(get(handles.popupmenu9,'Value'),:));

handles.serial_port = serial(pop_vl_9, 'BaudRate', 57600);

if get(handles.popupmenu9,'Value')==1
    set(handles.text2, 'String', 'BEFORE PLOT! SELECT COM PORT', 'BackgroundColor', [1,0.41,0.16]);
    set(handles.togglebutton9, 'Value', 0)
end
if (get(handles.popupmenu9,'Value')~=1&&get(handles.popupmenu1,'Value')==1&&get(handles.popupmenu2,'Value')==1&&get(handles.popupmenu3,'Value')==1&&get(handles.popupmenu4,'Value')==1&&get(handles.popupmenu11,'Value')==1&&get(handles.popupmenu13,'Value')==1)
        set(handles.text2, 'String', 'BEFORE PLOT! CHOOSE AT LEAST ONE PARAMETER', 'BackgroundColor', [1,0.41,0.16]);
        set(handles.togglebutton9, 'Value', 0)
end



fopen(handles.serial_port);
set(handles.text2, 'String', 'WARNING! DO NOT CLOSE THE APPLICATION BEFORE CLOSE COM PORT', 'BackgroundColor', 'r');
cla;

Px = gobjects(1, 6); 
for c = 1:6 %Initilize all your plots, for 4 pins
    Px(c) = plot(handles.(['axes' num2str(c)]), 0, 'LineWidth', 2); %Store your plot handles
end
k=1;k2=1;k3=1;k4=1;k5=1;k6=1;

tic
while get(handles.togglebutton1, 'Value')
    odczyt_com = str2num(fscanf(handles.serial_port));
    switch pop_vl_5
        case handles.DGS
            switch pop_vl_1
                case handles.O3
                    if (odczyt_com(1,1)==handles.O3n)
                        x(k, 1) =odczyt_com(1,4)
                        set(Px(1), 'XData', 1:k, 'YData', x(1:k, 1));
                        k=k+1;
                        drawnow;
                    end
                case handles.CO
                    if (odczyt_com(1,1)==handles.COn)
                        x(k, 1) =odczyt_com(1,4)
                        set(Px(1), 'XData', 1:k, 'YData', x(1:k, 1));
                        k=k+1;
                        drawnow;
                    end
                case handles.SO2
                    if (odczyt_com(1,1)==handles.SO2n)
                        x(k, 1) =odczyt_com(1,4)
                        set(Px(1), 'XData', 1:k, 'YData', x(1:k, 1));
                        k=k+1;
                        drawnow;
                    end                         
            end
        case handles.BME280
            if (odczyt_com(1,1)==handles.BME280n)
                switch pop_vl_1
                    case handles.temperatura
                            x(k, 1) =odczyt_com(1,2)
                            set(Px(1), 'XData', 1:k, 'YData', x(1:k, 1));
                            k=k+1;
                            drawnow;
                    case handles.cisnienie
                            x(k, 1) =odczyt_com(1,3)
                            set(Px(1), 'XData', 1:k, 'YData', x(1:k, 1));
                            k=k+1;
                            drawnow;
                    case handles.wilgotnosc
                            x(k, 1) =odczyt_com(1,4)
                            set(Px(1), 'XData', 1:k, 'YData', x(1:k, 1));
                            k=k+1;
                            drawnow;
                    case handles.wysokosc
                            x(k, 1) =odczyt_com(1,5)
                            set(Px(1), 'XData', 1:k, 'YData', x(1:k, 1));
                            k=k+1;
                            drawnow;  
                end
            end
        case handles.AltIMU
            if (odczyt_com(1,1)==handles.AltIMUn)
                switch pop_vl_1
                    case handles.temperatura
                            x(k, 1) =odczyt_com(1,2)
                            set(Px(1), 'XData', 1:k, 'YData', x(1:k, 1));
                            k=k+1;
                            drawnow;
                    case handles.cisnienie
                            x(k, 1) =odczyt_com(1,3)
                            set(Px(1), 'XData', 1:k, 'YData', x(1:k, 1));
                            k=k+1;
                            drawnow;
                    case handles.wysokosc
                            x(k, 1) =odczyt_com(1,4)
                            set(Px(1), 'XData', 1:k, 'YData', x(1:k, 1));
                            k=k+1;
                            drawnow;
                end
            end
        case handles.Termopara
            if (odczyt_com(1,1)==handles.Termoparan)
                switch pop_vl_1
                    case handles.temperatura
                            x(k, 1) =odczyt_com(1,2)
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
    switch pop_vl_7
        case handles.DGS
            switch pop_vl_3
                case handles.O3
                    if (odczyt_com(1,1)==handles.O3n)
                        x2(k3, 1) =odczyt_com(1,4)
                        set(Px(3), 'XData', 1:k3, 'YData', x2(1:k3, 1));
                        k3=k3+1;
                        drawnow;
                    end
                case handles.CO
                    if (odczyt_com(1,1)==handles.COn)
                        x2(k3, 1) =odczyt_com(1,4)
                        set(Px(3), 'XData', 1:k3, 'YData', x2(1:k3, 1));
                        k3=k3+1;
                        drawnow;
                    end
                case handles.SO2
                    if (odczyt_com(1,1)==handles.SO2n)
                        x2(k3, 1) =odczyt_com(1,4)
                        set(Px(3), 'XData', 1:k3, 'YData', x2(1:k3, 1));
                        k3=k3+1;
                        drawnow;
                    end                         
            end
        case handles.BME280
            if (odczyt_com(1,1)==handles.BME280n)
                switch pop_vl_3
                    case handles.temperatura
                            x2(k3, 1) =odczyt_com(1,2)
                            set(Px(3), 'XData', 1:k3, 'YData', x2(1:k3, 1));
                            k3=k3+1;
                            drawnow;
                    case handles.cisnienie
                            x2(k3, 1) =odczyt_com(1,3)
                            set(Px(3), 'XData', 1:k3, 'YData', x2(1:k3, 1));
                            k3=k3+1;
                            drawnow;
                    case handles.wilgotnosc
                            x2(k3, 1) =odczyt_com(1,4)
                            set(Px(3), 'XData', 1:k3, 'YData', x2(1:k3, 1));
                            k3=k3+1;
                            drawnow;
                    case handles.wysokosc
                            x2(k3, 1) =odczyt_com(1,5)
                            set(Px(3), 'XData', 1:k3, 'YData', x2(1:k3, 1));
                            k3=k3+1;
                            drawnow;  
                end
            end
        case handles.AltIMU
            if (odczyt_com(1,1)==handles.AltIMUn)
                switch pop_vl_3
                    case handles.temperatura
                            x2(k3, 1) =odczyt_com(1,2)
                            set(Px(3), 'XData', 1:k3, 'YData', x2(1:k3, 1));
                            k3=k3+1;
                            drawnow;
                    case handles.cisnienie
                            x2(k3, 1) =odczyt_com(1,3)
                            set(Px(3), 'XData', 1:k3, 'YData', x2(1:k3, 1));
                            k3=k3+1;
                            drawnow;
                    case handles.wysokosc
                            x2(k3, 1) =odczyt_com(1,4)
                            set(Px(3), 'XData', 1:k3, 'YData', x2(1:k3, 1));
                            k3=k3+1;
                            drawnow;
                end
            end
        case handles.Termopara
            if (odczyt_com(1,1)==handles.Termoparan)
                switch pop_vl_3
                    case handles.temperatura
                            x2(k3, 1) =odczyt_com(1,2)
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
                    if (odczyt_com(1,1)==handles.O3n)
                        x3(k4, 1) =odczyt_com(1,4)
                        set(Px(4), 'XData', 1:k4, 'YData', x3(1:k4, 1));
                        k4=k4+1;
                        drawnow;
                    end
                case handles.CO
                    if (odczyt_com(1,1)==handles.COn)
                        x3(k4, 1) =odczyt_com(1,4)
                        set(Px(4), 'XData', 1:k4, 'YData', x3(1:k4, 1));
                        k4=k4+1;
                        drawnow;
                    end
                case handles.SO2
                    if (odczyt_com(1,1)==handles.SO2n)
                        x3(k4, 1) =odczyt_com(1,4)
                        set(Px(4), 'XData', 1:k4, 'YData', x3(1:k4, 1));
                        k4=k4+1;
                        drawnow;
                    end                         
            end
        case handles.BME280
            if (odczyt_com(1,1)==handles.BME280n)
                switch pop_vl_4
                    case handles.temperatura
                            x3(k4, 1) =odczyt_com(1,2)
                            set(Px(4), 'XData', 1:k4, 'YData', x3(1:k4, 1));
                            k4=k4+1;
                            drawnow;
                    case handles.cisnienie
                            x3(k4, 1) =odczyt_com(1,3)
                            set(Px(4), 'XData', 1:k4, 'YData', x3(1:k4, 1));
                            k4=k4+1;
                            drawnow;
                    case handles.wilgotnosc
                            x3(k4, 1) =odczyt_com(1,4)
                            set(Px(4), 'XData', 1:k4, 'YData', x3(1:k4, 1));
                            k4=k4+1;
                            drawnow;
                    case handles.wysokosc
                            x3(k4, 1) =odczyt_com(1,5)
                            set(Px(4), 'XData', 1:k4, 'YData', x3(1:k4, 1));
                            k4=k4+1;
                            drawnow;  
                end
            end
        case handles.AltIMU
            if (odczyt_com(1,1)==handles.AltIMUn)
                switch pop_vl_4
                    case handles.temperatura
                            x3(k4, 1) =odczyt_com(1,2)
                            set(Px(4), 'XData', 1:k4, 'YData', x3(1:k4, 1));
                            k4=k4+1;
                            drawnow;
                    case handles.cisnienie
                            x3(k4, 1) =odczyt_com(1,3)
                            set(Px(4), 'XData', 1:k4, 'YData', x3(1:k4, 1));
                            k4=k4+1;
                            drawnow;
                    case handles.wysokosc
                            x3(k4, 1) =odczyt_com(1,4)
                            set(Px(4), 'XData', 1:k4, 'YData', x3(1:k4, 1));
                            k4=k4+1;
                            drawnow;
                end
            end
        case handles.Termopara
            if (odczyt_com(1,1)==handles.Termoparan)
                switch pop_vl_4
                    case handles.temperatura
                            x3(k4, 1) =odczyt_com(1,2)
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
                    if (odczyt_com(1,1)==handles.O3n)
                        x4(k5, 1) =odczyt_com(1,4)
                        set(Px(5), 'XData', 1:k5, 'YData', x4(1:k5, 1));
                        k5=k5+1;
                        drawnow;
                    end
                case handles.CO
                    if (odczyt_com(1,1)==handles.COn)
                        x4(k5, 1) =odczyt_com(1,4)
                        set(Px(5), 'XData', 1:k5, 'YData', x4(1:k5, 1));
                        k5=k5+1;
                        drawnow;
                    end
                case handles.SO2
                    if (odczyt_com(1,1)==handles.SO2n)
                        x4(k5, 1) =odczyt_com(1,4)
                        set(Px(5), 'XData', 1:k5, 'YData', x4(1:k5, 1));
                        k5=k5+1;
                        drawnow;
                    end                         
            end
        case handles.BME280
            if (odczyt_com(1,1)==handles.BME280n)
                switch pop_vl_11
                    case handles.temperatura
                            x4(k5, 1) =odczyt_com(1,2)
                            set(Px(5), 'XData', 1:k5, 'YData', x4(1:k5, 1));
                            k5=k5+1;
                            drawnow;
                    case handles.cisnienie
                            x4(k5, 1) =odczyt_com(1,3)
                            set(Px(5), 'XData', 1:k5, 'YData', x4(1:k5, 1));
                            k5=k5+1;
                            drawnow;
                    case handles.wilgotnosc
                            x4(k5, 1) =odczyt_com(1,4)
                            set(Px(5), 'XData', 1:k5, 'YData', x4(1:k5, 1));
                            k5=k5+1;
                            drawnow;
                    case handles.wysokosc
                            x4(k5, 1) =odczyt_com(1,5)
                            set(Px(5), 'XData', 1:k5, 'YData', x4(1:k5, 1));
                            k5=k5+1;
                            drawnow;  
                end
            end
        case handles.AltIMU
            if (odczyt_com(1,1)==handles.AltIMUn)
                switch pop_vl_11
                    case handles.temperatura
                            x4(k5, 1) =odczyt_com(1,2)
                            set(Px(5), 'XData', 1:k5, 'YData', x4(1:k5, 1));
                            k5=k5+1;
                            drawnow;
                    case handles.cisnienie
                            x4(k5, 1) =odczyt_com(1,3)
                            set(Px(5), 'XData', 1:k5, 'YData', x4(1:k5, 1));
                            k5=k5+1;
                            drawnow;
                    case handles.wysokosc
                            x4(k5, 1) =odczyt_com(1,4)
                            set(Px(5), 'XData', 1:k5, 'YData', x4(1:k5, 1));
                            k5=k5+1;
                            drawnow;
                end
            end
        case handles.Termopara
            if (odczyt_com(1,1)==handles.Termoparan)
                switch pop_vl_11
                    case handles.temperatura
                            x4(k5, 1) =odczyt_com(1,2)
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
                    if (odczyt_com(1,1)==handles.O3n)
                        x5(k6, 1) =odczyt_com(1,4)
                        set(Px(6), 'XData', 1:k6, 'YData', x5(1:k6, 1));
                        k6=k6+1;
                        drawnow;
                    end
                case handles.CO
                    if (odczyt_com(1,1)==handles.COn)
                        x5(k6, 1) =odczyt_com(1,4)
                        set(Px(6), 'XData', 1:k6, 'YData', x5(1:k6, 1));
                        k6=k6+1;
                        drawnow;
                    end
                case handles.SO2
                    if (odczyt_com(1,1)==handles.SO2n)
                        x5(k6, 1) =odczyt_com(1,4)
                        set(Px(6), 'XData', 1:k6, 'YData', x5(1:k6, 1));
                        k6=k6+1;
                        drawnow;
                    end                         
            end
        case handles.BME280
            if (odczyt_com(1,1)==handles.BME280n)
                switch pop_vl_13
                    case handles.temperatura
                            x5(k6, 1) =odczyt_com(1,2)
                            set(Px(6), 'XData', 1:k6, 'YData', x5(1:k6, 1));
                            k6=k6+1;
                            drawnow;
                    case handles.cisnienie
                            x5(k6, 1) =odczyt_com(1,3)
                            set(Px(6), 'XData', 1:k6, 'YData', x5(1:k6, 1));
                            k6=k6+1;
                            drawnow;
                    case handles.wilgotnosc
                            x5(k6, 1) =odczyt_com(1,4)
                            set(Px(6), 'XData', 1:k6, 'YData', x5(1:k6, 1));
                            k6=k6+1;
                            drawnow;
                    case handles.wysokosc
                            x5(k6, 1) =odczyt_com(1,5)
                            set(Px(6), 'XData', 1:k6, 'YData', x5(1:k6, 1));
                            k6=k6+1;
                            drawnow;  
                end
            end
        case handles.AltIMU
            if (odczyt_com(1,1)==handles.AltIMUn)
                switch pop_vl_13
                    case handles.temperatura
                            x5(k6, 1) =odczyt_com(1,2)
                            set(Px(6), 'XData', 1:k6, 'YData', x5(1:k6, 1));
                            k6=k6+1;
                            drawnow;
                    case handles.cisnienie
                            x5(k6, 1) =odczyt_com(1,3)
                            set(Px(6), 'XData', 1:k6, 'YData', x5(1:k6, 1));
                            k6=k6+1;
                            drawnow;
                    case handles.wysokosc
                            x5(k6, 1) =odczyt_com(1,4)
                            set(Px(6), 'XData', 1:k6, 'YData', x5(1:k6, 1));
                            k6=k6+1;
                            drawnow;
                end
            end
        case handles.Termopara
            if (odczyt_com(1,1)==handles.Termoparan)
                switch pop_vl_13
                    case handles.temperatura
                            x5(k6, 1) =odczyt_com(1,2)
                            set(Px(6), 'XData', 1:k6, 'YData', x5(1:k6, 1));
                            k6=k6+1;
                            drawnow;
                end
            end
    end
end
toc

fclose(handles.serial_port);
delete(handles.serial_port);
clear handles.serial_port;
set(handles.text2, 'String', 'NOW YOU CAN SAFELY CLOSE THE APPLICATION', 'BackgroundColor', [0.392,0.831,0.075]);





function popupmenu1_Callback(hObject, eventdata, handles)

function popupmenu1_CreateFcn(hObject, eventdata, handles)
set(hObject,'String','Wybierz paramtert');
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function popupmenu2_Callback(hObject, eventdata, handles)

function popupmenu2_CreateFcn(hObject, eventdata, handles)
set(hObject,'String','Wybierz paramtert');
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function popupmenu3_Callback(hObject, eventdata, handles)

function popupmenu3_CreateFcn(hObject, eventdata, handles)
set(hObject,'String','Wybierz paramtert');
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function popupmenu4_Callback(hObject, eventdata, handles)

function popupmenu4_CreateFcn(hObject, eventdata, handles)
set(hObject,'String','Wybierz paramtert');
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function popupmenu5_Callback(hObject, eventdata, handles)
set(handles.popupmenu1,'Value',1);
pop_st_5=get(handles.popupmenu5,'String');
pop_vl_5=strtrim(pop_st_5(get(handles.popupmenu5,'Value'),:));
 switch pop_vl_5
     case handles.Wybierz_czujnik
        s=char(handles.Wybierz_paramtert);
        set(handles.popupmenu1,'String',s);
    case handles.DGS
        s=char(handles.Wybierz_paramtert, handles.O3, handles.CO, handles.SO2, handles.H2S, handles.NO2);
        set(handles.popupmenu1,'String',s);
    case handles.BME280
        s=char(handles.Wybierz_paramtert,handles.temperatura,handles.cisnienie,handles.wilgotnosc,handles.wysokosc);
        set(handles.popupmenu1,'String',s);
    case handles.AltIMU
        s=char(handles.Wybierz_paramtert,handles.temperatura, handles.cisnienie, handles.wysokosc);
        set(handles.popupmenu1,'String',s);
    case handles.Termopara
        s=char(handles.Wybierz_paramtert, handles.temperatura);
        set(handles.popupmenu1,'String',s);
 end

function popupmenu5_CreateFcn(hObject, eventdata, handles)
a='Wybierz czujnik';b='DGS';c='BME280';d='AltIMU';e='Termopara';
s=char(a,b,c,d,e);
set(hObject,'String',s);
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function popupmenu6_Callback(hObject, eventdata, handles)
set(handles.popupmenu2,'Value',1);
pop_st_6=get(handles.popupmenu6,'String');
pop_vl_6=strtrim(pop_st_6(get(handles.popupmenu6,'Value'),:));
 switch pop_vl_6
     case handles.Wybierz_czujnik
        s=char(handles.Wybierz_paramtert);
        set(handles.popupmenu2,'String',s);
    case handles.DGS
        s=char(handles.Wybierz_paramtert, handles.O3, handles.CO, handles.SO2, handles.H2S, handles.NO2);
        set(handles.popupmenu2,'String',s);
    case handles.BME280
        s=char(handles.Wybierz_paramtert,handles.temperatura,handles.cisnienie,handles.wilgotnosc, handles.wysokosc);
        set(handles.popupmenu2,'String',s);
    case handles.AltIMU
        s=char(handles.Wybierz_paramtert,handles.temperatura, handles.cisnienie, handles.wysokosc);
        set(handles.popupmenu2,'String',s);
    case handles.Termopara
        s=char(handles.Wybierz_paramtert, handles.temperatura);
        set(handles.popupmenu2,'String',s);
 end
 
function popupmenu6_CreateFcn(hObject, eventdata, handles)
a='Wybierz czujnik';b='DGS';c='BME280';d='AltIMU';e='Termopara';
s=char(a,b,c,d,e);
set(hObject,'String',s);
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function popupmenu7_Callback(hObject, eventdata, handles)
set(handles.popupmenu3,'Value',1);
pop_st_7=get(handles.popupmenu7,'String');
pop_vl_7=strtrim(pop_st_7(get(handles.popupmenu7,'Value'),:));
 switch pop_vl_7
     case handles.Wybierz_czujnik
        s=char(handles.Wybierz_paramtert);
        set(handles.popupmenu3,'String',s);
    case handles.DGS
        s=char(handles.Wybierz_paramtert, handles.O3, handles.CO, handles.SO2, handles.H2S, handles.NO2);
        set(handles.popupmenu3,'String',s);
    case handles.BME280
        s=char(handles.Wybierz_paramtert, handles.temperatura, handles.cisnienie, handles.wilgotnosc, handles.wysokosc);
        set(handles.popupmenu3,'String',s);
    case handles.AltIMU
        s=char(handles.Wybierz_paramtert,handles.temperatura, handles.cisnienie, handles.wysokosc);
        set(handles.popupmenu3,'String',s);
    case handles.Termopara
        s=char(handles.Wybierz_paramtert, handles.temperatura);
        set(handles.popupmenu3,'String',s);
 end

function popupmenu7_CreateFcn(hObject, eventdata, handles)
a='Wybierz czujnik';b='DGS';c='BME280';d='AltIMU';e='Termopara';
s=char(a,b,c,d,e);
set(hObject,'String',s);
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function popupmenu8_Callback(hObject, eventdata, handles)
set(handles.popupmenu4,'Value',1);
pop_st_8=get(handles.popupmenu8,'String');
pop_vl_8=strtrim(pop_st_8(get(handles.popupmenu8,'Value'),:));
 switch pop_vl_8
     case handles.Wybierz_czujnik
        s=char(handles.Wybierz_paramtert);
        set(handles.popupmenu4,'String',s);
    case handles.DGS
        s=char(handles.Wybierz_paramtert, handles.O3, handles.CO, handles.SO2, handles.H2S, handles.NO2);
        set(handles.popupmenu4,'String',s);
    case handles.BME280
        s=char(handles.Wybierz_paramtert,handles.temperatura,handles.cisnienie,handles.wilgotnosc, handles.wysokosc);
        set(handles.popupmenu4,'String',s);
    case handles.AltIMU
        s=char(handles.Wybierz_paramtert,handles.temperatura, handles.cisnienie, handles.wysokosc);
        set(handles.popupmenu4,'String',s);
    case handles.Termopara
        s=char(handles.Wybierz_paramtert, handles.temperatura);
        set(handles.popupmenu4,'String',s);
 end
 
function popupmenu8_CreateFcn(hObject, eventdata, handles)
a='Wybierz czujnik';b='DGS';c='BME280';d='AltIMU';e='Termopara';
s=char(a,b,c,d,e);
set(hObject,'String',s);
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function popupmenu9_Callback(hObject, eventdata, handles)

function popupmenu9_CreateFcn(hObject, eventdata, handles)
a='Select COM';b=char(seriallist');
s=char(a,b);
set(hObject,'String',s);
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in togglebutton2.
function togglebutton2_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton2


% --- Executes on selection change in popupmenu11.
function popupmenu11_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu11 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu11


% --- Executes during object creation, after setting all properties.
function popupmenu11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu12.
function popupmenu12_Callback(hObject, eventdata, handles)
set(handles.popupmenu11,'Value',1);
pop_st_12=get(handles.popupmenu12,'String');
pop_vl_12=strtrim(pop_st_12(get(handles.popupmenu12,'Value'),:));
 switch pop_vl_12
     case handles.Wybierz_czujnik
        s=char(handles.Wybierz_paramtert);
        set(handles.popupmenu11,'String',s);
    case handles.DGS
        s=char(handles.Wybierz_paramtert, handles.O3, handles.CO, handles.SO2, handles.H2S, handles.NO2);
        set(handles.popupmenu11,'String',s);
    case handles.BME280
        s=char(handles.Wybierz_paramtert,handles.temperatura,handles.cisnienie,handles.wilgotnosc, handles.wysokosc);
        set(handles.popupmenu11,'String',s);
    case handles.AltIMU
        s=char(handles.Wybierz_paramtert,handles.temperatura, handles.cisnienie, handles.wysokosc);
        set(handles.popupmenu11,'String',s);
    case handles.Termopara
        s=char(handles.Wybierz_paramtert, handles.temperatura);
        set(handles.popupmenu11,'String',s);
 end
% hObject    handle to popupmenu12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu12 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu12


% --- Executes during object creation, after setting all properties.
function popupmenu12_CreateFcn(hObject, eventdata, handles)
a='Wybierz czujnik';b='DGS';c='BME280';d='AltIMU';e='Termopara';
s=char(a,b,c,d,e);
set(hObject,'String',s);
% hObject    handle to popupmenu12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu13.
function popupmenu13_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu13 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu13


% --- Executes during object creation, after setting all properties.
function popupmenu13_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu14.
function popupmenu14_Callback(hObject, eventdata, handles)
set(handles.popupmenu13,'Value',1);
pop_st_14=get(handles.popupmenu14,'String');
pop_vl_14=strtrim(pop_st_14(get(handles.popupmenu14,'Value'),:));
 switch pop_vl_14
     case handles.Wybierz_czujnik
        s=char(handles.Wybierz_paramtert);
        set(handles.popupmenu13,'String',s);
    case handles.DGS
        s=char(handles.Wybierz_paramtert, handles.O3, handles.CO, handles.SO2, handles.H2S, handles.NO2);
        set(handles.popupmenu13,'String',s);
    case handles.BME280
        s=char(handles.Wybierz_paramtert,handles.temperatura,handles.cisnienie,handles.wilgotnosc, handles.wysokosc);
        set(handles.popupmenu13,'String',s);
    case handles.AltIMU
        s=char(handles.Wybierz_paramtert,handles.temperatura, handles.cisnienie, handles.wysokosc);
        set(handles.popupmenu13,'String',s);
    case handles.Termopara
        s=char(handles.Wybierz_paramtert, handles.temperatura);
        set(handles.popupmenu13,'String',s);
 end
% hObject    handle to popupmenu14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu14 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu14


% --- Executes during object creation, after setting all properties.
function popupmenu14_CreateFcn(hObject, eventdata, handles)
a='Wybierz czujnik';b='DGS';c='BME280';d='AltIMU';e='Termopara';
s=char(a,b,c,d,e);
set(hObject,'String',s);
% hObject    handle to popupmenu14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
[filename, pathname] = uigetfile('*.txt;*.bin', 'Pick a data file');
	if isequal(filename,0) || isequal(pathname,0);
        disp('User pressed cancel');
        set(handles.text2, 'String', 'NOT SELECTED FILE OR FILE IS UNREADABLE', 'BackgroundColor', [1,0.41,0.16]);
        return;
	else
        disp(['User selected ', fullfile(pathname, filename)]);
    end
pop_st_5=get(handles.popupmenu5,'String');
pop_vl_5=strtrim(pop_st_5(get(handles.popupmenu5,'Value'),:));
pop_st_1=get(handles.popupmenu1,'String');
pop_vl_1=strtrim(pop_st_1(get(handles.popupmenu1,'Value'),:));

pop_st_6=get(handles.popupmenu6,'String');
pop_vl_6=strtrim(pop_st_6(get(handles.popupmenu6,'Value'),:));
pop_st_2=get(handles.popupmenu2,'String');
pop_vl_2=strtrim(pop_st_2(get(handles.popupmenu2,'Value'),:));

pop_st_7=get(handles.popupmenu7,'String');
pop_vl_7=strtrim(pop_st_7(get(handles.popupmenu7,'Value'),:));
pop_st_3=get(handles.popupmenu3,'String');
pop_vl_3=strtrim(pop_st_3(get(handles.popupmenu3,'Value'),:));

pop_st_8=get(handles.popupmenu8,'String');
pop_vl_8=strtrim(pop_st_8(get(handles.popupmenu8,'Value'),:));
pop_st_4=get(handles.popupmenu4,'String');
pop_vl_4=strtrim(pop_st_4(get(handles.popupmenu4,'Value'),:));

pop_st_12=get(handles.popupmenu12,'String');
pop_vl_12=strtrim(pop_st_12(get(handles.popupmenu12,'Value'),:));
pop_st_11=get(handles.popupmenu11,'String');
pop_vl_11=strtrim(pop_st_11(get(handles.popupmenu11,'Value'),:));

pop_st_14=get(handles.popupmenu14,'String');
pop_vl_14=strtrim(pop_st_14(get(handles.popupmenu14,'Value'),:));
pop_st_13=get(handles.popupmenu13,'String');
pop_vl_13=strtrim(pop_st_13(get(handles.popupmenu13,'Value'),:));

if (get(handles.popupmenu1,'Value')==1&&get(handles.popupmenu2,'Value')==1&&get(handles.popupmenu3,'Value')==1&&get(handles.popupmenu4,'Value')==1&&get(handles.popupmenu11,'Value')==1&&get(handles.popupmenu13,'Value')==1)
	set(handles.text2, 'String', 'BEFORE PLOT! CHOOSE AT LEAST ONE PARAMETER', 'BackgroundColor', [1,0.41,0.16]);
	return;
end


Px = gobjects(1, 6); 
for c = 1:6 %Initilize all your plots, for 4 pins
    Px(c) = plot(handles.(['axes' num2str(c)]), 0, 'LineWidth', 2); %Store your plot handles
end

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
set(handles.text2, 'String', 'WARNING! DO NOT CLOSE THE APPLICATION BEFORE END OF PLOTTING', 'BackgroundColor', 'r');
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
set(handles.text2, 'String', 'NOW YOU CAN SAFELY CLOSE THE APPLICATION', 'BackgroundColor', [0.392,0.831,0.075]);