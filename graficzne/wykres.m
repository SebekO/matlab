function varargout = wykres(varargin)
% WYKRES MATLAB code for wykres.fig
%      WYKRES, by itself, creates a new WYKRES or raises the existing
%      singleton*.
%
%      H = WYKRES returns the handle to a new WYKRES or the handle to
%      the existing singleton*.
%
%      WYKRES('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in WYKRES.M with the given input arguments.
%
%      WYKRES('Property','Value',...) creates a new WYKRES or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before wykres_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to wykres_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help wykres

% Last Modified by GUIDE v2.5 04-Dec-2018 20:56:17

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @wykres_OpeningFcn, ...
                   'gui_OutputFcn',  @wykres_OutputFcn, ...
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


% --- Executes just before wykres is made visible.
function wykres_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to wykres (see VARARGIN)

% Choose default command line output for wykres
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes wykres wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = wykres_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



% --- Executes on button press in togglebutton1.
function togglebutton1_Callback(hObject, eventdata, handles)

SerialPort = 'com10';
s = serial(SerialPort, 'BaudRate', 57600);
fopen(s);
cla;
t = 0;
y = 1;

a = str2num(fscanf(s));
h = animatedline('Color','b');
h2 = animatedline('Color','r');
h3 = animatedline('Color','k');
serial_n1=061318011028;
serial_n2=082918010321;
serial_n3=102617010931;

tic
while get(hObject, 'Value')
    
    a = str2num(fscanf(s));
     if (a(1,1)==serial_n1)
       axes(handles.axes6);
       plot(sin(0:.1:10));
       data_n1(y,1)=a(1,3);
       addpoints(h, t, data_n1(y,1));
     end
      if (a(1,1)==serial_n2)
       data_n1(y,1)=a(1,3);
       addpoints(h2, t, data_n1(y,1));
     end
     if (a(1,1)==serial_n3)
       data_n1(y,1)=a(1,3);
       addpoints(h3, t, data_n1(y,1));
    end
       y= y+1;
       t= t+1;
       drawnow update
     
end
toc

fclose(s);
delete(s);
clear s;

% hObject    handle to togglebutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton1
