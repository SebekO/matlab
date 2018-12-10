function varargout = tab_giud(varargin)
% TAB_GIUD MATLAB code for tab_giud.fig
%      TAB_GIUD, by itself, creates a new TAB_GIUD or raises the existing
%      singleton*.
%
%      H = TAB_GIUD returns the handle to a new TAB_GIUD or the handle to
%      the existing singleton*.
%
%      TAB_GIUD('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TAB_GIUD.M with the given input arguments.
%
%      TAB_GIUD('Property','Value',...) creates a new TAB_GIUD or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before tab_giud_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to tab_giud_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help tab_giud

% Last Modified by GUIDE v2.5 08-Dec-2018 00:43:59

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @tab_giud_OpeningFcn, ...
                   'gui_OutputFcn',  @tab_giud_OutputFcn, ...
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

%Create tab group
handles.tgroup = uitabgroup('Parent', handles.figure1,'TabLocation', 'left');
handles.tab1 = uitab('Parent', handles.tgroup, 'Title', 'My Tab Label 1');
handles.tab2 = uitab('Parent', handles.tgroup, 'Title', 'My Tab Label 2');
handles.tab3 = uitab('Parent', handles.tgroup, 'Title', 'My Tab Label 3');
%Place panels into each tab
set(handles.P1,'Parent',handles.tab1)
set(handles.P2,'Parent',handles.tab2)
set(handles.P3,'Parent',handles.tab3)
%Reposition each panel to same location as panel 1
set(handles.P2,'position',get(handles.P1,'position'));
set(handles.P3,'position',get(handles.P1,'position'));
% --- Executes just before tab_giud is made visible.
function tab_giud_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to tab_giud (see VARARGIN)

% Choose default command line output for tab_giud
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes tab_giud wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = tab_giud_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


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


% --- Executes on button press in checkbox1.
function checkbox1_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox1


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in togglebutton1.
function togglebutton1_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton1
