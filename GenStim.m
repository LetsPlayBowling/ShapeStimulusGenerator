function varargout = GenStim(varargin)
% GENSTIM MATLAB code for GenStim.fig
%      GENSTIM, by itself, creates a new GENSTIM or raises the existing
%      singleton*.
%
%      H = GENSTIM returns the handle to a new GENSTIM or the handle to
%      the existing singleton*.
%
%      GENSTIM('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GENSTIM.M with the given input arguments.
%
%      GENSTIM('Property','Value',...) creates a new GENSTIM or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GenStim_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GenStim_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GenStim

% Last Modified by GUIDE v2.5 01-Nov-2019 02:24:33

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GenStim_OpeningFcn, ...
                   'gui_OutputFcn',  @GenStim_OutputFcn, ...
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


% --- Executes just before GenStim is made visible.
function GenStim_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GenStim (see VARARGIN)

% Choose default command line output for GenStim
handles.output = hObject;

%% icons 
% from upper-left one, (1,1), circle 
[a,map]=imread('icon_RoundCircle.jpg');
[r,c,d]=size(a); 
x=ceil(r/30); 
y=ceil(c/30); 
g=a(1:x:end,1:y:end,:);
g(g==255)=5.5*255;
set(handles.RoundCircleButton,'CData',g);
% % from upper-left one, (1,2), tirangle 
[a,map]=imread('icon_Triangle.jpg');
[r,c,d]=size(a); 
x=ceil(r/30); 
y=ceil(c/30); 
g=a(1:x:end,1:y:end,:);
g(g==255)=5.5*255;
set(handles.TriangleButton,'CData',g);
% % from upper-left one, (1,3), Square 
[a,map]=imread('icon_Square.jpg');
[r,c,d]=size(a); 
x=ceil(r/30); 
y=ceil(c/30); 
g=a(1:x:end,1:y:end,:);
g(g==255)=5.5*255;
set(handles.SquareButton,'CData',g);
% % from upper-left one, (2,1), ellipse
[a,map]=imread('icon_Ellipse.jpg');
[r,c,d]=size(a); 
x=ceil(r/30); 
y=ceil(c/30); 
g=a(1:x:end,1:y:end,:);
g(g==255)=5.5*255;
set(handles.EllipseButton,'CData',g);
% % from upper-left one, (2,2), diamond
[a,map]=imread('icon_Diamond.jpg');
[r,c,d]=size(a); 
x=ceil(r/30); 
y=ceil(c/30); 
g=a(1:x:end,1:y:end,:);
g(g==255)=5.5*255;
set(handles.DiamondButton,'CData',g);
% % from upper-left one, (2,3), rectangle
[a,map]=imread('icon_Rectangle.jpg');
[r,c,d]=size(a); 
x=ceil(r/30); 
y=ceil(c/30); 
g=a(1:x:end,1:y:end,:);
g(g==255)=5.5*255;
set(handles.RectButton,'CData',g);
% % from upper-left one, (3,1), half-circle
[a,map]=imread('icon_HalfCircle.jpg');
[r,c,d]=size(a); 
x=ceil(r/30); 
y=ceil(c/30); 
g=a(1:x:end,1:y:end,:);
g(g==255)=5.5*255;
set(handles.HalfCircleButton,'CData',g);
% % from upper-left one, (3,2), 4-point star
[a,map]=imread('icon_Star4Points.jpg');
[r,c,d]=size(a); 
x=ceil(r/30); 
y=ceil(c/30); 
g=a(1:x:end,1:y:end,:);
g(g==255)=5.5*255;
set(handles.Star4PointsButton,'CData',g);
% % from upper-left one, (3,3), 4-point star
[a,map]=imread('icon_Trapezium.jpg');
[r,c,d]=size(a); 
x=ceil(r/30); 
y=ceil(c/30); 
g=a(1:x:end,1:y:end,:);
g(g==255)=5.5*255;
set(handles.TrapeziumButton,'CData',g);
% % from upper-left one, (4,1), icecream
[a,map]=imread('icon_Icecream.jpg');
[r,c,d]=size(a); 
x=ceil(r/30); 
y=ceil(c/30); 
g=a(1:x:end,1:y:end,:);
g(g==255)=5.5*255;
set(handles.IcecreamButton,'CData',g);
% % from upper-left one, (4,2), diabolo
[a,map]=imread('icon_Diabolo.jpg');
[r,c,d]=size(a); 
x=ceil(r/30); 
y=ceil(c/30); 
g=a(1:x:end,1:y:end,:);
g(g==255)=5.5*255;
set(handles.DiaboloButton,'CData',g);
% % from upper-left one, (4,3), shield
[a,map]=imread('icon_Shield.jpg');
[r,c,d]=size(a); 
x=ceil(r/30); 
y=ceil(c/30); 
g=a(1:x:end,1:y:end,:);
g(g==255)=5.5*255;
set(handles.ShieldButton,'CData',g);
% % from upper-left one, (5,1), pie
[a,map]=imread('icon_Pie.jpg');
[r,c,d]=size(a); 
x=ceil(r/30); 
y=ceil(c/30); 
g=a(1:x:end,1:y:end,:);
g(g==255)=5.5*255;
set(handles.PieButton,'CData',g);
% % from upper-left one, (5,2),5-point star
[a,map]=imread('icon_Star5Points.jpg');
[r,c,d]=size(a); 
x=ceil(r/30); 
y=ceil(c/30); 
g=a(1:x:end,1:y:end,:);
g(g==255)=5.5*255;
set(handles.Star5PointsButton,'CData',g);
% % from upper-left one, (5,3),pentagon
[a,map]=imread('icon_Pentagon.jpg');
[r,c,d]=size(a); 
x=ceil(r/30); 
y=ceil(c/30); 
g=a(1:x:end,1:y:end,:);
g(g==255)=5.5*255;
set(handles.PentagonButton,'CData',g);
% % from upper-left one, (6,1),Drop
[a,map]=imread('icon_Drop.jpg');
[r,c,d]=size(a); 
x=ceil(r/30); 
y=ceil(c/30); 
g=a(1:x:end,1:y:end,:);
g(g==255)=5.5*255;
set(handles.DropButton,'CData',g);
% % from upper-left one, (6,2),6-point star
[a,map]=imread('icon_Star6Points.jpg');
[r,c,d]=size(a); 
x=ceil(r/30); 
y=ceil(c/30); 
g=a(1:x:end,1:y:end,:);
g(g==255)=5.5*255;
set(handles.Star6PointsButton,'CData',g);
% % from upper-left one, (6,3), hexagon
[a,map]=imread('icon_Hexagon.jpg');
[r,c,d]=size(a); 
x=ceil(r/30); 
y=ceil(c/30); 
g=a(1:x:end,1:y:end,:);
g(g==255)=5.5*255;
set(handles.HexagonButton,'CData',g);
% % from upper-left one, (7,1), heart
[a,map]=imread('icon_Heart.jpg');
[r,c,d]=size(a); 
x=ceil(r/30); 
y=ceil(c/30); 
g=a(1:x:end,1:y:end,:);
g(g==255)=5.5*255;
set(handles.HeartButton,'CData',g);
% % from upper-left one, (7,2), arrow
[a,map]=imread('icon_Arrow.jpg');
[r,c,d]=size(a); 
x=ceil(r/30); 
y=ceil(c/30); 
g=a(1:x:end,1:y:end,:);
g(g==255)=5.5*255;
set(handles.ArrowButton,'CData',g);
% % from upper-left one, (7,3), H 
[a,map]=imread('icon_H.jpg');
[r,c,d]=size(a); 
x=ceil(r/30); 
y=ceil(c/30); 
g=a(1:x:end,1:y:end,:);
g(g==255)=5.5*255;
set(handles.HButton,'CData',g);
% % from upper-left one, (8,1), vase
[a,map]=imread('icon_Vase.jpg');
[r,c,d]=size(a); 
x=ceil(r/30); 
y=ceil(c/30); 
g=a(1:x:end,1:y:end,:);
g(g==255)=5.5*255;
set(handles.VaseButton,'CData',g);
% % from upper-left one, (8,2), double arrow
[a,map]=imread('icon_DoubleArrow.jpg');
[r,c,d]=size(a); 
x=ceil(r/30); 
y=ceil(c/30); 
g=a(1:x:end,1:y:end,:);
g(g==255)=5.5*255;
set(handles.DoubleArrowButton,'CData',g);
% % from upper-left one, (8,3), cross
[a,map]=imread('icon_Cross.jpg');
[r,c,d]=size(a); 
x=ceil(r/30); 
y=ceil(c/30); 
g=a(1:x:end,1:y:end,:);
g(g==255)=5.5*255;
set(handles.CrossButton,'CData',g)
% % from upper-left one, (9,1), sakura
[a,map]=imread('icon_Sakura.jpg');
[r,c,d]=size(a); 
x=ceil(r/30); 
y=ceil(c/30); 
g=a(1:x:end,1:y:end,:);
g(g==255)=5.5*255;
set(handles.SakuraButton,'CData',g)
% % from upper-left one, (9,2), irregular shape 
[a,map]=imread('icon_Irregular.jpg');
[r,c,d]=size(a); 
x=ceil(r/30); 
y=ceil(c/30); 
g=a(1:x:end,1:y:end,:);
g(g==255)=5.5*255;
set(handles.IrregularShape1Button,'CData',g)
% % from upper-left one, (9,3), curved cross 
[a,map]=imread('icon_CurvedCross.jpg');
[r,c,d]=size(a); 
x=ceil(r/30); 
y=ceil(c/30); 
g=a(1:x:end,1:y:end,:);
g(g==255)=5.5*255;
set(handles.CurvedCrossButton,'CData',g)

%% make logo area object's  X Y axes visible
logo_img = imread('RaysLogo.bmp');
handles.logo_image = image(handles.logo_area,logo_img);
handles.logo_area.XAxis.Visible = 'off';
handles.logo_area.YAxis.Visible = 'off';

%% fill the current directory to the 'CurrentPathEditBar'
handles.cur_path_str = pwd;
set(handles.CurrentPathEditBar,'String',handles.cur_path_str);

%% make bkg_plot_area object's  X Y axes visible
handles.bkg_plot_area.XAxis.Visible = 'on';
handles.bkg_plot_area.YAxis.Visible = 'on';
% bkg_plot_area object box on, delete the tick labels
set(handles.bkg_plot_area,'box','on','XTickLabel',[],'YTickLabel',[]);
% make plot_area object's  X Y axes 
handles.plot_area.XAxis.Visible = 'off';
handles.plot_area.YAxis.Visible = 'off';

%% stimulus type and canvas
% default stimulus type: 
handles.stimulus_type = '0'; 
% default background color
handles.bkg_color = [1 1 1];

%% text stimulus properties
% default text input content
handles.inputtext = [];
% default text input stimulus fontsize
handles.cur_stimulus_fontsize = 200;
handles.max_fontsize_value = 400;
if strcmp(handles.stimulus_type, 'text')
    set(handles.SizeEdit,'String',num2str(handles.cur_stimulus_fontsize));
end
% default text stimulus stroke width
handles.default_stimulus_fontweight = 'Normal';
handles.cur_stimulus_fontweight = handles.default_stimulus_fontweight;
% default text stimulus fontangle
handles.default_stimulus_fontangle = 'Normal';
handles.cur_stimulus_fontangle = handles.default_stimulus_fontangle;
% default text stimulus position 
handles.default_stimulus_hori_pos = 0.5;
handles.default_stimulus_verti_pos = 0.5;
handles.cur_stimulus_hori_pos = handles.default_stimulus_hori_pos;
handles.cur_stimulus_verti_pos = handles.default_stimulus_verti_pos;
%% default common properties for shape stimulus and text stimulus 
% default stimulus rotation angle
handles.cur_stimulus_RotAngle = 0;
handles.cur_stimulus_total_RotAngle = 0;
% default stimulus stroke color
handles.default_stimulus_stroke_color = [0 0 0];
handles.cur_stimulus_stroke_color = [0 0 0];
%% default shp stimulus properties
% default shape stimulus points 
handles.cur_shp_points = [];
% default shp stimulus expand dist 
handles.cur_shp_expand_multi = 1;
handles.max_shp_expand_multi = 2;
% default shp stimulus line width
handles.max_shp_linewidth = 28;
handles.default_shp_linewidth = 14;
handles.cur_shp_linewidth = handles.default_shp_linewidth;
% default shp stimulus line style
handles.possib_shp_lineStyle = {'-';'--';':';'-.'};
handles.default_shp_linestyle = '-';
handles.cur_shp_linestyle = handles.default_shp_linestyle;
% default shp stimulus fill or not
handles.cur_shp_fill = 0;
% default shp stimulus fill color
handles.cur_shp_fill_color = handles.bkg_color;
% default shp stimulus max moving range
handles.max_shp_move_dist = 10;
% initiate shape moving distance
handles.cur_hori_move_dist = 0;
handles.cur_verti_move_dist = 0;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes GenStim wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GenStim_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in bkg_color_button.
function bkg_color_button_Callback(hObject, eventdata, handles)
% hObject    handle to bkg_color_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.bkg_color = uisetcolor([1 1 1]);
guidata(hObject,handles);
set(handles.plot_area,'color',handles.bkg_color);    
set(handles.CanvasColorDisplay,'BackgroundColor',handles.bkg_color);
if handles.cur_shp_fill == 0
    set(handles.FillColorDisplay,'BackgroundColor',handles.bkg_color);
end
if (strcmp(handles.stimulus_type,'shp') || strcmp(handles.stimulus_type,'0'))...
        && handles.cur_shp_fill == 0
    handles.cur_shp_fill_color = handles.bkg_color;
    guidata(hObject,handles);
    if ~isempty(handles.cur_shp_points)
        handles.shp = draw_shp(hObject,eventdata,handles);
    end
elseif strcmp(handles.stimulus_type,'shp')
    guidata(hObject,handles);
    handles.shp = draw_shp(hObject,eventdata,handles);
end
handles.prompt_msg_line = ['>>>> Background color is changed to (',...
    num2str(handles.bkg_color(1).*255), ' ', ...
    num2str(handles.bkg_color(2).*255), ' ', ...
    num2str(handles.bkg_color(3).*255),') ...'];
guidata(hObject,handles);
update_prompt_msg(hObject, eventdata, handles);

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in ClearCanvasButton.
function ClearCanvasButton_Callback(hObject, eventdata, handles)
% hObject    handle to ClearCanvasButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
delete(allchild(handles.plot_area));
% set(handles.plot_area,'Color',[1 1 1]); % cancelled this function
handles.prompt_msg_line = '>>>> Clear canvas, reset position & shape size...';
% clear input edit bar 
handles.InputTextEdit.String = [];
handles.inputtext = [];
set(handles.italicButton,'Value',0);
% set(handles.TextFontweightMenu,'Value',1);
set(handles.StimHoriPosSlider,'Value',0.5);
set(handles.StimVertiPosSlider,'Value',0.5);
set(handles.StrokeWidthSlider,'Value',0.5);
handles.cur_stimulus_fontangle = 'normal';
% set(handles.LineStyleMenu,'Value',1);
set(handles.SizeSlider,'Value',0.5);
set(handles.SizeEdit,'String','200');
handles.stimulus_type = '0';
handles.cur_shp_points = [];
handles.plot_area.XAxis.Visible = 'off';
handles.plot_area.YAxis.Visible = 'off';
set(handles.plot_area,'box','off');
set(handles.plot_area,'color',handles.bkg_color);
handles.cur_shp_expand_multi = 1;
handles.last_hori_bar_value = 0.5;
handles.last_verti_bar_value = 0.5;
guidata(hObject,handles);
update_prompt_msg(hObject, eventdata, handles);

% --- Executes on ClearCanvas without clean the InputTextEdit bar
function ClearCanvas(hObject, eventdata, handles)
% hObject    handle to ClearCanvasButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
delete(allchild(handles.plot_area));
% set(handles.plot_area,'Color',[1 1 1]);
handles.prompt_msg_line = '>>>> Clear canvas ...';
guidata(hObject,handles);
update_prompt_msg(hObject, eventdata, handles);

function InputTextEdit_Callback(hObject, eventdata, handles)
% hObject    handle to InputTextEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of InputTextEdit as text
%        str2double(get(hObject,'String')) returns contents of InputTextEdit as a double
handles.inputtext = handles.InputTextEdit.String;
guidata(hObject,handles);
Plot_Callback(hObject, eventdata, handles);

% --- Executes during object creation, after setting all properties.
function InputTextEdit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to InputTextEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in RoundCircleButton.
function RoundCircleButton_Callback(hObject, eventdata, handles)
% hObject    handle to RoundCircleButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% clear canvas
ClearCanvas(hObject, eventdata, handles);
% stimulus type
handles.stimulus_type = 'shp';
% default points in coordinates
aplha=0:pi/5000:2*pi;
r = 6;
x = r*cos(aplha)';
y = r*sin(aplha)';
handles.cur_shp_points = [x,y];
handles.default_shp_points = handles.cur_shp_points;
handles.cur_shp_points = rotateCoordFunc(handles.cur_shp_points,...
    handles.cur_stimulus_total_RotAngle);
handles.cur_shp_points = expandCoordFunc(handles.cur_shp_points,...
    handles.cur_shp_expand_multi);
handles.cur_shp_points = moveCoordFunc(handles.cur_shp_points,...
    handles.cur_hori_move_dist,handles.cur_verti_move_dist);
handles.prompt_msg_line = '>>>> Draw a round circle ...';
handles.shp = draw_shp(hObject,eventdata,handles);
guidata(hObject,handles);
update_prompt_msg(hObject, eventdata, handles);


% --- Executes on button press in EllipseButton.
function EllipseButton_Callback(hObject, eventdata, handles)
% hObject    handle to EllipseButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% clear canvas
ClearCanvas(hObject, eventdata, handles);
% stimulus type
handles.stimulus_type = 'shp';
% default points in coordinates
aplha=0:pi/1000:2*pi;
c = 5.3;
a = 6.8;
b = sqrt(a^2 - c^2);
x = a*cos(aplha)';
y = b*sin(aplha)';
handles.cur_shp_points = [x,y];
handles.default_shp_points = handles.cur_shp_points;
handles.cur_shp_points = rotateCoordFunc(handles.cur_shp_points,...
    handles.cur_stimulus_total_RotAngle);
handles.cur_shp_points = expandCoordFunc(handles.cur_shp_points,...
    handles.cur_shp_expand_multi);
handles.cur_shp_points = moveCoordFunc(handles.cur_shp_points,...
    handles.cur_hori_move_dist,handles.cur_verti_move_dist);
handles.prompt_msg_line = '>>>> Draw an ellipse ...';
handles.shp = draw_shp(hObject,eventdata,handles);
guidata(hObject,handles);
update_prompt_msg(hObject, eventdata, handles);


% --- Executes on button press in HalfCircleButton.
function HalfCircleButton_Callback(hObject, eventdata, handles)
% hObject    handle to HalfCircleButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% clear canvas
ClearCanvas(hObject, eventdata, handles);
% stimulus type
handles.stimulus_type = 'shp';
% default points in coordinates
aplha=0:pi/1000:pi;
r = 6.5;
x = r*cos(aplha)';
y = r*sin(aplha)';
lower = 1.5;
handles.cur_shp_points = [0,0; x,y; 0,0];
handles.cur_shp_points(:,2) = handles.cur_shp_points(:,2) - ...
    lower.*ones(size(handles.cur_shp_points,1),1);
handles.default_shp_points = handles.cur_shp_points;
handles.cur_shp_points = rotateCoordFunc(handles.cur_shp_points,...
    handles.cur_stimulus_total_RotAngle);
handles.cur_shp_points = expandCoordFunc(handles.cur_shp_points,...
    handles.cur_shp_expand_multi);
handles.cur_shp_points = moveCoordFunc(handles.cur_shp_points,...
    handles.cur_hori_move_dist,handles.cur_verti_move_dist);
handles.prompt_msg_line = '>>>> Draw a half circle ...';
handles.shp = draw_shp(hObject,eventdata,handles);
guidata(hObject,handles);
update_prompt_msg(hObject, eventdata, handles);


% --- Executes on button press in IcecreamButton.
function IcecreamButton_Callback(hObject, eventdata, handles)
% hObject    handle to IcecreamButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% clear canvas
ClearCanvas(hObject, eventdata, handles);
% stimulus type
handles.stimulus_type = 'shp';
% default points in coordinates
aplha=0:pi/1000:pi;
r = 4.5;
x = r*cos(aplha)';
y = r*sin(aplha)';
half_bottom_angle = pi/6;
side_length = r/sin(half_bottom_angle);
higher = 1.5;
handles.cur_shp_points = [...
    side_length/2*sin(half_bottom_angle),...
    -side_length/2*cos(half_bottom_angle);...
    0,-r/tan(half_bottom_angle);...
    x,y;...
    0,-r/tan(half_bottom_angle);...
    side_length/2*sin(half_bottom_angle),...
    -side_length/2*cos(half_bottom_angle);];
handles.cur_shp_points(:,2) = handles.cur_shp_points(:,2) + ...
    higher.*ones(size(handles.cur_shp_points,1),1);
handles.default_shp_points = handles.cur_shp_points;
handles.cur_shp_points = rotateCoordFunc(handles.cur_shp_points,...
    handles.cur_stimulus_total_RotAngle);
handles.cur_shp_points = expandCoordFunc(handles.cur_shp_points,...
    handles.cur_shp_expand_multi);
handles.cur_shp_points = moveCoordFunc(handles.cur_shp_points,...
    handles.cur_hori_move_dist,handles.cur_verti_move_dist);
handles.prompt_msg_line = '>>>> Draw a icecream like shape ...';
handles.shp = draw_shp(hObject,eventdata,handles);
guidata(hObject,handles);
update_prompt_msg(hObject, eventdata, handles);

% --- Executes on button press in PieButton.
function PieButton_Callback(hObject, eventdata, handles)
% hObject    handle to PieButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% clear canvas
ClearCanvas(hObject, eventdata, handles);
% stimulus type
handles.stimulus_type = 'shp';
% default points in coordinates
alpha_1 = pi/2:-pi/1000:-pi/3;
r = 6;
x1 = r*cos(alpha_1)';
y1 = r*sin(alpha_1)';
center = [0,-0.5];
alpha_2 = pi+3/pi:-(pi/1000):pi/2;
x2 = r*cos(alpha_2)';
y2 = r*sin(alpha_2)';
handles.cur_shp_points = [x1,y1];
temp = [x2,y2];
handles.cur_shp_points = [handles.cur_shp_points;center;temp];
handles.default_shp_points = handles.cur_shp_points;
handles.cur_shp_points = rotateCoordFunc(handles.cur_shp_points,...
    handles.cur_stimulus_total_RotAngle);
handles.cur_shp_points = expandCoordFunc(handles.cur_shp_points,...
    handles.cur_shp_expand_multi);
handles.cur_shp_points = moveCoordFunc(handles.cur_shp_points,...
    handles.cur_hori_move_dist,handles.cur_verti_move_dist);
handles.prompt_msg_line = '>>>> Draw a pie like shape ...';
handles.shp = draw_shp(hObject,eventdata,handles);
guidata(hObject,handles);
update_prompt_msg(hObject, eventdata, handles);

% --- Executes on button press in DropButton.
function DropButton_Callback(hObject, eventdata, handles)
% hObject    handle to DropButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% clear canvas
ClearCanvas(hObject, eventdata, handles);
% stimulus type
handles.stimulus_type = 'shp';
% default points in coordinates
alpha_1 = -pi/2:pi/500:45*pi/180;
r = 3.8;
x1 = r*cos(alpha_1)';
y1 = r*sin(alpha_1)';
R = r/(sqrt(2)-1);
alpha_2 =  (pi+45*pi/180):-pi/500:pi;
x2 = R*cos(alpha_2)';
y2 = R*sin(alpha_2)';
x2 = x2+ones(length(x2),1).*R;
y2 = y2+ones(length(y2),1).*R;
alpha_3 =  0:-pi/500:-45*pi/180;
x3 = R*cos(alpha_3)';
y3 = R*sin(alpha_3)';
x3 = x3-ones(length(x3),1).*R;
y3 = y3+ones(length(y3),1).*R;
alpha_4 =  pi/2+45*pi/180:pi/500:3/2*pi;
x4 = r*cos(alpha_4)';
y4 = r*sin(alpha_4)';
lower_move = r * 0.4;
handles.cur_shp_points = [x1,y1;x2,y2;x3,y3;x4,y4];
handles.cur_shp_points(:,2) = handles.cur_shp_points(:,2) - ...
    lower_move.*ones(length(handles.cur_shp_points),1);
handles.default_shp_points = handles.cur_shp_points;
handles.cur_shp_points = rotateCoordFunc(handles.cur_shp_points,...
    handles.cur_stimulus_total_RotAngle);
handles.cur_shp_points = expandCoordFunc(handles.cur_shp_points,...
    handles.cur_shp_expand_multi);
handles.cur_shp_points = moveCoordFunc(handles.cur_shp_points,...
    handles.cur_hori_move_dist,handles.cur_verti_move_dist);
handles.prompt_msg_line = '>>>> Draw a drop like shape ...';
handles.shp = draw_shp(hObject,eventdata,handles);
guidata(hObject,handles);
update_prompt_msg(hObject, eventdata, handles);

% --- Executes on button press in HeartButton.
function HeartButton_Callback(hObject, eventdata, handles)
% hObject    handle to HeartButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% clear canvas
ClearCanvas(hObject, eventdata, handles);
% stimulus type
handles.stimulus_type = 'shp';
% default points in coordinates
t_all = 0:pi/100:2*pi;
for i = 1:length(t_all)
    t = t_all(i);
    x(i) = 16 * (sin(t).^3);
    y(i) = 13*cos(t) - 5*cos(2*t) - 2*cos(3*t) - cos(4*t);
end
temp_cart_cur_shp_points = [x',y'];
cur_shpPoints_cart = temp_cart_cur_shp_points;
shpPoints_pol = cur_shpPoints_cart;
for i = 1:size(cur_shpPoints_cart,1)
    [shpPoints_pol(i,1), shpPoints_pol(i,2)] = ...
        cart2pol(cur_shpPoints_cart(i,1),cur_shpPoints_cart(i,2));
end
% get expand multiple value
shpPoints_pol(:,2) = shpPoints_pol(:,2).* 0.4;
for i = 1:size(cur_shpPoints_cart,1)
    [cur_shpPoints_cart(i,1), cur_shpPoints_cart(i,2)] = ...
        pol2cart(shpPoints_pol(i,1),shpPoints_pol(i,2));
end
handles.cur_shp_points = cur_shpPoints_cart;
handles.default_shp_points = handles.cur_shp_points;
handles.cur_shp_points = rotateCoordFunc(handles.cur_shp_points,...
    handles.cur_stimulus_total_RotAngle);
handles.cur_shp_points = expandCoordFunc(handles.cur_shp_points,...
    handles.cur_shp_expand_multi);
handles.cur_shp_points = moveCoordFunc(handles.cur_shp_points,...
    handles.cur_hori_move_dist,handles.cur_verti_move_dist);
handles.prompt_msg_line = '>>>> Draw a heart like shape ...';
handles.shp = draw_shp(hObject,eventdata,handles);
guidata(hObject,handles);
update_prompt_msg(hObject, eventdata, handles);

% --- Executes on button press in VaseButton.
function VaseButton_Callback(hObject, eventdata, handles)
% hObject    handle to VaseButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% clear canvas
ClearCanvas(hObject, eventdata, handles);
% stimulus type
handles.stimulus_type = 'shp';
% default points in coordinates
t = 50*pi/180:-pi/1000:(-pi-50*pi/180);
r = 5;
x = r*cos(t)';
y = r*sin(t)';
lower_move = 1;
handles.cur_shp_points = [...
    0,r+1;...
    r,r+1;...
    x,y;...
    -r,r+1;...
    0,r+1];
handles.cur_shp_points(:,2) = handles.cur_shp_points(:,2) - ...
    ones(length(handles.cur_shp_points),1).*lower_move;
handles.default_shp_points = handles.cur_shp_points;
handles.cur_shp_points = rotateCoordFunc(handles.cur_shp_points,...
    handles.cur_stimulus_total_RotAngle);
handles.cur_shp_points = expandCoordFunc(handles.cur_shp_points,...
    handles.cur_shp_expand_multi);
handles.cur_shp_points = moveCoordFunc(handles.cur_shp_points,...
    handles.cur_hori_move_dist,handles.cur_verti_move_dist);
handles.prompt_msg_line = '>>>> Draw a vase like shape ...';
handles.shp = draw_shp(hObject,eventdata,handles);
guidata(hObject,handles);
update_prompt_msg(hObject, eventdata, handles);

% --- Executes on button press in TriangleButton.
function TriangleButton_Callback(hObject, eventdata, handles)
% hObject    handle to TriangleButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% clear canvas
ClearCanvas(hObject, eventdata, handles);
% stimulus type
handles.stimulus_type = 'shp';
% default points in coordinates
handles.cur_shp_points = [0,-6*sin(pi/6);...
    6*cos(pi/6),-6*sin(pi/6);...
    0,6;...
    -6*cos(pi/6),-6*sin(pi/6);...
    0,-6*sin(pi/6)];
handles.default_shp_points = handles.cur_shp_points;
handles.cur_shp_points = rotateCoordFunc(handles.cur_shp_points,...
    handles.cur_stimulus_total_RotAngle);
handles.cur_shp_points = expandCoordFunc(handles.cur_shp_points,...
    handles.cur_shp_expand_multi);
handles.cur_shp_points = moveCoordFunc(handles.cur_shp_points,...
    handles.cur_hori_move_dist,handles.cur_verti_move_dist);
handles.prompt_msg_line = '>>>> Draw a triangle ...';
handles.shp = draw_shp(hObject,eventdata,handles);
guidata(hObject,handles);
update_prompt_msg(hObject, eventdata, handles);


% --- Executes on button press in DiamondButton.
function DiamondButton_Callback(hObject, eventdata, handles)
% hObject    handle to DiamondButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% clear canvas
ClearCanvas(hObject, eventdata, handles);
% stimulus type
handles.stimulus_type = 'shp';
% default points in coordinates
side_length = 7.5;
handles.cur_shp_points = [...
    side_length*sin(pi/6)*cos(pi/6)*cos(pi/6),...
    side_length*sin(pi/6)*cos(pi/6)*sin(pi/6);...
    side_length*sin(pi/6),0;...
    0,-side_length*cos(pi/6);...
    -side_length*sin(pi/6),0;...
    0,side_length*cos(pi/6);...
    side_length*sin(pi/6)*cos(pi/6)*cos(pi/6),...
    side_length*sin(pi/6)*cos(pi/6)*sin(pi/6);];
handles.default_shp_points = handles.cur_shp_points;
handles.cur_shp_points = rotateCoordFunc(handles.cur_shp_points,...
    handles.cur_stimulus_total_RotAngle);
handles.cur_shp_points = expandCoordFunc(handles.cur_shp_points,...
    handles.cur_shp_expand_multi);
handles.cur_shp_points = moveCoordFunc(handles.cur_shp_points,...
    handles.cur_hori_move_dist,handles.cur_verti_move_dist);
handles.prompt_msg_line = '>>>> Draw a diamond ...';
handles.shp = draw_shp(hObject,eventdata,handles);
guidata(hObject,handles);
update_prompt_msg(hObject, eventdata, handles);

% --- Executes on button press in Star4PointsButton.
function Star4PointsButton_Callback(hObject, eventdata, handles)
% hObject    handle to Star4PointsButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% clear canvas
ClearCanvas(hObject, eventdata, handles);
% stimulus type
handles.stimulus_type = 'shp';
% default points in coordinates
side_length = 4.3;
half_point_angle = pi/8;
handles.cur_shp_points = [...
    side_length*sin(half_point_angle)/2,...
    side_length*sin(half_point_angle)+(side_length/2)*cos(half_point_angle);...
    side_length*sin(half_point_angle),side_length*sin(half_point_angle);...
    side_length*sin(half_point_angle)+side_length*cos(half_point_angle),0;...
    side_length*sin(half_point_angle),-side_length*sin(half_point_angle);...
    0,-(side_length*sin(half_point_angle)+side_length*cos(half_point_angle));...
    -side_length*sin(half_point_angle),-side_length*sin(half_point_angle);...
    -(side_length*sin(half_point_angle)+side_length*cos(half_point_angle)),0;....
    -side_length*sin(half_point_angle),side_length*sin(half_point_angle);...
    0,side_length*sin(half_point_angle)+side_length*cos(half_point_angle);...
    side_length*sin(half_point_angle)/2,...
    side_length*sin(half_point_angle)+(side_length/2)*cos(half_point_angle)];
handles.default_shp_points = handles.cur_shp_points;
handles.cur_shp_points = rotateCoordFunc(handles.cur_shp_points,...
    handles.cur_stimulus_total_RotAngle);
handles.cur_shp_points = expandCoordFunc(handles.cur_shp_points,...
    handles.cur_shp_expand_multi);
handles.cur_shp_points = moveCoordFunc(handles.cur_shp_points,...
    handles.cur_hori_move_dist,handles.cur_verti_move_dist);
handles.prompt_msg_line = '>>>> Draw a 4-point star ...';
handles.shp = draw_shp(hObject,eventdata,handles);
guidata(hObject,handles);
update_prompt_msg(hObject, eventdata, handles);


% --- Executes on button press in TrapeziumButton.
function TrapeziumButton_Callback(hObject, eventdata, handles)
% hObject    handle to TrapeziumButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% clear canvas
ClearCanvas(hObject, eventdata, handles);
% stimulus type
handles.stimulus_type = 'shp';
% default points in coordinates
up_side_length = 5.5;
half_height = up_side_length*0.6;
handles.cur_shp_points = [...
    0,half_height;...
    up_side_length/2,half_height;...
    2*half_height*tan(pi/6)+up_side_length/2,-half_height;...
    -2*half_height*tan(pi/6)-up_side_length/2,-half_height;...
    -up_side_length/2,half_height;...
    0,half_height];
handles.default_shp_points = handles.cur_shp_points;
handles.cur_shp_points = rotateCoordFunc(handles.cur_shp_points,...
    handles.cur_stimulus_total_RotAngle);
handles.cur_shp_points = expandCoordFunc(handles.cur_shp_points,...
    handles.cur_shp_expand_multi);
handles.cur_shp_points = moveCoordFunc(handles.cur_shp_points,...
    handles.cur_hori_move_dist,handles.cur_verti_move_dist);
handles.prompt_msg_line = '>>>> Draw a trapezium ...';
handles.shp = draw_shp(hObject,eventdata,handles);
guidata(hObject,handles);
update_prompt_msg(hObject, eventdata, handles);

% --- Executes on button press in Star5PointsButton.
function Star5PointsButton_Callback(hObject, eventdata, handles)
% hObject    handle to Star5PointsButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% clear canvas
ClearCanvas(hObject, eventdata, handles);
% stimulus type
handles.stimulus_type = 'shp';
% default points in coordinates
angle = 36*pi/180;
inner_pentagon_side = 3;
star_side = inner_pentagon_side/2/sin(angle/2);
move_higher = inner_pentagon_side*cos(36*pi/180);
handles.cur_shp_points = [...
    (star_side/2)*sin(angle/2),(star_side/2)*cos(angle/2);...
    inner_pentagon_side/2,0;...
    inner_pentagon_side/2+star_side,0;...
    inner_pentagon_side/2+inner_pentagon_side*sin(angle/2),...
    -inner_pentagon_side*cos(angle/2);...
    (star_side*2+inner_pentagon_side)*cos(angle)-...
    (star_side+ inner_pentagon_side/2),...
    -(star_side*2+inner_pentagon_side)*sin(angle);...
    0,-(inner_pentagon_side+star_side)*sin(angle);...% middle 
    -((star_side*2+inner_pentagon_side)*cos(angle)-...
    (star_side+ inner_pentagon_side/2)),...
    -(star_side*2+inner_pentagon_side)*sin(angle);...
    -(inner_pentagon_side/2+inner_pentagon_side*sin(angle/2)),...
    -inner_pentagon_side*cos(angle/2);...
    -(inner_pentagon_side/2+star_side),0;...
    -(inner_pentagon_side/2),0;...
    0,star_side*cos(angle/2);...
    (star_side/2)*sin(angle/2),(star_side/2)*cos(angle/2)...
    ];
handles.cur_shp_points(:,2) = handles.cur_shp_points(:,2) + move_higher;
handles.default_shp_points = handles.cur_shp_points;
handles.cur_shp_points = rotateCoordFunc(handles.cur_shp_points,...
    handles.cur_stimulus_total_RotAngle);
handles.cur_shp_points = expandCoordFunc(handles.cur_shp_points,...
    handles.cur_shp_expand_multi);
handles.cur_shp_points = moveCoordFunc(handles.cur_shp_points,...
    handles.cur_hori_move_dist,handles.cur_verti_move_dist);
handles.prompt_msg_line = '>>>> Draw a 5-point star ...';
handles.shp = draw_shp(hObject,eventdata,handles);
guidata(hObject,handles);
update_prompt_msg(hObject, eventdata, handles);

% --- Executes on button press in Star6PointsButton.
function Star6PointsButton_Callback(hObject, eventdata, handles)
% hObject    handle to Star6PointsButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% clear canvas
ClearCanvas(hObject, eventdata, handles);
% stimulus type
handles.stimulus_type = 'shp';
% default points in coordinates
r1 = 6;
% t = linspace(pi/2-36*pi/180,2*pi+54*pi/180,6);
t = linspace(0,2*pi,7);
k=t(1:length(t)-1);
x1 = sin(k)'.*r1;
y1 = cos(k)'.*r1;
temp1 = [x1,y1];
r2 = (r1/2)/cos(pi/6);
x2 = sin(k)'.*r2;
y2 = cos(k)'.*r2;
cur_shp_points = [x2,y2];
cur_stimulus_RotAngle = -30;
temp_inner_hexagon_points = rotateCoordFunc(cur_shp_points,cur_stimulus_RotAngle);
temp2 = temp_inner_hexagon_points;
handles.cur_shp_points = zeros(12,2);
for i = 1:2:11
    handles.cur_shp_points(i,1:2) = temp1(ceil(i/2),:);
    handles.cur_shp_points(i+1,1:2) = temp2(ceil(i/2),:);
end
temp3 = handles.cur_shp_points(3:end,:);
temp4 = handles.cur_shp_points(1:2,:);
ini_point = [2*r2*sin(pi/6),r2*cos(pi/6)];
handles.cur_shp_points = [ini_point;temp3;temp4;ini_point];
handles.default_shp_points = handles.cur_shp_points;
handles.cur_shp_points = rotateCoordFunc(handles.cur_shp_points,...
    handles.cur_stimulus_total_RotAngle);
handles.cur_shp_points = expandCoordFunc(handles.cur_shp_points,...
    handles.cur_shp_expand_multi);
handles.cur_shp_points = moveCoordFunc(handles.cur_shp_points,...
    handles.cur_hori_move_dist,handles.cur_verti_move_dist);
handles.prompt_msg_line = '>>>> Draw a 6-point star ...';
handles.shp = draw_shp(hObject,eventdata,handles);
guidata(hObject,handles);
update_prompt_msg(hObject, eventdata, handles);


% --- Executes on button press in ArrowButton.
function ArrowButton_Callback(hObject, eventdata, handles)
% hObject    handle to ArrowButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% clear canvas
ClearCanvas(hObject, eventdata, handles);
% stimulus type
handles.stimulus_type = 'shp';
% default points in coordinates
bottom_side = 5;
right_side = bottom_side * 1.3;
middle_width = bottom_side * 2;
top_angle = (70*pi/180);
handles.cur_shp_points = [...
    0,-right_side;...
    bottom_side/2,-right_side;...
    bottom_side/2,0;...
    middle_width/2,0;...
    0,middle_width/2/tan(top_angle/2);...
    -middle_width/2,0;...
    -bottom_side/2,0;...
    -bottom_side/2,-right_side;...
    0,-right_side];
handles.default_shp_points = handles.cur_shp_points;
handles.cur_shp_points = rotateCoordFunc(handles.cur_shp_points,...
    handles.cur_stimulus_total_RotAngle);
handles.cur_shp_points = expandCoordFunc(handles.cur_shp_points,...
    handles.cur_shp_expand_multi);
handles.cur_shp_points = moveCoordFunc(handles.cur_shp_points,...
    handles.cur_hori_move_dist,handles.cur_verti_move_dist);
handles.prompt_msg_line = '>>>> Draw a arrow like shape ...';
handles.shp = draw_shp(hObject,eventdata,handles);
guidata(hObject,handles);
update_prompt_msg(hObject, eventdata, handles);

% --- Executes on button press in DoubleArrowButton.
function DoubleArrowButton_Callback(hObject, eventdata, handles)
% hObject    handle to DoubleArrowButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% clear canvas
ClearCanvas(hObject, eventdata, handles);
% stimulus type
handles.stimulus_type = 'shp';
% default points in coordinates
half_min_height = 2.0;
half_max_height = half_min_height*2.1;
half_middle_width = half_min_height * 2.0;
half_width = half_middle_width * 2.2;
handles.cur_shp_points = [...
    0,half_min_height;...
    half_middle_width,half_min_height;...
    half_middle_width,half_max_height;...
    half_width,0;...
    half_middle_width,-half_max_height;...
    half_middle_width,-half_min_height;...
    -half_middle_width,-half_min_height;...
    -half_middle_width,-half_max_height;
    -half_width,0;...
    -half_middle_width,half_max_height;...
    -half_middle_width,half_min_height;...
    0,half_min_height];
handles.default_shp_points = handles.cur_shp_points;
handles.cur_shp_points = rotateCoordFunc(handles.cur_shp_points,...
    handles.cur_stimulus_total_RotAngle);
handles.cur_shp_points = expandCoordFunc(handles.cur_shp_points,...
    handles.cur_shp_expand_multi);
handles.cur_shp_points = moveCoordFunc(handles.cur_shp_points,...
    handles.cur_hori_move_dist,handles.cur_verti_move_dist);
handles.prompt_msg_line = '>>>> Draw a double-arrow like shape ...';
handles.shp = draw_shp(hObject,eventdata,handles);
guidata(hObject,handles);
update_prompt_msg(hObject, eventdata, handles);

% --- Executes on button press in SquareButton.
function SquareButton_Callback(hObject, eventdata, handles)
% hObject    handle to SquareButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% clear canvas
ClearCanvas(hObject, eventdata, handles);
% stimulus type
handles.stimulus_type = 'shp';
% default points in coordinates
handles.cur_shp_points = [...
    0,3.5*sqrt(2);...
    3.5*sqrt(2),3.5*sqrt(2);...
    3.5*sqrt(2),-3.5*sqrt(2);...
    -3.5*sqrt(2),-3.5*sqrt(2);...
    -3.5*sqrt(2),3.5*sqrt(2);...
    0,3.5*sqrt(2)];
handles.default_shp_points = handles.cur_shp_points;
handles.cur_shp_points = rotateCoordFunc(handles.cur_shp_points,...
    handles.cur_stimulus_total_RotAngle);
handles.cur_shp_points = expandCoordFunc(handles.cur_shp_points,...
    handles.cur_shp_expand_multi);
handles.cur_shp_points = moveCoordFunc(handles.cur_shp_points,...
    handles.cur_hori_move_dist,handles.cur_verti_move_dist);
handles.prompt_msg_line = '>>>> Draw a square ...';
handles.shp = draw_shp(hObject,eventdata,handles);
guidata(hObject,handles);
update_prompt_msg(hObject, eventdata, handles);

% --- Executes on button press in RectButton.
function RectButton_Callback(hObject, eventdata, handles)
% hObject    handle to RectButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% clear canvas
ClearCanvas(hObject, eventdata, handles);
% stimulus type
handles.stimulus_type = 'shp';
% default points in coordinates
handles.cur_shp_points = [...
    0, 8/2;...
    8/0.618/2,8/2;...
    8/0.618/2,-8/2;...
    -8/0.618/2,-8/2;...
    -8/0.618/2,8/2;
    0, 8/2];
handles.default_shp_points = handles.cur_shp_points;
handles.cur_shp_points = rotateCoordFunc(handles.cur_shp_points,...
    handles.cur_stimulus_total_RotAngle);
handles.cur_shp_points = expandCoordFunc(handles.cur_shp_points,...
    handles.cur_shp_expand_multi);
handles.cur_shp_points = moveCoordFunc(handles.cur_shp_points,...
    handles.cur_hori_move_dist,handles.cur_verti_move_dist);
handles.prompt_msg_line = '>>>> Draw a rectangle ...';
handles.shp = draw_shp(hObject,eventdata,handles);
guidata(hObject,handles);
update_prompt_msg(hObject, eventdata, handles);

% --- Executes on button press in DiaboloButton.
function DiaboloButton_Callback(hObject, eventdata, handles)
% hObject    handle to DiaboloButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% clear canvas
ClearCanvas(hObject, eventdata, handles);
% stimulus type
handles.stimulus_type = 'shp';
% default points in coordinates
half_right_side_length = 4.5;
handles.cur_shp_points = [...
    0.618*2*half_right_side_length,0;...
    0.618*2*half_right_side_length,-half_right_side_length;...
    0,-half_right_side_length*0.618;...
    -0.618*2*half_right_side_length,-half_right_side_length;...
    -0.618*2*half_right_side_length,half_right_side_length;...
    0,half_right_side_length*0.618;...
    0.618*2*half_right_side_length,half_right_side_length;...
    0.618*2*half_right_side_length,0];
handles.default_shp_points = handles.cur_shp_points;
handles.cur_shp_points = rotateCoordFunc(handles.cur_shp_points,...
    handles.cur_stimulus_total_RotAngle);
handles.cur_shp_points = expandCoordFunc(handles.cur_shp_points,...
    handles.cur_shp_expand_multi);
handles.cur_shp_points = moveCoordFunc(handles.cur_shp_points,...
    handles.cur_hori_move_dist,handles.cur_verti_move_dist);
handles.prompt_msg_line = '>>>> Draw a diabolo like shape ...';
handles.shp = draw_shp(hObject,eventdata,handles);
guidata(hObject,handles);
update_prompt_msg(hObject, eventdata, handles);

% --- Executes on button press in HButton.
function HButton_Callback(hObject, eventdata, handles)
% hObject    handle to HButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% clear canvas
ClearCanvas(hObject, eventdata, handles);
% stimulus type
handles.stimulus_type = 'shp';
% default points in coordinates
right_side_length = 9;
top_side_length = 11;
shortest_length = 3.5;
handles.cur_shp_points = [...
    top_side_length/2,0;...
    top_side_length/2,-right_side_length/2;...
    top_side_length/6,-right_side_length/2;...
    top_side_length/6,-shortest_length/2;...
    -top_side_length/6,-shortest_length/2;...
    -top_side_length/6,-right_side_length/2;...
    -top_side_length/2,-right_side_length/2;...
    -top_side_length/2,right_side_length/2;...
    -top_side_length/6,right_side_length/2;...
    -top_side_length/6,shortest_length/2;...
    top_side_length/6,shortest_length/2;...
    top_side_length/6,right_side_length/2;...
    top_side_length/2,right_side_length/2;...
    top_side_length/2,0;...
    ];
handles.default_shp_points = handles.cur_shp_points;
handles.cur_shp_points = rotateCoordFunc(handles.cur_shp_points,...
    handles.cur_stimulus_total_RotAngle);
handles.cur_shp_points = expandCoordFunc(handles.cur_shp_points,...
    handles.cur_shp_expand_multi);
handles.cur_shp_points = moveCoordFunc(handles.cur_shp_points,...
    handles.cur_hori_move_dist,handles.cur_verti_move_dist);
handles.prompt_msg_line = '>>>> Draw a H like shape ...';
handles.shp = draw_shp(hObject,eventdata,handles);
guidata(hObject,handles);
update_prompt_msg(hObject, eventdata, handles);

% --- Executes on button press in PentagonButton.
function PentagonButton_Callback(hObject, eventdata, handles)
% hObject    handle to PentagonButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% clear canvas
ClearCanvas(hObject, eventdata, handles);
% stimulus type
handles.stimulus_type = 'shp';
% default points in coordinates
r = 6.2;
% t = linspace(pi/2-36*pi/180,2*pi+54*pi/180,6);
t = linspace(0,2*pi,6);
k=t(1:length(t)-1);
x = sin(k)'.*r;
y = cos(k)'.*r;
ini_point =[r*cos(36*pi/180)*sin(36*pi/180),...
    r*cos(36*pi/180)*cos(36*pi/180)];
handles.cur_shp_points = [ini_point;x(2:end),y(2:end);x(1),y(1);ini_point];
handles.cur_shp_points = [handles.cur_shp_points];
handles.default_shp_points = handles.cur_shp_points;
handles.cur_shp_points = rotateCoordFunc(handles.cur_shp_points,...
    handles.cur_stimulus_total_RotAngle);
handles.cur_shp_points = expandCoordFunc(handles.cur_shp_points,...
    handles.cur_shp_expand_multi);
handles.cur_shp_points = moveCoordFunc(handles.cur_shp_points,...
    handles.cur_hori_move_dist,handles.cur_verti_move_dist);
handles.prompt_msg_line = '>>>> Draw a pantagon ...';
handles.shp = draw_shp(hObject,eventdata,handles);
guidata(hObject,handles);
update_prompt_msg(hObject, eventdata, handles);

% --- Executes on button press in HexagonButton.
function HexagonButton_Callback(hObject, eventdata, handles)
% hObject    handle to HexagonButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% clear canvas
ClearCanvas(hObject, eventdata, handles);
% stimulus type
handles.stimulus_type = 'shp';
% default points in coordinates
r = 6;
% t = linspace(pi/2-36*pi/180,2*pi+54*pi/180,6);
t = linspace(0,2*pi,7);
k=t(1:length(t)-1);
x = sin(k)'.*r;
y = cos(k)'.*r;
ini_point =[r*cos(pi/6)*sin(pi/6),r*cos(pi/6)*cos(pi/6)];
handles.cur_shp_points = [ini_point;x(2:end),y(2:end);x(1),y(1);ini_point];
cur_stimulus_RotAngle = -30;
handles.cur_shp_points = rotateCoordFunc(handles.cur_shp_points,cur_stimulus_RotAngle);
handles.default_shp_points = handles.cur_shp_points;
handles.cur_shp_points = rotateCoordFunc(handles.cur_shp_points,...
    handles.cur_stimulus_total_RotAngle);
handles.cur_shp_points = expandCoordFunc(handles.cur_shp_points,...
    handles.cur_shp_expand_multi);
handles.cur_shp_points = moveCoordFunc(handles.cur_shp_points,...
    handles.cur_hori_move_dist,handles.cur_verti_move_dist);
handles.prompt_msg_line = '>>>> Draw a hexagon ...';
handles.shp = draw_shp(hObject,eventdata,handles);
guidata(hObject,handles);
update_prompt_msg(hObject, eventdata, handles);

% --- Executes on button press in ShieldButton.
function ShieldButton_Callback(hObject, eventdata, handles)
% hObject    handle to ShieldButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% clear canvas
ClearCanvas(hObject, eventdata, handles);
% stimulus type
handles.stimulus_type = 'shp';
% default points in coordinates
up_side_length = 8;
right_side_length = 7;
botton_angle = pi/4.5;
move_higher = 1.5;
handles.cur_shp_points = [...
    0,right_side_length/2;...
    up_side_length/2,right_side_length/2;...
    up_side_length/2,-right_side_length/2;...
    0,-(right_side_length/2+ up_side_length/2 * cos(botton_angle/2));...
    -up_side_length/2,-right_side_length/2;...
    -up_side_length/2,right_side_length/2;...
    0,right_side_length/2];
handles.cur_shp_points(:,2) = handles.cur_shp_points(:,2) + move_higher;
handles.default_shp_points = handles.cur_shp_points;
handles.cur_shp_points = rotateCoordFunc(handles.cur_shp_points,...
    handles.cur_stimulus_total_RotAngle);
handles.cur_shp_points = expandCoordFunc(handles.cur_shp_points,...
    handles.cur_shp_expand_multi);
handles.cur_shp_points = moveCoordFunc(handles.cur_shp_points,...
    handles.cur_hori_move_dist,handles.cur_verti_move_dist);
handles.prompt_msg_line = '>>>> Draw a shield like shape ...';
handles.shp = draw_shp(hObject,eventdata,handles);
guidata(hObject,handles);
update_prompt_msg(hObject, eventdata, handles);

% --- Executes on button press in CrossButton.
function CrossButton_Callback(hObject, eventdata, handles)
% hObject    handle to CrossButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% clear canvas
ClearCanvas(hObject, eventdata, handles);
% stimulus type
handles.stimulus_type = 'shp';
% default points in coordinates
side = 4;
handles.cur_shp_points = [...
    side/2,3/2*side;...
    side/2,side/2;...
    3/2*side,side/2;...
    3/2*side,-side/2;...
    side/2,-side/2;...
    side/2,-3/2*side;...
    -side/2,-3/2*side;...
    -side/2,-side/2;...
    -3/2*side,-side/2;...
    -3/2*side,side/2;...
    -side/2,side/2;...
    -side/2,side*3/2];
handles.default_shp_points = handles.cur_shp_points;
handles.cur_shp_points = rotateCoordFunc(handles.cur_shp_points,...
    handles.cur_stimulus_total_RotAngle);
handles.cur_shp_points = expandCoordFunc(handles.cur_shp_points,...
    handles.cur_shp_expand_multi);
handles.cur_shp_points = moveCoordFunc(handles.cur_shp_points,...
    handles.cur_hori_move_dist,handles.cur_verti_move_dist);
handles.prompt_msg_line = '>>>> Draw a cross ...';
handles.shp = draw_shp(hObject,eventdata,handles);
guidata(hObject,handles);
update_prompt_msg(hObject, eventdata, handles);

% --- Executes on button press in SaveButton.
function SaveButton_Callback(hObject, eventdata, handles)
% hObject    handle to SaveButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
temp_file_name = handles.FileNameEdit.String;
handles.cur_saving_fname = [handles.cur_path_str,'\',temp_file_name];
F = getframe(handles.plot_area);
handles.prompt_msg_line = ['>>>> Saving image: ',...
    temp_file_name];
guidata(hObject,handles);
update_prompt_msg(hObject, eventdata, handles);
try
    if strcmp(temp_file_name(end-3:end),'.bmp') || ...
            strcmp(temp_file_name(end-3:end),'.png') || ...
            strcmp(temp_file_name(end-3:end),'.jpg')
        imwrite(F.cdata, handles.cur_saving_fname);
        pause(0.3);
        handles.prompt_msg_line = '>>>> Image is saved successfully ...';
        guidata(hObject,handles);
        update_prompt_msg(hObject, eventdata, handles);
    elseif strcmp(temp_file_name(end-3:end),'.fig') || ...
            strcmp(temp_file_name(end-3:end),'.svg')
        saving_figure = figure;
        set(saving_figure,'Name','Image Preview')
        set(saving_figure,'Units','Normalized')
        set(saving_figure,'Position',[0.2 0.2 0.6 0.7]);
        copyobj(handles.plot_area, saving_figure);
        saveas(saving_figure, handles.cur_saving_fname);
        pause(0.3);
        handles.prompt_msg_line = '>>>> Image is saved successfully ...';
        guidata(hObject,handles);
        update_prompt_msg(hObject, eventdata, handles);
    end
catch ME
    handles.prompt_msg_line = '>>>> Error: cannot save the file ...';
    guidata(hObject,handles);
    update_prompt_msg(hObject, eventdata, handles);
    handles.prompt_msg_line = ['>>>> ',ME.message];
    guidata(hObject,handles);
    update_prompt_msg(hObject, eventdata, handles);
    pause(0.3);
    handles.prompt_msg_line = '>>>> Please retry ...';
    guidata(hObject,handles);
    update_prompt_msg(hObject, eventdata, handles);
end

% --- Executes on button press in Plot.
function Plot_Callback(hObject, eventdata, handles)
% hObject    handle to Plot (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% clear canvas
ClearCanvas(hObject, eventdata, handles);
% get input text
if isempty(handles.inputtext)
    plot_text = handles.InputTextEdit.String;
else
    plot_text = handles.inputtext;
end
% set stimulus type 
handles.stimulus_type = 'text';
% draw the text in the plot_area
handles.text_handle = text(handles.plot_area,'String',plot_text,...
    'Position',[handles.cur_stimulus_hori_pos*20 + (-10), handles.cur_stimulus_verti_pos*20+(-10)]);
guidata(hObject, handles);
set(handles.text_handle,...
    'FontName', 'Arial',...
    'FontSize', handles.cur_stimulus_fontsize,...
    'FontAngle',handles.cur_stimulus_fontangle,...
    'FontWeight', handles.cur_stimulus_fontweight,...
    'Color',handles.cur_stimulus_stroke_color,...
    'Rotation',handles.cur_stimulus_RotAngle,...
    'HorizontalAlignment', 'center',...
    'VerticalAlignment', 'middle');
handles.prompt_msg_line = ['>>>> Draw input text "',plot_text, '" in the plot_area',' ...'];
set(handles.SizeEdit,'String',num2str(handles.cur_stimulus_fontsize));
set(handles.SizeSlider,'Value',...
    handles.cur_stimulus_fontsize/handles.max_fontsize_value)
guidata(hObject, handles);
update_prompt_msg(hObject, eventdata, handles);



function CurrentPathEditBar_Callback(hObject, eventdata, handles)
% hObject    handle to CurrentPathEditBar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of CurrentPathEditBar as text
%        str2double(get(hObject,'String')) returns contents of CurrentPathEditBar as a double
handles.cur_path_str = handles.CurrentPathEditBar.String;
    

% --- Executes during object creation, after setting all properties.
function CurrentPathEditBar_CreateFcn(hObject, eventdata, handles)
% hObject    handle to CurrentPathEditBar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in StrokeColorButton.
function StrokeColorButton_Callback(hObject, eventdata, handles)
% hObject    handle to StrokeColorButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.cur_stimulus_stroke_color = ...
                uisetcolor(handles.default_stimulus_stroke_color);
set(handles.StrokeColorDisplay,'BackgroundColor',...
    handles.cur_stimulus_stroke_color);
guidata(hObject,handles);
switch handles.stimulus_type
    case '0'
         handles.prompt_msg_line = '>>>> Change predetermined stroke color ...';
         guidata(hObject,handles);
         update_prompt_msg(hObject, eventdata, handles);
    case 'text'
        try
            Plot_Callback(hObject, eventdata, handles);
            % set(handles.text_handle,'Color',handles.cur_stimulus_stroke_color);
            handles.prompt_msg_line = ['>>>> Stroke color is changed to (',...
                num2str(handles.cur_stimulus_stroke_color(1).*255), ', ', ...
                num2str(handles.cur_stimulus_stroke_color(2).*255), ', ', ...
                num2str(handles.cur_stimulus_stroke_color(3).*255),') ...'];
            guidata(hObject,handles);
            update_prompt_msg(hObject, eventdata, handles);
        catch ME
            ME;
            handles.prompt_msg_line = ...
                ['>>>> Error: cannot change text stimulus stroke color.',...
                'There may be no stimulus on the convas.'];
            guidata(hObject,handles);
            update_prompt_msg(hObject, eventdata, handles);
        end
    case 'shp'
        handles.prompt_msg_line = ['>>>> Shape edge color is changed to (',...
            num2str(handles.cur_stimulus_stroke_color(1).*255), ', ', ...
            num2str(handles.cur_stimulus_stroke_color(2).*255), ', ', ...
            num2str(handles.cur_stimulus_stroke_color(3).*255),') ...'];
        guidata(hObject,handles);
        handles.shp = draw_shp(hObject,eventdata,handles);
        update_prompt_msg(hObject, eventdata, handles);
            
end

% --- Executes on button press in pushbutton42.
function pushbutton42_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton42 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double
switch handles.stimulus_type
    case 'text'
end
    

% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton53.
function pushbutton53_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton53 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton54.
function pushbutton54_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton54 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function PlotAreaWidthEdit_Callback(hObject, eventdata, handles)
% hObject    handle to PlotAreaWidthEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of PlotAreaWidthEdit as text
%        str2double(get(hObject,'String')) returns contents of PlotAreaWidthEdit as a double
if str2double(handles.PlotAreaWidthEdit.String) >= 0 && ...
        str2double(handles.PlotAreaWidthEdit.String) <= 500
    handles.prompt_msg_line = '>>>> Resize plot_area width ...';
    guidata(hObject, handles);
    update_prompt_msg(hObject, eventdata, handles);
    set_plot_area_size(hObject, eventdata, handles);
else
    handles.prompt_msg_line = '>>>> Error: the plot_area width value should be in [0 500]';
    guidata(hObject, handles);
    update_prompt_msg(hObject, eventdata, handles);
end

% --- Executes during object creation, after setting all properties.
function PlotAreaWidthEdit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to PlotAreaWidthEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit8_Callback(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit8 as text
%        str2double(get(hObject,'String')) returns contents of edit8 as a double


% --- Executes during object creation, after setting all properties.
function edit8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function PlotAreaHeightEdit_Callback(hObject, eventdata, handles)
% hObject    handle to PlotAreaHeightEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of PlotAreaHeightEdit as text
%        str2double(get(hObject,'String')) returns contents of PlotAreaHeightEdit as a double
if str2double(handles.PlotAreaHeightEdit.String) >= 0 && ...
        str2double(handles.PlotAreaHeightEdit.String) <= 500
    handles.prompt_msg_line = '>>>> Resize plot_area height ...';
    guidata(hObject, handles);
    update_prompt_msg(hObject, eventdata, handles);
    set_plot_area_size(hObject, eventdata, handles);
else
    handles.prompt_msg_line = '>>>> Error: the plot_area height value should be in [0 500]';
    guidata(hObject, handles);
    update_prompt_msg(hObject, eventdata, handles);
end

% --- Executes during object creation, after setting all properties.
function PlotAreaHeightEdit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to PlotAreaHeightEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function SizeSlider_Callback(hObject, eventdata, handles)
% hObject    handle to SizeSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
switch handles.stimulus_type
    case '0'
        set(handles.SizeSlider,'Value',0.5);
        handles.prompt_msg_line = '>>>> Please draw a stimulus firstly ...';
        guidata(hObject,handles);
        update_prompt_msg(hObject, eventdata, handles);
    case 'text'
        change_inputtext_fontsize(hObject, eventdata, handles);
    case 'shp'
        handles.cur_shp_expand_multi = handles.SizeSlider.Value * 2;
        handles.cur_shp_points = handles.default_shp_points;
        handles.cur_shp_points = rotateCoordFunc(handles.cur_shp_points,...
            handles.cur_stimulus_total_RotAngle); 
        handles.cur_shp_points = expandCoordFunc(handles.cur_shp_points,...
            handles.cur_shp_expand_multi);
        handles.cur_shp_points = moveCoordFunc(handles.cur_shp_points,...
            handles.cur_hori_move_dist,handles.cur_verti_move_dist);
        SizeEdit = handles.SizeSlider.Value * handles.max_fontsize_value;
        set(handles.SizeEdit,'String',SizeEdit);
         handles.prompt_msg_line = ['>>>> Changing the shape size to ',...
             num2str(SizeEdit),' ...'];
        guidata(hObject,handles);
        handles.shp = draw_shp(hObject,eventdata,handles);
        update_prompt_msg(hObject, eventdata, handles);
end

    
    
    

% --- Executes during object creation, after setting all properties.
function SizeSlider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SizeSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function SizeEdit_Callback(hObject, eventdata, handles)
% hObject    handle to SizeEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SizeEdit as text
%        str2double(get(hObject,'String')) returns contents of SizeEdit as a double
switch handles.stimulus_type
    case '0'
        set(handles.SizeSlider,'Value',0.5);
        set(handles.SizeEdit,'String','200');
        handles.prompt_msg_line = '>>>> Please draw a stimulus firstly ...';
        guidata(hObject,handles);
        update_prompt_msg(hObject, eventdata, handles);
    case 'text'
        handles.cur_stimulus_fontsize = str2double(handles.SizeEdit.String);
        if handles.cur_stimulus_fontsize <= handles.max_fontsize_value && ...
                handles.cur_stimulus_fontsize > 0
            handles.size_slider_value = handles.cur_stimulus_fontsize/handles.max_fontsize_value;
            handles.prompt_msg_line = ['>>>> Change input text fontsize to ',...
                num2str(handles.size_slider_value),' ...'];
            guidata(hObject,handles);
            set(handles.SizeSlider, 'Value', handles.size_slider_value);
            change_inputtext_fontsize(hObject, eventdata, handles);
            update_prompt_msg(hObject, eventdata, handles);
        else
            handles.prompt_msg_line = ['>>>> Error: cannot change fontsize, '...
                'the fonsize should be in [0, ',...
                num2str(handles.max_fontsize_value),'] ...'];
            guidata(hObject,handles);
            update_prompt_msg(hObject, eventdata, handles);
        end
    case 'shp'
        if str2double(handles.SizeEdit.String) > 0 && ...
            str2double(handles.SizeEdit.String) <= handles.max_fontsize_value
            SizeSliderValue = str2double(handles.SizeEdit.String)/...
            handles.max_fontsize_value;
            set(handles.SizeSlider,'Value',SizeSliderValue);
            guidata(hObject,handles);
            SizeSlider_Callback(hObject, eventdata, handles)
        else
            handles.prompt_msg_line = ['>>>> Error: cannot change fontsize, '...
                'the fonsize should be in (0, ',...
                num2str(handles.max_fontsize_value),'] ...'];
            guidata(hObject,handles);
            update_prompt_msg(hObject, eventdata, handles);
        end
        
        
end

% --- Executes during object creation, after setting all properties.
function SizeEdit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SizeEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in ChangePathButton.
function ChangePathButton_Callback(hObject, eventdata, handles)
% hObject    handle to ChangePathButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% uigetdir dialog window
handles.cur_path_str = uigetdir(handles.cur_path_str,'Choose a path:');
set(handles.CurrentPathEditBar,'String',handles.cur_path_str);
handles.prompt_msg_line = ['>>>> Current path is changed to ',...
    handles.cur_path_str,' ...'];
update_prompt_msg(hObject, eventdata, handles);


% --- Executes on button press in SakuraButton.
function SakuraButton_Callback(hObject, eventdata, handles)
% hObject    handle to SakuraButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% clear canvas
ClearCanvas(hObject, eventdata, handles);
% stimulus type
handles.stimulus_type = 'shp';
% default points in coordinates
inner_pentagon_side = 5.4;
inner_pentagon_r = (inner_pentagon_side/2) / sin(36*pi/180);
% t = linspace(pi/2-36*pi/180,2*pi+54*pi/180,6);
mid_upper_center = [0,inner_pentagon_r];
r = inner_pentagon_side/2;
t1 = -36*pi/180:pi/500:pi+36*pi/180;
x1 = r*cos(t1)';
y1 = r*sin(t1)';
for i = 1:length(x1)
    x1(i) = x1(i)+mid_upper_center(1);
    y1(i) = y1(i)+mid_upper_center(2);
end
left_upper_center = [-inner_pentagon_r*cos(18*pi/180),...
    inner_pentagon_r*sin(18*pi/180)];
t2 = 36*pi/180:pi/500:2*pi-72*pi/180;
x2 = r*cos(t2)';
y2 = r*sin(t2)';
for i = 1:length(x2)
    x2(i) = x2(i)+left_upper_center(1);
    y2(i) = y2(i)+left_upper_center(2);
end
left_lower_center = [-inner_pentagon_r*cos(54*pi/180),...
    -inner_pentagon_r*sin(54*pi/180)];
t3 = 108*pi/180:pi/500:2*pi;
x3 = r*cos(t3)';
y3 = r*sin(t3)';
for i = 1:length(x3)
    x3(i) = x3(i)+left_lower_center(1);
    y3(i) = y3(i)+left_lower_center(2);
end
right_lower_center = [inner_pentagon_r*cos(54*pi/180),...
    -inner_pentagon_r*sin(54*pi/180)];
t4 = pi:pi/500:2*pi+72*pi/180;
x4 = r*cos(t4)';
y4 = r*sin(t4)';
for i = 1:length(x4)
    x4(i) = x4(i)+right_lower_center(1);
    y4(i) = y4(i)+right_lower_center(2);
end
right_upper_center = [inner_pentagon_r*cos(18*pi/180),...
    inner_pentagon_r*sin(18*pi/180)];
t5 = (-pi/2-8*pi/180):pi/500:(pi/2+54*pi/180);
x5 = r*cos(t5)';
y5 = r*sin(t5)';
for i = 1:length(x5)
   x5(i) = x5(i)+right_upper_center(1);
    y5(i) = y5(i)+right_upper_center(2);
end
handles.cur_shp_points = [x1,y1;x2,y2;x3,y3;x4,y4;x5,y5];
handles.default_shp_points = handles.cur_shp_points;
handles.cur_shp_points = rotateCoordFunc(handles.cur_shp_points,...
    handles.cur_stimulus_total_RotAngle);
handles.cur_shp_points = expandCoordFunc(handles.cur_shp_points,...
    handles.cur_shp_expand_multi);
handles.cur_shp_points = moveCoordFunc(handles.cur_shp_points,...
    handles.cur_hori_move_dist,handles.cur_verti_move_dist);
handles.prompt_msg_line = '>>>> Draw a sakura ...';
handles.shp = draw_shp(hObject,eventdata,handles);
guidata(hObject,handles);
update_prompt_msg(hObject, eventdata, handles);

% --- Executes on button press in IrregularShape1Button.
function IrregularShape1Button_Callback(hObject, eventdata, handles)
% hObject    handle to IrregularShape1Button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% clear canvas
ClearCanvas(hObject, eventdata, handles);
% stimulus type
handles.stimulus_type = 'shp';
% default points in coordinates
r = 2.0;
ind = 0.2;
right_center = [r*1.8,0];
t1 = pi/2:pi/1000:3/2*pi;
x1 = r*cos(t1)';
y1 = r*sin(t1)';
middle_point_1 = length(x1)/2;
for i = 1:length(x1)
    x1(i) = x1(i) + right_center(1);
    y_multi = -abs(i- middle_point_1).^ind;
    y1(i) = y1(i)*y_multi;
end
x2 = -1.*x1;
y2 = y1;
ini_point = [0,y2(1)];
handles.cur_shp_points = [ini_point;x1,y1;(fliplr(x2'))',(fliplr(y2'))';ini_point];
handles.default_shp_points = handles.cur_shp_points;
handles.cur_shp_points = rotateCoordFunc(handles.cur_shp_points,...
    handles.cur_stimulus_total_RotAngle);
handles.cur_shp_points = expandCoordFunc(handles.cur_shp_points,...
    handles.cur_shp_expand_multi);
handles.cur_shp_points = moveCoordFunc(handles.cur_shp_points,...
    handles.cur_hori_move_dist,handles.cur_verti_move_dist);
handles.prompt_msg_line = '>>>> Draw a irregular shape ...';
handles.shp = draw_shp(hObject,eventdata,handles);
guidata(hObject,handles);
update_prompt_msg(hObject, eventdata, handles);

% --- Executes on button press in CurvedCrossButton.
function CurvedCrossButton_Callback(hObject, eventdata, handles)
% hObject    handle to CurvedCrossButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% clear canvas
ClearCanvas(hObject, eventdata, handles);
% stimulus type
handles.stimulus_type = 'shp';
% default points in coordinates
r = 3;
angle = 45;
right_upper_center = [sqrt(2)*r,sqrt(2)*r];
t1 = pi/2+angle*pi/180: pi/5000:2*pi-angle*pi/180;
x1 = r*cos(t1)';
y1 = r*sin(t1)';
for i = 1:length(x1)
    x1(i) = x1(i)+right_upper_center(1);
    y1(i) = y1(i)+right_upper_center(2);
end
right_lower_center = [sqrt(2)*r,-sqrt(2)*r];
t2 = angle*pi/180: pi/5000: pi + angle*pi/180;
x2 = r*cos(t2)';
y2 = r*sin(t2)';
for i = 1:length(x2)
    x2(i) = x2(i)+right_lower_center(1);
    y2(i) = y2(i)+right_lower_center(2);
end
left_lower_center = [-sqrt(2)*r,-sqrt(2)*r];
t3 = -angle*pi/180: pi/5000: pi/2 + angle*pi/180;
x3 = r*cos(t3)';
y3 = r*sin(t3)';
for i = 1:length(x3)
    x3(i) = x3(i)+left_lower_center(1);
    y3(i) = y3(i)+left_lower_center(2);
end
left_upper_center = [-sqrt(2)*r,sqrt(2)*r];
t4 = -pi/2-angle*pi/180 : pi/5000: angle*pi/180;
x4 = r*cos(t4)';
y4 = r*sin(t4)';
for i = 1:length(x4)
    x4(i) = x4(i)+left_upper_center(1);
    y4(i) = y4(i)+left_upper_center(2);
end
ini_point = [0,y1(1)];
handles.cur_shp_points = [ini_point;x1,y1;x2,y2;x3,y3;x4,y4;ini_point];
handles.default_shp_points = handles.cur_shp_points;
handles.cur_shp_points = rotateCoordFunc(handles.cur_shp_points,...
    handles.cur_stimulus_total_RotAngle);
handles.cur_shp_points = expandCoordFunc(handles.cur_shp_points,...
    handles.cur_shp_expand_multi);
handles.cur_shp_points = moveCoordFunc(handles.cur_shp_points,...
    handles.cur_hori_move_dist,handles.cur_verti_move_dist);
handles.prompt_msg_line = '>>>> Draw a curved cross ...';
handles.shp = draw_shp(hObject,eventdata,handles);
guidata(hObject,handles);
update_prompt_msg(hObject, eventdata, handles);

% --- Executes on button press in Rotate45Button.
function Rotate45Button_Callback(hObject, eventdata, handles)
% hObject    handle to Rotate45Button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of Rotate45Button
switch handles.stimulus_type
    case '0'
        handles.prompt_msg_line = '>>>> Please draw a stimulus firstly ...';
        guidata(hObject,handles);
        update_prompt_msg(hObject, eventdata, handles);
    case 'text'
        handles.cur_stimulus_RotAngle = ...
            handles.cur_stimulus_RotAngle - 15;
        handles.prompt_msg_line = '>>>> Rotate the stimulus 15бу clockwise ...';
        guidata(hObject,handles);
        Plot_Callback(hObject, eventdata, handles);
        update_prompt_msg(hObject, eventdata, handles);
    case 'shp'
        handles.cur_stimulus_RotAngle = -15;
        handles.cur_stimulus_total_RotAngle = ...
            handles.cur_stimulus_total_RotAngle + handles.cur_stimulus_RotAngle;               
        handles.cur_shp_points = handles.default_shp_points;
        handles.cur_shp_points = rotateCoordFunc(handles.cur_shp_points,...
            handles.cur_stimulus_total_RotAngle);
        handles.cur_shp_points = expandCoordFunc(handles.cur_shp_points,...
            handles.cur_shp_expand_multi);
        handles.cur_shp_points = moveCoordFunc(handles.cur_shp_points,...
            handles.cur_hori_move_dist,handles.cur_verti_move_dist);
        handles.prompt_msg_line = '>>>> Rotate the stimulus 15бу clockwise ...';
        guidata(hObject,handles);
        handles.shp = draw_shp(hObject, eventdata, handles);
        handles.cur_stimulus_RotAngle = 0;
        guidata(hObject,handles);
        update_prompt_msg(hObject, eventdata, handles);
end
        
        
        


function FileNameEdit_Callback(hObject, eventdata, handles)
% hObject    handle to FileNameEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of FileNameEdit as text
%        str2double(get(hObject,'String')) returns contents of FileNameEdit as a double
SaveButton_Callback(hObject, eventdata, handles);

% --- Executes during object creation, after setting all properties.
function FileNameEdit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FileNameEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function set_plot_area_size(hObject,eventdata, handles)
% set plot_area position by ImageSize parameters 
bkg_plot_area_pos = handles.bkg_plot_area.Position;
plot_area_pos_width = str2double(handles.PlotAreaWidthEdit.String);
plot_area_pos_height = str2double(handles.PlotAreaHeightEdit.String);
% 520 is the width/height of bkg_plot_area
plot_area_pos_left = double(bkg_plot_area_pos(1)) + ...
    (520/2 - plot_area_pos_width/2);
plot_area_pos_bottom = double(bkg_plot_area_pos(2)) + ...
    (520/2 - plot_area_pos_height/2);
set(handles.plot_area,'Position',[plot_area_pos_left,plot_area_pos_bottom,...
    plot_area_pos_width,plot_area_pos_height]);
% set the x y axis limit
% default lim = [-10 10]
half_x_lim = plot_area_pos_width/2/250 * 10;
half_y_lim = plot_area_pos_height/2/250 * 10;
set(handles.plot_area,'XLim',[-half_x_lim,half_x_lim],...
    'YLim',[-half_y_lim,half_y_lim]);
% Update handles structure
guidata(hObject, handles);




% --- Executes on key press with focus on PlotAreaWidthEdit and none of its controls.
function PlotAreaWidthEdit_KeyPressFcn(hObject, eventdata, handles)
% hObject    handle to PlotAreaWidthEdit (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.UICONTROL)
%	Key: name of the key that was pressed, in lower case
%	Character: character interpretation of the key(s) that was pressed
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) pressed
% handles    structure with handles and user data (see GUIDATA)



% --- Executes on key press with focus on PlotAreaHeightEdit and none of its controls.
function PlotAreaHeightEdit_KeyPressFcn(~, eventdata, handles)
% hObject    handle to PlotAreaHeightEdit (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.UICONTROL)
%	Key: name of the key that was pressed, in lower case
%	Character: character interpretation of the key(s) that was pressed
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) pressed
% handles    structure with handles and user data (see GUIDATA)



% --- Executes on key press with focus on PlotAreaHeightEdit and none of its controls.
function update_prompt_msg(hObject, eventdata, handles)
% hObject    handle to PlotAreaHeightEdit (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.UICONTROL)
%	Key: name of the key that was pressed, in lower case
%	Character: character interpretation of the key(s) that was pressed
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) pressed
% handles    structure with handles and user data (see GUIDATA)
last_1st_str = handles.PromptMessageText3.String;
last_2nd_str = handles.PromptMessageText2.String;
new_str = handles.prompt_msg_line;
set(handles.PromptMessageText3,'String', new_str);
set(handles.PromptMessageText2,'String', last_1st_str);
set(handles.PromptMessageText1,'String', last_2nd_str);
guidata(hObject, handles);


% --- Executes on button press in BkgColorReset.
function BkgColorReset_Callback(hObject, eventdata, handles)
% hObject    handle to BkgColorReset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.CanvasColorDisplay,'BackgroundColor',[1 1 1]);
if handles.cur_shp_fill == 0
    set(handles.FillColorDisplay,'BackgroundColor',[1 1 1]);
end
handles.prompt_msg_line = ...
    '>>>> Reset canvas(background) color to (255 255 255) ...';
guidata(hObject,handles);
set(handles.plot_area,'color',[1 1 1]);
update_prompt_msg(hObject, eventdata, handles);


% --- Executes on button press in BkgColorReset.
function change_inputtext_fontsize(hObject, eventdata, handles)
cur_slider_value = handles.SizeSlider.Value;
max_fontsize_value = handles.max_fontsize_value;
handles.cur_stimulus_fontsize = max_fontsize_value * cur_slider_value;
guidata(hObject,handles);
set(handles.SizeEdit, 'String',num2str(handles.cur_stimulus_fontsize));
handles.prompt_msg_line = ...
    ['>>>> Change input text stimulus font size to: ',...
    num2str(handles.cur_stimulus_fontsize)];
guidata(hObject,handles);
Plot_Callback(hObject, eventdata, handles);
update_prompt_msg(hObject, eventdata, handles);
guidata(hObject,handles);


% --- Executes on button press in pushbutton61.
function pushbutton61_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton61 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton62.
function pushbutton62_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton62 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on slider movement.
function StimHoriPosSlider_Callback(hObject, eventdata, handles)
% hObject    handle to StimHoriPosSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
switch handles.stimulus_type
    case '0'
        set(handles.StimHoriPosSlider,'Value',0.5);
        handles.prompt_msg_line = '>>>> Please draw a stimulus firstly ...';
        guidata(hObject,handles);
        update_prompt_msg(hObject, eventdata, handles);
    case 'text'
        handles.cur_stimulus_hori_pos = handles.StimHoriPosSlider.Value;
        handles.prompt_msg_line = ['>>>> Change text horizontal pos to ',...
            num2str(handles.cur_stimulus_hori_pos),' ...'];
        guidata(hObject,handles);
        Plot_Callback(hObject, eventdata, handles);
        update_prompt_msg(hObject, eventdata, handles);
    case 'shp'  
        % for the case of next text input
        handles.cur_stimulus_hori_pos = handles.StimHoriPosSlider.Value;
        % for the shape
        handles.cur_shp_points = handles.default_shp_points;
        handles.cur_shp_points = rotateCoordFunc(handles.cur_shp_points,...
            handles.cur_stimulus_total_RotAngle);
        handles.cur_shp_points = expandCoordFunc(handles.cur_shp_points,...
            handles.cur_shp_expand_multi);
        handles.cur_hori_move_dist = (handles.StimHoriPosSlider.Value - ...
            0.5) * handles.max_shp_move_dist;
        handles.cur_shp_points = moveCoordFunc(handles.cur_shp_points,...
            handles.cur_hori_move_dist,handles.cur_verti_move_dist);
        handles.prompt_msg_line = ['>>>> Change shape horizontal pos  ',...
            num2str(handles.cur_hori_move_dist),' ...'];
        guidata(hObject,handles);
        handles.shp = draw_shp(hObject, eventdata, handles);
        update_prompt_msg(hObject, eventdata, handles); 
end



% --- Executes during object creation, after setting all properties.
function StimHoriPosSlider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to StimHoriPosSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function StimVertiPosSlider_Callback(hObject, eventdata, handles)
% hObject    handle to StimVertiPosSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
switch handles.stimulus_type
    case '0'
        set(handles.StimVertiPosSlider,'Value',0.5);
        handles.prompt_msg_line = '>>>> Please draw a stimulus firstly ...';
        guidata(hObject,handles);
        update_prompt_msg(hObject, eventdata, handles);
    case 'text'
        handles.cur_stimulus_verti_pos = handles.StimVertiPosSlider.Value;
        handles.prompt_msg_line = ['>>>> Change text vertical pos to ',...
            num2str(handles.cur_stimulus_verti_pos),' ...'];
        guidata(hObject,handles);
        Plot_Callback(hObject, eventdata, handles);
        update_prompt_msg(hObject, eventdata, handles);
    case 'shp'
         % for the case of next text input
        handles.cur_stimulus_verti_pos = handles.StimVertiPosSlider.Value;
        % for the shape
        handles.cur_shp_points = handles.default_shp_points;
        handles.cur_shp_points = rotateCoordFunc(handles.cur_shp_points,...
            handles.cur_stimulus_total_RotAngle);
        handles.cur_shp_points = expandCoordFunc(handles.cur_shp_points,...
            handles.cur_shp_expand_multi);
        handles.cur_verti_move_dist = (handles.StimVertiPosSlider.Value - ...
            0.5) * handles.max_shp_move_dist;
        handles.cur_shp_points = moveCoordFunc(handles.cur_shp_points,...
            handles.cur_hori_move_dist,handles.cur_verti_move_dist);
        handles.prompt_msg_line = ['>>>> Change shape vertical pos  ',...
            num2str(handles.cur_verti_move_dist),' ...'];
        guidata(hObject,handles);
        handles.shp = draw_shp(hObject, eventdata, handles);
        update_prompt_msg(hObject, eventdata, handles); 
end

% --- Executes during object creation, after setting all properties.
function StimVertiPosSlider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to StimVertiPosSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on selection change in TextFontweightMenu.
function TextFontweightMenu_Callback(hObject, eventdata, handles)
% hObject    handle to TextFontweightMenu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns TextFontweightMenu contents as cell array
%        contents{get(hObject,'Value')} returns selected item from TextFontweightMenu
switch handles.stimulus_type
    case '0'
        fontweights =  cellstr(get(handles.TextFontweightMenu,'String'));
        CurrentFontweightNum = handles.TextFontweightMenu.Value;
        handles.cur_stimulus_fontweight = fontweights{CurrentFontweightNum};
        handles.prompt_msg_line = ['>>>> Change the predetermined text stimulus font weight to ',...
            handles.cur_stimulus_fontweight, ' ...'];
        guidata(hObject,handles);
        update_prompt_msg(hObject, eventdata, handles);
    case 'text'
        fontweights =  cellstr(get(handles.TextFontweightMenu,'String'));
        CurrentFontweightNum = handles.TextFontweightMenu.Value;
        handles.cur_stimulus_fontweight = fontweights{CurrentFontweightNum};
        handles.prompt_msg_line = ['>>>> Change the text stimulus font weight to ',...
            handles.cur_stimulus_fontweight, ' ...'];
        guidata(hObject,handles);
        Plot_Callback(hObject, eventdata, handles);
        update_prompt_msg(hObject, eventdata, handles);
    case 'shp'
        handles.prompt_msg_line = '>>>> Please use the stroke width slider to change line width of shape stimulus ...';
        fontweights =  cellstr(get(handles.TextFontweightMenu,'String'));
        CurrentFontweightNum = handles.TextFontweightMenu.Value;
        handles.cur_stimulus_fontweight = fontweights{CurrentFontweightNum};
        guidata(hObject,handles);
        update_prompt_msg(hObject, eventdata, handles);
end



% --- Executes during object creation, after setting all properties.
function TextFontweightMenu_CreateFcn(hObject, eventdata, handles)
% hObject    handle to TextFontweightMenu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in italicButton.
function italicButton_Callback(hObject, eventdata, handles)
% hObject    handle to italicButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of italicButton
switch handles.stimulus_type
    case 'text'
        font_italic = handles.italicButton.Value;
        if font_italic == 1
            handles.cur_stimulus_fontangle = 'italic';
            handles.prompt_msg_line = ['>>>> Change text stimulus fontangle to ', ...
                handles.cur_stimulus_fontangle,' ...'];
            guidata(hObject,handles);
            Plot_Callback(hObject, eventdata, handles);
            update_prompt_msg(hObject, eventdata, handles);
        elseif font_italic == 0
            handles.cur_stimulus_fontangle = 'normal';
            handles.prompt_msg_line = ['>>>> Change text stimulus fontangle to ', ...
                handles.cur_stimulus_fontangle,' ...'];
            guidata(hObject,handles);
            Plot_Callback(hObject, eventdata, handles);
            update_prompt_msg(hObject, eventdata, handles);
        end
end

% --- Executes on button press in pushbutton64.
function pushbutton64_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton64 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in ResetPositionButton.
function ResetPositionButton_Callback(hObject, eventdata, handles)
% hObject    handle to ResetPositionButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.StimHoriPosSlider,'Value',0.5);
set(handles.StimVertiPosSlider,'Value',0.5);
% initiate shape moving distance
handles.cur_hori_move_dist = 0 ;
handles.cur_verti_move_dist = 0 ;

handles.cur_shp_expand_multi = 1;
handles.cur_stimulus_total_RotAngle = 0;
guidata(hObject,handles);
switch handles.stimulus_type
    case 'text'
        handles.cur_stimulus_hori_pos = 0.5;
        handles.cur_stimulus_verti_pos = 0.5;
        handles.prompt_msg_line = '>>>> Reset text stimulus position & angle ...';
        handles.cur_stimulus_RotAngle = 0;
        guidata(hObject,handles);
        Plot_Callback(hObject, eventdata, handles);
        update_prompt_msg(hObject, eventdata, handles);
    case 'shp'
        set(handles.SizeSlider,'Value',0.5);
        set(handles.SizeEdit,'String','200');
        handles.cur_stimulus_RotAngle = 0;
        handles.cur_stimulus_fontangle = handles.default_stimulus_fontangle;
        handles.cur_shp_points = handles.default_shp_points;
        handles.prompt_msg_line = '>>>> Reset shape stimulus position & size & angle ...';
        guidata(hObject,handles);
        StimHoriPosSlider_Callback(hObject, eventdata, handles);
        StimVertiPosSlider_Callback(hObject, eventdata, handles);
        handles.cur_shp_points = handles.default_shp_points;
        guidata(hObject,handles);
        handles.shp = draw_shp(hObject, eventdata, handles);
        guidata(hObject,handles);
        update_prompt_msg(hObject, eventdata, handles);
end


% --- Executes on slider movement.
function StrokeWidthSlider_Callback(hObject, eventdata, handles)
% hObject    handle to StrokeWidthSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
switch handles.stimulus_type
    case '0'
        set(handles.StrokeWidthSlider,'Value',0.5);
        handles.prompt_msg_line = '>>>> Please draw a stimulus firstly ...';
        guidata(hObject,handles);
        update_prompt_msg(hObject, eventdata, handles);
    case 'text'
        handles.prompt_msg_line = ...
            '>>>> Please use the Font Weight module to change text stimuli line width ...';
        guidata(hObject,handles);
        update_prompt_msg(hObject, eventdata, handles);
    case 'shp'
        Slider_value = handles.StrokeWidthSlider.Value;
        if Slider_value <= 0 
            set(handles.StrokeWidthSlider,'Value',0.01);
            guidata(hObject,handles);
            handles.cur_shp_linewidth = 0.1;
            set(handles.StrokeWidthNumber,'String','0.1');
            handles.prompt_msg_line = '>>>> Change shape stimulus line width ...';
            guidata(hObject,handles);
            handles.shp = draw_shp(hObject, eventdata, handles);
            guidata(hObject,handles);
            update_prompt_msg(hObject, eventdata, handles);
        else
            handles.cur_shp_linewidth = round(10*(Slider_value * handles.max_shp_linewidth))/10;
            if handles.cur_shp_linewidth >=10 
                set(handles.StrokeWidthNumber,'String',round(handles.cur_shp_linewidth));
            else
                set(handles.StrokeWidthNumber,'String',handles.cur_shp_linewidth);
            end
            handles.prompt_msg_line = '>>>> Change shape stimulus line width ...';
            guidata(hObject,handles);
            handles.shp = draw_shp(hObject, eventdata, handles);
            guidata(hObject,handles);
            update_prompt_msg(hObject, eventdata, handles);
        end
end

% --- Executes during object creation, after setting all properties.
function StrokeWidthSlider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to StrokeWidthSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on selection change in LineStyleMenu.
function LineStyleMenu_Callback(hObject, eventdata, handles)
% hObject    handle to LineStyleMenu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns LineStyleMenu contents as cell array
%        contents{get(hObject,'Value')} returns selected item from LineStyleMenu
switch handles.stimulus_type
    case '0'
        set(handles.LineStyleMenu,'Value',1);
        handles.prompt_msg_line = '>>>> Please draw a shape stimulus firstly ...';
        guidata(hObject,handles);
        update_prompt_msg(hObject, eventdata, handles);
    case 'text'
        handles.prompt_msg_line = '>>>> Error: cannot change text stimulus line type ...';
        guidata(hObject,handles);
        update_prompt_msg(hObject, eventdata, handles);
    case 'shp'
        temp_value =  handles.LineStyleMenu.Value;
        CurrentLineStyle = handles.possib_shp_lineStyle{temp_value};
        handles.cur_shp_linestyle = CurrentLineStyle;
        handles.prompt_msg_line = '>>>> Change the shape stimulus line style ...';
        handles.cur_shp_linestyle = CurrentLineStyle;
        guidata(hObject,handles);
        handles.shp = draw_shp(hObject, eventdata, handles);
        update_prompt_msg(hObject, eventdata, handles);
end

% --- Executes during object creation, after setting all properties.
function LineStyleMenu_CreateFcn(hObject, eventdata, handles)
% hObject    handle to LineStyleMenu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


%% three shape coordinates manipulation functions
% rotate function 
function newPoints = rotateCoordFunc(points_inCart,angle)
angle_inPi = mod(angle,360)/180*pi;
newPoints = points_inCart;
Points_inPol = points_inCart;
for i = 1:size(newPoints,1)
    [Points_inPol(i,1), Points_inPol(i,2)] = ...
        cart2pol(points_inCart(i,1),points_inCart(i,2));
    [newPoints(i,1),newPoints(i,2)] = pol2cart(...
        Points_inPol(i,1)+angle_inPi,Points_inPol(i,2));
end
% expand function
function newPoints = expandCoordFunc(points_inCart,expand_multi)
newPoints = points_inCart;
Points_inPol = points_inCart;
for i = 1:size(newPoints,1)
    [Points_inPol(i,1), Points_inPol(i,2)] = ...
        cart2pol(points_inCart(i,1),points_inCart(i,2));
    [newPoints(i,1),newPoints(i,2)] = pol2cart(...
        Points_inPol(i,1),Points_inPol(i,2)*expand_multi);
end
% move function
function newPoints = moveCoordFunc(points_inCart,move_x,move_y)
newPoints = points_inCart;
for i = 1:size(newPoints,1)
    newPoints(i,1) = points_inCart(i,1)+move_x;
    newPoints(i,2) = points_inCart(i,2)+move_y;
end

% --- Executes during object creation, after setting all properties.
function shp = draw_shp(hObject,eventdata,handles)
handles.prompt_msg_line = '>>>> Drawing ...';
guidata(hObject,handles);
shp = fill(handles.plot_area,...
    handles.cur_shp_points(:,1),...
    handles.cur_shp_points(:,2),...
    handles.cur_shp_fill_color,...
    'EdgeColor',handles.cur_stimulus_stroke_color,...
    'linewidth',handles.cur_shp_linewidth,...
    'linestyle',handles.cur_shp_linestyle);
%% reset the plot_area properties, 
% because the 'fill' function changes them
% make plot_area object's  X Y axes 
handles.plot_area.XAxis.Visible = 'off';
handles.plot_area.YAxis.Visible = 'off';
set(handles.plot_area,'box','off');
set(handles.plot_area,'color',handles.bkg_color);
set_plot_area_size(hObject,eventdata, handles);
guidata(hObject,handles);
update_prompt_msg(hObject, eventdata, handles);


% --- Executes during object creation, after setting all properties.
function HalfCircleButton_CreateFcn(hObject, eventdata, handles)
% hObject    handle to HalfCircleButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function DropButton_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DropButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on button press in ResetAllButton.
function ResetAllButton_Callback(hObject, eventdata, handles)
% hObject    handle to ResetAllButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.cur_shp_points = [];
handles.stimulus_type = '0'; 
guidata(hObject,handles);
ResetPositionButton_Callback(hObject, eventdata, handles);
ClearCanvas(hObject, eventdata, handles);
BkgColorReset_Callback(hObject, eventdata, handles);
ResetFillColorButton_Callback(hObject, eventdata, handles);
% make bkg_plot_area object's  X Y axes visible
handles.bkg_plot_area.XAxis.Visible = 'on';
handles.bkg_plot_area.YAxis.Visible = 'on';
% bkg_plot_area object box on, delete the tick labels
set(handles.bkg_plot_area,'box','on','XTickLabel',[],'YTickLabel',[]);
% make plot_area object's  X Y axes 
handles.plot_area.XAxis.Visible = 'off';
handles.plot_area.YAxis.Visible = 'off';

%% canvas
handles.bkg_color = [1 1 1];
set(handles.PlotAreaWidthEdit,'String','500');
set(handles.PlotAreaHeightEdit,'String','500');
guidata(hObject,handles);
PlotAreaWidthEdit_Callback(hObject, eventdata, handles);
PlotAreaHeightEdit_Callback(hObject, eventdata, handles);

%% stimulus
% default stimulus type: 
handles.stimulus_type = '0'; 
%% text stimulus properties
% default text input content
handles.inputtext = [];
% default text input stimulus fontsize
handles.cur_stimulus_fontsize = 200;
handles.max_fontsize_value = 400;
if strcmp(handles.stimulus_type, 'text')
    set(handles.SizeEdit,'String',num2str(handles.cur_stimulus_fontsize));
end
% default text stimulus stroke width
handles.default_stimulus_fontweight = 'Normal';
handles.cur_stimulus_fontweight = handles.default_stimulus_fontweight;
% default text stimulus fontangle
handles.default_stimulus_fontangle = 'Normal';
handles.cur_stimulus_fontangle = handles.default_stimulus_fontangle;
% default text stimulus position 
handles.default_stimulus_hori_pos = 0.5;
handles.default_stimulus_verti_pos = 0.5;
handles.cur_stimulus_hori_pos = handles.default_stimulus_hori_pos;
handles.cur_stimulus_verti_pos = handles.default_stimulus_verti_pos;
%% default common properties for shape stimulus and text stimulus 
% default stimulus rotation angle
handles.cur_stimulus_RotAngle = 0;
handles.cur_stimulus_total_RotAngle = 0;
% default stimulus stroke color
handles.default_stimulus_stroke_color = [0 0 0];
handles.cur_stimulus_stroke_color = [0 0 0];
%% default shp stimulus properties
% default shape stimulus points 
handles.cur_shp_points = [];
% default shp stimulus expand dist 
handles.cur_shp_expand_multi = 1;
handles.max_shp_expand_multi = 2;
% default shp stimulus line width
handles.max_shp_linewidth = 28;
handles.default_shp_linewidth = 14;
handles.cur_shp_linewidth = handles.default_shp_linewidth;
% default shp stimulus line style
handles.possib_shp_lineStyle = {'-';'--';':';'-.'};
handles.default_shp_linestyle = '-';
handles.cur_shp_linestyle = handles.default_shp_linestyle;
% default shp stimulus fill or not
handles.cur_shp_fill = 0;
% default shp stimulus fill color
handles.cur_shp_fill_color = handles.bkg_color;
% default shp stimulus max moving range
handles.max_shp_move_dist = 10;
% initiate shape moving distance
handles.cur_hori_move_dist = 0 ;
handles.cur_verti_move_dist = 0 ;
% display
set(handles.CanvasColorDisplay,'BackgroundColor',[1 1 1]);
set(handles.StrokeColorDisplay,'BackgroundColor',[0 0 0]);
set(handles.FillColorDisplay,'BackgroundColor',[1 1 1]);
set(handles.StrokeWidthSlider,'Value',0.5);
set(handles.StrokeWidthNumber,'String','14');
set(handles.SizeEdit,'String','200');
set(handles.SizeSlider,'Value',0.5);

handles.prompt_msg_line = '>>>> Reset all ...';
% Update handles structure
guidata(hObject, handles);
update_prompt_msg(hObject, eventdata, handles);  



% --- Executes on button press in togglebutton5.
function togglebutton5_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton5


% --- Executes on button press in togglebutton6.
function togglebutton6_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton6


% --- Executes on button press in FillColorButton.
function FillColorButton_Callback(hObject, eventdata, handles)
% hObject    handle to FillColorButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
switch handles.stimulus_type
    case '0'
        handles.prompt_msg_line = '>>>> Please draw a shape stimulus firstly ...';
        guidata(hObject,handles);
        update_prompt_msg(hObject, eventdata, handles);
    case 'text'
        handles.prompt_msg_line = '>>>> Error: cannot fill text stimulus...';
        guidata(hObject,handles);
        update_prompt_msg(hObject, eventdata, handles);    
    case 'shp'
        handles.cur_shp_fill = 1;
        handles.cur_shp_fill_color = uisetcolor(handles.bkg_color);
        set(handles.FillColorDisplay,'BackgroundColor',handles.cur_shp_fill_color);
        handles.prompt_msg_line = ['>>>> Fill the shape stimulus with color (',...
            num2str(round(handles.cur_shp_fill_color(1)*255)),',',...
            num2str(round(handles.cur_shp_fill_color(2)*255)),',',...
            num2str(round(handles.cur_shp_fill_color(2)*255)),') ...'];
        guidata(hObject,handles);
        handles.shp = draw_shp(hObject,eventdata,handles);
        update_prompt_msg(hObject, eventdata, handles);    
end

% --- Executes on button press in ResetFillColorButton.
function ResetFillColorButton_Callback(hObject, eventdata, handles)
% hObject    handle to ResetFillColorButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
switch handles.stimulus_type
    case '0'
        handles.cur_shp_fill = 0;
        handles.cur_shp_fill_color = handles.bkg_color;
        set(handles.FillColorDisplay,'BackgroundColor',handles.bkg_color);
    case 'text'
        handles.prompt_msg_line = '>>>> Error: cannot fill text stimulus...';
        guidata(hObject,handles);
        update_prompt_msg(hObject, eventdata, handles);    
    case 'shp'
        handles.cur_shp_fill = 0;
        handles.cur_shp_fill_color = handles.bkg_color;
        set(handles.FillColorDisplay,'BackgroundColor',handles.bkg_color);
        handles.prompt_msg_line = '>>>> Make the shape stimulus transparent ... ';
        guidata(hObject,handles);
        handles.shp = draw_shp(hObject,eventdata,handles);
        update_prompt_msg(hObject, eventdata, handles);
end


% --- Executes on button press in Bmp.
function Bmp_Callback(hObject, eventdata, handles)
% hObject    handle to Bmp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hint: get(hObject,'Value') returns toggle state of Bmp
temp_string = handles.FileNameEdit.String;
temp_break = 0;
for i =1:length(temp_string)
    if strcmp(temp_string(i),'.')
        temp_break = 1;
        break;
    end
end
if temp_break == 1
    temp_string = temp_string(1:i-1);
end
set(handles.FileNameEdit,'String',[temp_string,'.bmp'])
handles.prompt_msg_line = '>>>> Change image format to .bmp ... ';
guidata(hObject,handles);
update_prompt_msg(hObject, eventdata, handles);


% --- Executes on button press in Png.
function Png_Callback(hObject, eventdata, handles)
% hObject    handle to Png (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of Png
temp_string = handles.FileNameEdit.String;
temp_break = 0;
for i =1:length(temp_string)
    if strcmp(temp_string(i),'.')
        temp_break = 1;
        break;
    end
end
if temp_break == 1
    temp_string = temp_string(1:i-1);
end
set(handles.FileNameEdit,'String',[temp_string,'.png'])
handles.prompt_msg_line = '>>>> Change image format to .png ... ';
guidata(hObject,handles);
update_prompt_msg(hObject, eventdata, handles);


% --- Executes on button press in Jpg.
function Jpg_Callback(hObject, eventdata, handles)
% hObject    handle to Jpg (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of Jpg
% Hint: get(hObject,'Value') returns toggle state of Bmp
temp_string = handles.FileNameEdit.String;
temp_break = 0;
for i =1:length(temp_string)
    if strcmp(temp_string(i),'.')
        temp_break = 1;
        break;
    end
end
if temp_break == 1
    temp_string = temp_string(1:i-1);
end
set(handles.FileNameEdit,'String',[temp_string,'.jpg'])
handles.prompt_msg_line = '>>>> Change image format to .jpg ... ';
guidata(hObject,handles);
update_prompt_msg(hObject, eventdata, handles);


% --- Executes on button press in Fig.
function Fig_Callback(hObject, eventdata, handles)
% hObject    handle to Fig (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
temp_string = handles.FileNameEdit.String;
temp_break = 0;
for i =1:length(temp_string)
    if strcmp(temp_string(i),'.')
        temp_break = 1;
        break;
    end
end
if temp_break == 1
    temp_string = temp_string(1:i-1);
end
set(handles.FileNameEdit,'String',[temp_string,'.fig'])
handles.prompt_msg_line = '>>>> Change image format to .fig ... ';
guidata(hObject,handles);
update_prompt_msg(hObject, eventdata, handles);
% Hint: get(hObject,'Value') returns toggle state of Fig


% --- Executes on button press in Svg.
function Svg_Callback(hObject, eventdata, handles)
% hObject    handle to Svg (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
temp_string = handles.FileNameEdit.String;
temp_break = 0;
for i =1:length(temp_string)
    if strcmp(temp_string(i),'.')
        temp_break = 1;
        break;
    end
end
if temp_break == 1
    temp_string = temp_string(1:i-1);
end
set(handles.FileNameEdit,'String',[temp_string,'.svg'])
handles.prompt_msg_line = '>>>> Change image format to .svg ... ';
guidata(hObject,handles);
update_prompt_msg(hObject, eventdata, handles);
% Hint: get(hObject,'Value') returns toggle state of Svg


% --- Executes during object creation, after setting all properties.
function logo_area_CreateFcn(hObject, eventdata, handles)
% hObject    handle to logo_area (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate logo_area
