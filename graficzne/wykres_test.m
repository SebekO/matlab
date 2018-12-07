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

% Last Modified by GUIDE v2.5 07-Dec-2018 00:45:18

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

% Choose default command line output for wykres_test
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes wykres_test wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = wykres_test_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in togglebutton1.
function togglebutton1_Callback(hObject, eventdata, handles)
SerialPort = 'com19';
s = serial(SerialPort, 'BaudRate', 57600);
fopen(s);
cla;
serial_n1=061318011028;
serial_n2=082918010321;
serial_n3=102617010931;
k=1;
k1=1;
k2=1;
Px = gobjects(1,3) 

    Px(1) = plot (handles.axes1, 0, 'LineWidth', 2); %Store your plot handles
    grid on;
    Px(2) = plot (handles.axes2, 0, 'LineWidth', 2); %Store your plot handles
    grid on;
    Px(3) = plot (handles.axes3, 0, 'LineWidth', 2); %Store your plot handles
    grid on;

tic
while get(hObject, 'Value')
    a = str2num(fscanf(s));
     if (a(1,1)==serial_n1)
        x(k, 1) =a(1,4)
        set(Px(1), 'XData', 1:k, 'YData', x(1:k, 1));%Setting the XData and YData directly to prevent redrawing plot from scrap.
        k=k+1;    
     end
     if (a(1,1)==serial_n2)
        x1(k1, 1) =a(1,4)
        set(Px(2), 'XData', 1:k1, 'YData', x1(1:k1, 1));%Setting the XData and YData directly to prevent redrawing plot from scrap.
        k1=k1+1;    
     end
     if (a(1,1)==serial_n3)
        x2(k2, 1) =a(1,4)
        set(Px(3), 'XData', 1:k2, 'YData', x2(1:k2, 1));%Setting the XData and YData directly to prevent redrawing plot from scrap.
        k2=k2+1;    
     end
     drawnow;
  %Do only 1 drawnow, instead of 4 drawnow you had before
    end
toc

fclose(s);
delete(s);
clear s;

% hObject    handle to togglebutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton1


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu2.
function popupmenu2_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu2


% --- Executes during object creation, after setting all properties.
function popupmenu2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu3.
function popupmenu3_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu3 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu3


% --- Executes during object creation, after setting all properties.
function popupmenu3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu4.
function popupmenu4_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu4 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu4


% --- Executes during object creation, after setting all properties.
function popupmenu4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
