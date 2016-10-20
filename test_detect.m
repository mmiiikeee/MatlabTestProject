function varargout = test_detect(varargin)
% TEST_DETECT MATLAB code for test_detect.fig
%      TEST_DETECT, by itself, creates a new TEST_DETECT or raises the existing
%      singleton*.
%
%      H = TEST_DETECT returns the handle to a new TEST_DETECT or the handle to
%      the existing singleton*.
%
%      TEST_DETECT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TEST_DETECT.M with the given input arguments.
%
%      TEST_DETECT('Property','Value',...) creates a new TEST_DETECT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before test_detect_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to test_detect_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help test_detect

% Last Modified by GUIDE v2.5 03-Jul-2016 00:39:07

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @test_detect_OpeningFcn, ...
                   'gui_OutputFcn',  @test_detect_OutputFcn, ...
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


% --- Executes just before test_detect is made visible.
function test_detect_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to test_detect (see VARARGIN)

% Choose default command line output for test_detect
handles.output = hObject;
handles.mouseclk = 0;
set(handles.axes1,'Position', [ 1 1 15 15 ]);
axis(handles.axes1,[0,15,0,15]);
set(handles.axes1,'xtick',[]); 
set(handles.axes1,'ytick',[]);
set(handles.axes1, 'Visible', 'off');
hold(handles.axes1,'on');
A = [1.225000000000000   3.116071428571428   2.525000000000000   0.455357142857143;
   5.450000000000000   2.517857142857143   2.525000000000000   0.410714285714286;
   9.125000000000000   0.883928571428571   2.750000000000000   0.750000000000000;
   2.875000000000000   0.312500000000000   2.350000000000000   0.723214285714286;
   6.600000000000001   0.437500000000000   2.150000000000000   0.455357142857143];
x = [A(:,1),A(:,1),A(:,1)+A(:,3),A(:,1)+A(:,3)];
y = [A(:,2),A(:,2)+A(:,4),A(:,2)+A(:,4),A(:,2)];
kreispos = [sin(0:0.01:2*pi);cos(0:0.01:2*pi)];
% hxy = fill(5.2+sqrt(2)*kreispos(1,:),4.3+sqrt(2)*kreispos(2,:),'w',6.9+sqrt(2)*kreispos(1,:),8.3+sqrt(2)*kreispos(2,:),'w');
handles.KreisRadius = [sqrt(2);sqrt(5);sqrt(3);sqrt(1.5);sqrt(0.9)];
h = fill(x(1,:),y(1,:),'w',x(2,:),y(2,:),'w',x(3,:),y(3,:),'w',x(4,:),y(4,:),'w',x(5,:),y(5,:),'w',5.2+handles.KreisRadius(1)*kreispos(1,:),4.3+handles.KreisRadius(1)*kreispos(2,:)...
    ,'w',6.9+handles.KreisRadius(2)*kreispos(1,:),8.3+handles.KreisRadius(2)*kreispos(2,:),'w',2.2+handles.KreisRadius(3)*kreispos(1,:),5.5+handles.KreisRadius(3)*kreispos(2,:),'w',...
    11.2+handles.KreisRadius(4)*kreispos(1,:),1.3+handles.KreisRadius(4)*kreispos(2,:),'w',1.1+handles.KreisRadius(5)*kreispos(1,:),1.8+handles.KreisRadius(5)*kreispos(2,:),'w');

[figLager(1,:)] = drawLager (3,2,pi/2,0.2,handles.axes1);
[figLager(2,:)] = drawLager (10,2,-pi/4,0.2,handles.axes1);
handles.KreisPosi = [5.2 4.3;6.9 8.3;2.2 5.5;11.2 1.3;1.1 1.8];
handles.posi = A;
% Update handles structure
handles.hx = h;
handles.posx = x;
handles.posy = y;
handles.exist1 = 0;
handles.h = [];
handles.Kr = [];
handles.dete = [];
handles.Dete = [];
handles.figLager = figLager;
handles.LagerPos = [3 2;10 2];
handles.FederIsOn = 0;
handles.Seil = [];
handles.Counter = 0;%9,10
guidata(hObject, handles);

% UIWAIT makes test_detect wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = test_detect_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in Try.
function Try_Callback(hObject, eventdata, handles)
% hObject    handle to Try (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if isempty(handles.h) || ~exist('handles.h','var')
    handles.h = figure(1);
end
delete(handles.h);
handles.mouseclk = 0;
guidata(handles.figure1,handles);
set(handles.figure1,'WindowButtonMotionFcn',@drawfcn);
set(handles.figure1,'WindowButtonDownFcn',@drawfcn_1);
% uiwait();

function drawfcn(hObject, eventdata)
handles = guidata(hObject);
pos = get(handles.axes1, 'currentpoint'); % get mouse location on figure
pos = [pos(1,1) pos(1,2)];
hx = handles.hx;
posx = handles.posx;
posy = handles.posy;
x = pos(1);
y = pos(2);
posi = handles.posi;
b(:,1) = posi(:,1) <= x;
b(:,2) = posi(:,1)+posi(:,3) >= x;
b(:,3) = posi(:,2) <= y;
b(:,4) = posi(:,2)+posi(:,4) >= y;
A = b(:,1).*b(:,2).*b(:,3).*b(:,4);
if ismember(1,A)
    num = find(A,1);
    if handles.exist1
        delete(hx(6));
        handles.exist1 = 0;
    end
    hx(6) = fill(posx(num,:),posy(num,:),'r');
    handles.exist1 = 1;
%     switch num
%         case 1
%             set(handles.text2,'backgroundcolor','white');
%         case 2
%             set(handles.text3,'backgroundcolor','white');
%         case 3
%             set(handles.text4,'backgroundcolor','white');
%         case 4 
%             set(handles.text5,'backgroundcolor','white');
%         case 5
%             set(handles.text6,'backgroundcolor','white');
%     end
else
    if handles.exist1
        delete(hx(6));
        handles.exist1 = 0;
    end
%     hx = fill(posx(1,:),posy(1,:),'w',posx(2,:),posy(2,:),'w',posx(3,:),posy(3,:),'w',posx(4,:),posy(4,:),'w',posx(5,:),posy(5,:),'w');
%     set(handles.text2,'backgroundcolor',[0.94 0.94 0.94]);
%     set(handles.text3,'backgroundcolor',[0.94 0.94 0.94]);
%     set(handles.text4,'backgroundcolor',[0.94 0.94 0.94]);
%     set(handles.text5,'backgroundcolor',[0.94 0.94 0.94]);
%     set(handles.text6,'backgroundcolor',[0.94 0.94 0.94]);
end

if handles.mouseclk == 1
    h = handles.h;
    if isempty(h)
        h = figure(1);
    end
    delete(h);
    [h(6)] = drawSpring(handles.pos0(1),handles.pos0(2),x,y,handles,zeros(4),0,handles.axes1);
    handles.h = h;
elseif handles.mouseclk == 2
    delete(hx(6));
    guidata(hObject,handles);
    set(hObject,'WindowButtonMotionFcn','');
    set(handles.figure1,'WindowButtonDownFcn','');
end
handles.hx = hx;
guidata(hObject,handles);

function drawfcn_1(hObject, eventdata)
handles = guidata(hObject);
m_type = get(hObject, 'selectionType');
if strcmp(m_type, 'normal')
    hold(handles.axes1,'on');
    handles.mouseclk = handles.mouseclk + 1;
    pos = get(handles.axes1, 'currentpoint'); % get mouse location on figure
    pos = [pos(1,1) pos(1,2)];
    t = 0:0.01:2*pi;
    x = pos(1)+0.1*sin(t);
    y = pos(2)+0.1*cos(t);
    fill(x(:),y(:),'w','Parent',handles.axes1);
    handles.pos0 = pos;
    handles.h = [];
end
guidata(hObject,handles);

function [h] = drawSpring(x0,y0,x,y,handles,phi,item,gca)
% hoehe = 2;
% vec(1,:) = y0+[0 0 -0.5 0.5 -0.5 0.5 -0.5 0.5 -0.5 0.5 -0.5 0.5 -0.5 0.5 -0.5 0 0]-linspace(hoehe*cos(phi(1)),(hoehe)*cos(phi(3)),17);

if x0 ~= x
    laenge = abs(x-x0)/(x-x0)*sqrt((x0-x)^2+(y0-y)^2);
    phi = atan((y-y0)/(x-x0));
    vec(1,:) = abs(x-x0)/(x-x0)*[0 0 -0.5 0.5 -0.5 0.5 -0.5 0.5 -0.5 0.5 -0.5 0.5 -0.5 0.5 -0.5 0 0];
    vec(2,:) = linspace(0,laenge,17);
    vec = (vec' * [cos(phi) -sin(phi);sin(phi) cos(phi)])';
else
    laenge = abs(y-y0)/(y-y0)*sqrt((x0-x)^2+(y0-y)^2);
    vec(1,:) = linspace(0,laenge,17);
    vec(2,:) = [0 0 -0.5 0.5 -0.5 0.5 -0.5 0.5 -0.5 0.5 -0.5 0.5 -0.5 0.5 -0.5 0 0];
end
if item == 0
%     vec(2,:) = linspace(x0,x,17);
    h=plot(gca,x0+vec(2,:),y0+vec(1,:),'k-');
elseif item == 1
    vec(2,:) = linspace(0,x0+phi,17);
    h=plot(gca,vec(2,:),vec(1,:),'k-');
elseif item == 2
    h=plot(gca,[x0 x],[y0 y],'b-');
end


% --- Executes on button press in Kreiserz.
function Kreiserz_Callback(hObject, eventdata, handles)
% hObject    handle to Kreiserz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
delete(handles.Kr)
% pos = get(handles.figure1, 'currentpoint')
pos = [10 10];
spec=[sin(0:0.01:pi) 0.5*sin(0:0.01:pi) 0.5*sin(pi:0.01:2*pi);cos(0:0.01:pi) -0.5+0.5*cos(pi:0.01:2*pi) 0.5+0.5*cos(pi:0.01:2*pi);...
    sin(pi:0.01:2*pi) 0.5*sin(pi:0.01:2*pi) 0.5*sin(0:0.01:pi);cos(pi:0.01:2*pi) 0.5+0.5*cos(0:0.01:pi) -0.5+0.5*cos(0:0.01:pi)];
[x]=[pos(1)+spec(1,:);pos(1)+spec(3,:)];
[y]=[pos(2)+spec(2,:);pos(2)+spec(4,:)];
Kr(1) = fill(x(1,:),y(1,:),'k','Parent',handles.axes1);
hold on;
Kr(2) = fill(x(2,:),y(2,:),'w','Parent',handles.axes1);
Kr(3) = 0;
moveit2(Kr(1));
handles.Kr = Kr;
handles.KrPos =[get(handles.Kr(1),'XData') get(handles.Kr(2),'XData') get(handles.Kr(1),'YData') get(handles.Kr(2),'YData')];
set(handles.figure1,'WindowButtonMotionFcn',@drawCircle);
set(handles.figure1,'WindowButtonDownFcn',@drawCircle_1);
guidata(hObject,handles);


function drawCircle_1(hObject,eventdata)
% % m_type = get(hObject, 'selectionType');
% % if strcmp(m_type, 'normal')
%     set(hObject,'WindowButtonMotionFcn','');
%     set(hObject,'WindowButtonDownFcn','');
% % end


% --- Executes on button press in detect.
function detect_Callback(hObject, eventdata, handles)
% hObject    handle to detect (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% while i
%     pos = get(handles.figure1, 'currentpoint');
%     if norm(pos-[5.2 4.3])<1
%         Kreispos_1 = 0.1*[sin(0:0.01:2*pi);cos(0:0.01:2*pi)];
%         h = fill(5.2+Kreispos_1(1,:),Kreispos_1(2,:),'w','Parent',handles.axes1);
%     end
%     if strcmp(get(handles.figure1,'selectionType'), 'normal')
%         i = 1;
%     end
%     pause(0.01);
% end
if isempty(handles.Dete) || ~exist('handles.Dete','var')
    handles.Dete = figure(1);
end
delete(handles.Dete);
delete(handles.dete);
handles.Counter = 0;
set(handles.figure1,'WindowButtonMotionFcn',@drawCircle);
set(handles.figure1,'WindowButtonDownFcn',@drawCircle);
set(handles.figure1, 'selectionType','open');
% handles.FederIsOn = 2;
% guidata(handles.figure1,handles);
guidata(hObject,handles);

function drawCircle(hObject,eventdata)
%input:Counter = 0;dete=[];KreisRadius;KreisPosi;LagerPos;RechteckPosi;
%output:dete;nukber(Template);figSeil2;figSeil3;Remem;SelectType;SelectKreis;
handles = guidata(hObject);

m_type = get(hObject, 'selectionType');
if strcmp(m_type, 'normal')
    handles.Counter = handles.Counter+1;
    if handles.Counter == 1
        handles.figSeil2 = [];
    elseif handles.Counter == 2
        delete(handles.dete(1));
        
        handles.figSeil3 = [];
    elseif handles.Counter == 3
        set(hObject,'WindowButtonMotionFcn','');
        set(handles.figure1,'WindowButtonDownFcn','');
    end
    handles.nukber = 0;
    set(handles.figure1, 'selectionType','open');
end
pos = get(handles.axes1, 'currentpoint'); %%%
pos = [pos(1,1) pos(1,2)];

if isempty(handles.dete)
    handles.dete = figure(1);
end
if ~handles.Counter 
    delete(handles.dete);
%     handles.Remem(handles.Counter+1,:) = pos;
    dim = size(handles.KreisPosi);
    handles.nukber = 0;
    handles.SelectKreis1 = 0;
    for i=1:dim(1)
        if norm(pos - handles.KreisPosi(i,:))> handles.KreisRadius(i)
            if handles.nukber == dim(1) - 1
                handles.dete(handles.Counter+1) = plot(pos(1),pos(2),'bo');
                handles.Remem(handles.Counter+1,:) = [pos(1) pos(2)];
            end
            handles.nukber = handles.nukber + 1;
        elseif norm(pos - handles.KreisPosi(i,:))< handles.KreisRadius(i)*1
            handles.dete(handles.Counter+1) = plot(handles.KreisPosi(i,1) , handles.KreisPosi(i,2),'bo');
            handles.Remem(handles.Counter+1,:) = [handles.KreisPosi(i,1) handles.KreisPosi(i,2)];
            handles.SelectKreis1 = i;
        end
    end
elseif handles.Counter == 1
    delete(handles.dete);
    if ~isempty(handles.figSeil2)
%             delete(handles.Seil(handles.Counter));
        delete(handles.figSeil2);
        handles.figSeil2 = [];
    end
    handles.SelectType = 0;
    handles.SelectKreis = 0;
    dim = size(handles.KreisPosi);
    handles.nukber = 0;
    for i=1:dim(1)
        if norm(pos - handles.KreisPosi(i,:))> handles.KreisRadius(i)
            if handles.nukber == dim(1) - 1
                handles.figSeil2(1) = plot([pos(1) handles.Remem(1,1)],[pos(2) handles.Remem(1,2)],'b');
                handles.figSeil2(2) = plot(pos(1),pos(2),'bo');
            end
            handles.nukber = handles.nukber + 1;
        elseif norm(pos - handles.KreisPosi(i,:))> handles.KreisRadius(i)*0.618 && i~=handles.SelectKreis1
            r = handles.KreisRadius(i);
            vec = handles.KreisPosi(i,:)-handles.Remem(1,:);
            beta = asin(vec(2)/norm(vec));
            if vec(1)>0
                beta = pi - beta;
            end
            alpha = acos(r/norm(vec));
            punkt(1,:) = handles.KreisPosi(i,:)+[r*cos(alpha) r*sin(alpha)]*[cos(beta) -sin(beta) ;-sin(beta) -cos(beta) ];
            punkt(2,:) = handles.KreisPosi(i,:)+[r*cos(alpha) r*sin(alpha)]*[cos(beta) -sin(beta) ;sin(beta) cos(beta) ];
            if norm(pos-punkt(1,:))<norm(pos-punkt(2,:))
                handles.figSeil2(1) = plot(punkt(1,1),punkt(1,2),'bo');
                handles.figSeil2(2) = plot([punkt(1,1) handles.Remem(1,1)],[punkt(1,2) handles.Remem(1,2)],'b');
                handles.SelectType = 2;
                handles.SelectKreis = i;
            else
                handles.figSeil2(1) = plot(punkt(2,1),punkt(2,2),'bo');
                handles.figSeil2(2) = plot([punkt(2,1) handles.Remem(1,1)],[punkt(2,2) handles.Remem(1,2)],'b');
                handles.SelectType = 1;
                handles.SelectKreis = i;
            end
        elseif (norm(pos - handles.KreisPosi(i,:)) < handles.KreisRadius(i)*0.618) && i~=handles.SelectKreis1
            handles.figSeil2(1) = plot(handles.KreisPosi(i,1) , handles.KreisPosi(i,2),'bo');
            handles.figSeil2(2) = plot([handles.KreisPosi(i,1) handles.Remem(1,1)],[handles.KreisPosi(i,2) handles.Remem(1,2)],'b');
        end
    end
elseif handles.Counter == 2
    delete(handles.dete);
    if ~isempty(handles.figSeil3)
%             delete(handles.Seil(handles.Counter));
        delete(handles.figSeil3);
        handles.figSeil3 = [];
    end
     %if handles.SelectType && handles.SelectKreis && norm(pos - handles.KreisPosi(handles.SelectKreis,:))> handles.KreisRadius(handles.SelectKreis)
%         if
%             
%             
%         else
%             r = handles.KreisRadius(handles.SelectKreis);
%             vec = handles.KreisPosi(handles.SelectKreis,:)-pos;
%             beta = asin(vec(2)/norm(vec));
%             if vec(1)>0
%                 beta = pi - beta;
%             end
%             alpha = acos(r/norm(vec));
%             punkt(1,:) = handles.KreisPosi(handles.SelectKreis,:)+[r*cos(alpha) r*sin(alpha)]*[cos(beta) -sin(beta) ;-sin(beta) -cos(beta) ];
%             punkt(2,:) = handles.KreisPosi(handles.SelectKreis,:)+[r*cos(alpha) r*sin(alpha)]*[cos(beta) -sin(beta) ;sin(beta) cos(beta) ];
%             handles.figSeil3(1) = plot(pos(1),pos(2),'bo');
%     %         handles.figSeil3(2) = plot([punkt(handles.SelectType,1) pos(1)],[punkt(handles.SelectType,2) pos(2)],'b');
%             [handles.figSeil3(2)] = drawSpring(punkt(handles.SelectType,1),punkt(handles.SelectType,2),pos(1),pos(2),handles,0,handles.FederIsOn,handles.axes1);%%%
%             handles.figSeil3(3) = plot(punkt(handles.SelectType,1),punkt(handles.SelectType,2),'bo');
%         end
%     else
        dim = size(handles.KreisPosi);
        handles.nukber = 0;
        for i=1:dim(1)
            if i ~= handles.SelectKreis(handles.Counter-1)  &&  norm(pos - handles.KreisPosi(handles.SelectKreis(handles.Counter-1),:))> handles.KreisRadius(handles.SelectKreis(handles.Counter-1))
                if norm(pos - handles.KreisPosi(i,:))> handles.KreisRadius(i)
                    if handles.nukber == dim(1) - 2
                        r = handles.KreisRadius(handles.SelectKreis(handles.Counter-1));
                        vec = handles.KreisPosi(handles.SelectKreis(handles.Counter-1),:)-pos;
                        beta = asin(vec(2)/norm(vec));
                        if vec(1)>0
                            beta = pi - beta;
                        end
                        alpha = acos(r/norm(vec));
                        punkt(1,:) = handles.KreisPosi(handles.SelectKreis(handles.Counter-1),:)+[r*cos(alpha) r*sin(alpha)]*[cos(beta) -sin(beta) ;-sin(beta) -cos(beta) ];
                        punkt(2,:) = handles.KreisPosi(handles.SelectKreis(handles.Counter-1),:)+[r*cos(alpha) r*sin(alpha)]*[cos(beta) -sin(beta) ;sin(beta) cos(beta) ];
                        handles.figSeil3(1) = plot(pos(1),pos(2),'bo');
                        [handles.figSeil3(2)] = drawSpring(punkt(handles.SelectType(handles.Counter - 1),1),punkt(handles.SelectType(handles.Counter - 1),2),pos(1),pos(2),handles,0,handles.FederIsOn,handles.axes1);%%%
                        handles.figSeil3(3) = plot(punkt(handles.SelectType(handles.Counter - 1),1),punkt(handles.SelectType(handles.Counter - 1),2),'bo');
                    end
                    handles.nukber = handles.nukber + 1;
                elseif norm(pos - handles.KreisPosi(i,:))> handles.KreisRadius(i)*0.618 %&& i~=handles.SelectKreis1
                    r = handles.KreisRadius(i);
                    vec = -handles.KreisPosi(i,:)+handles.KreisPosi(handles.SelectKreis(handles.Counter-1),:);
                    beta = asin(vec(2)/norm(vec));
                    if vec(1)>0
                        beta = pi - beta;
                    end
%                     if vec(2)<0
%                         beta = beta + pi;
%                     end
                    alpha = (-1)^(handles.SelectType(handles.Counter - 1))*acos((-r+handles.KreisRadius(handles.SelectKreis(handles.Counter-1)))/norm(vec));
                    gamma = (-1)^(handles.SelectType(handles.Counter - 1))*acos((+r+handles.KreisRadius(handles.SelectKreis(handles.Counter-1)))/norm(vec));
                    punkt(1,:) = handles.KreisPosi(handles.SelectKreis(handles.Counter-1),:)+[handles.KreisRadius(handles.SelectKreis(handles.Counter-1))*cos(alpha) handles.KreisRadius(handles.SelectKreis(handles.Counter-1))*sin(alpha)]*[-cos(beta) +sin(beta) ;+sin(beta) +cos(beta) ];
                    punkt(2,:) = handles.KreisPosi(handles.SelectKreis(handles.Counter-1),:)+[handles.KreisRadius(handles.SelectKreis(handles.Counter-1))*cos(gamma) handles.KreisRadius(handles.SelectKreis(handles.Counter-1))*sin(gamma)]*[cos(beta) -sin(beta) ;+sin(beta) +cos(beta) ];
                    punkt(4,:) = handles.KreisPosi(i,:)+[r*cos(alpha) r*sin(alpha)]*[cos(beta) -sin(beta) ;sin(beta) cos(beta) ];
                    punkt(3,:) = handles.KreisPosi(i,:)+[r*cos(gamma) r*sin(gamma)]*[-cos(beta) sin(beta) ;-sin(beta) -cos(beta) ];
                    if norm(pos-punkt(3,:))<norm(pos-punkt(4,:))
                        handles.SelectType(handles.Counter) = 2;
                        handles.SelectKreis(handles.Counter) = i;
                        if handles.SelectType(handles.Counter) == handles.SelectType(handles.Counter - 1)
                            alpha = acos((-r+handles.KreisRadius(handles.SelectKreis(handles.Counter-1)))/norm(vec));
%                             if vec(2)<0
%                                 alpha = alpha + pi;
%                             end
                            punkt(2,:) = handles.KreisPosi(handles.SelectKreis(handles.Counter-1),:)+[handles.KreisRadius(handles.SelectKreis(handles.Counter-1))*cos(alpha) ...
                                handles.KreisRadius(handles.SelectKreis(handles.Counter-1))*sin(alpha)]*[cos(beta) -sin(beta) ;+sin(beta) +cos(beta) ];
                            punkt(3,:) = handles.KreisPosi(i,:)+[r*cos(alpha) r*sin(alpha)]*[cos(beta) -sin(beta) ;sin(beta) cos(beta) ];
                            handles.figSeil3(1) = plot(punkt(3,1),punkt(3,2),'bo');
                            handles.figSeil3(2) = plot([punkt(3,1) punkt(handles.SelectType(handles.Counter - 1),1)],[punkt(3,2) punkt(handles.SelectType(handles.Counter - 1),2)],'b');
                            handles.figSeil3(3) = plot(punkt(handles.SelectType(handles.Counter - 1),1),punkt(handles.SelectType(handles.Counter - 1),2),'bo');
                        else
                            alpha = acos((+r+handles.KreisRadius(handles.SelectKreis(handles.Counter-1)))/norm(vec));
%                             if vec(2)<0
%                                 alpha = alpha + pi;
%                             end
                            punkt(1,:) = handles.KreisPosi(handles.SelectKreis(handles.Counter-1),:)+[handles.KreisRadius(handles.SelectKreis(handles.Counter-1))*cos(alpha)...
                                handles.KreisRadius(handles.SelectKreis(handles.Counter-1))*sin(alpha)]*[cos(beta) -sin(beta) ;-sin(beta) -cos(beta) ];
                            punkt(3,:) = handles.KreisPosi(i,:)+[r*cos(alpha) r*sin(alpha)]*[-cos(beta) sin(beta) ;sin(beta) cos(beta) ];
                            handles.figSeil3(1) = plot(punkt(3,1),punkt(3,2),'bo');
                            handles.figSeil3(2) = plot([punkt(3,1) punkt(handles.SelectType(handles.Counter - 1),1)],[punkt(3,2) punkt(handles.SelectType(handles.Counter - 1),2)],'b');
                            handles.figSeil3(3) = plot(punkt(handles.SelectType(handles.Counter - 1),1),punkt(handles.SelectType(handles.Counter - 1),2),'bo');
                        end
                        
                    else
                        handles.SelectType(handles.Counter) = 1;
                        handles.SelectKreis(handles.Counter) = i;
                        if handles.SelectType(handles.Counter) == handles.SelectType(handles.Counter - 1)
                            alpha = acos((-r+handles.KreisRadius(handles.SelectKreis(handles.Counter-1)))/norm(vec));
%                             if vec(2)<0
%                                 alpha = pi + alpha;
%                             end
                            punkt(1,:) = handles.KreisPosi(handles.SelectKreis(handles.Counter-1),:)+[handles.KreisRadius(handles.SelectKreis(handles.Counter-1))*cos(alpha) ...
                                handles.KreisRadius(handles.SelectKreis(handles.Counter-1))*sin(alpha)]*[cos(beta) -sin(beta) ;-sin(beta) -cos(beta) ];
                            punkt(4,:) = handles.KreisPosi(i,:)+[r*cos(alpha) r*sin(alpha)]*[cos(beta) -sin(beta) ;-sin(beta) -cos(beta) ];
                            handles.figSeil3(1) = plot(punkt(4,1),punkt(4,2),'bo');
                            handles.figSeil3(2) = plot([punkt(4,1) punkt(handles.SelectType(handles.Counter - 1),1)],[punkt(4,2) punkt(handles.SelectType(handles.Counter - 1),2)],'b');
                            handles.figSeil3(3) = plot(punkt(handles.SelectType(handles.Counter - 1),1),punkt(handles.SelectType(handles.Counter - 1),2),'bo');
                        else
                            alpha = acos((+r+handles.KreisRadius(handles.SelectKreis(handles.Counter-1)))/norm(vec));
%                             if vec(2)<0
%                                 alpha = pi + alpha;
%                             end
                            punkt(2,:) = handles.KreisPosi(handles.SelectKreis(handles.Counter-1),:)+[handles.KreisRadius(handles.SelectKreis(handles.Counter-1))*cos(alpha) ...
                                handles.KreisRadius(handles.SelectKreis(handles.Counter-1))*sin(alpha)]*[cos(beta) -sin(beta) ;+sin(beta) +cos(beta) ];
                            punkt(4,:) = handles.KreisPosi(i,:)+[r*cos(alpha) r*sin(alpha)]*[-cos(beta) sin(beta) ;-sin(beta) -cos(beta) ];
                            handles.figSeil3(1) = plot(punkt(4,1),punkt(4,2),'bo');
                            handles.figSeil3(2) = plot([punkt(4,1) punkt(handles.SelectType(handles.Counter - 1),1)],[punkt(4,2) punkt(handles.SelectType(handles.Counter - 1),2)],'b');
                            handles.figSeil3(3) = plot(punkt(handles.SelectType(handles.Counter - 1),1),punkt(handles.SelectType(handles.Counter - 1),2),'bo');
                        end
                        
                    end
                else %if (norm(pos - handles.KreisPosi(i,:)) < handles.KreisRadius(i)*0.618) %&& i~=handles.SelectKreis1
                    handles.figSeil3(1) = plot(handles.KreisPosi(i,1) , handles.KreisPosi(i,2),'bo');
                    handles.figSeil3(2) = plot([handles.KreisPosi(i,1) handles.Remem(1,1)],[handles.KreisPosi(i,2) handles.Remem(1,2)],'b');
                end
            end
        end
     %else
         %handles.figSeil3 = figure(1);
    %end
end
dimLager = size(handles.LagerPos);
for i = 1:dimLager(1)
    if norm(pos - handles.LagerPos(i,:))<1 

        delete(handles.dete);
        handles.dete(handles.Counter+1) = plot(handles.LagerPos(i,1),handles.LagerPos(i,2),'bo');
        handles.Remem(handles.Counter+1,:) = handles.LagerPos(i,:);
        if handles.Counter == 1
            delete(handles.figSeil2);
            handles.figSeil2 = plot([handles.LagerPos(i,1) handles.Remem(1,1)],[handles.LagerPos(i,2) handles.Remem(1,2)],'b');
        elseif handles.Counter == 2 && handles.SelectType(handles.Counter - 1)
            delete(handles.figSeil3);
            vec = handles.KreisPosi(handles.SelectKreis(handles.Counter-1),:)-handles.LagerPos(i,:);
            beta = asin(vec(2)/norm(vec));
            if vec(1)>0
                beta = pi - beta;
            end
            alpha = acos(r/norm(vec));
            punkt(1,:) = handles.KreisPosi(handles.SelectKreis(handles.Counter-1),:)+[r*cos(alpha) r*sin(alpha)]*[cos(beta) -sin(beta) ;-sin(beta) -cos(beta) ];
            punkt(2,:) = handles.KreisPosi(handles.SelectKreis(handles.Counter-1),:)+[r*cos(alpha) r*sin(alpha)]*[cos(beta) -sin(beta) ;sin(beta) cos(beta) ];
            handles.figSeil3(1) = 0;
%             handles.figSeil3(2) = plot([punkt(handles.SelectType,1) handles.LagerPos(i,1)],[punkt(handles.SelectType,2) handles.LagerPos(i,2)],'b');
            [handles.figSeil3(2)] = drawSpring(punkt(handles.SelectType(handles.Counter - 1),1),punkt(handles.SelectType(handles.Counter - 1),2),handles.LagerPos(i,1),handles.LagerPos(i,2),handles,0,handles.FederIsOn,handles.axes1);
            handles.figSeil3(3) = plot(punkt(handles.SelectType(handles.Counter - 1),1),punkt(handles.SelectType(handles.Counter - 1),2),'bo');
        end

        
    end
end
guidata(hObject,handles);



function [figLager] = drawLager (x,y,w,r,gca)
phi=0:0.1:2*pi;
figLager(1) = plot(gca,x+r*sin(w)+r*cos(phi),y-r*cos(w)+r*sin(phi),'b'); hold on;   % Beginn des FL
figLager(2) = plot(gca,[x+2*r*sin(w),x+4*r*sin(w)-2*r*cos(w)],[y-2*r*cos(w),y-4*r*cos(w)-2*r*sin(w)],'b'); hold on;
figLager(3) = plot(gca,[x+2*r*cos(w)+4*r*sin(w),x+2*r*sin(w)],[y-4*r*cos(w)+2*r*sin(w),y-2*r*cos(w)],'b'); hold on;
figLager(4) = plot(gca,[x+4*r*sin(w)-2*r*cos(w),x+2*r*cos(w)+4*r*sin(w)],[y-4*r*cos(w)-2*r*sin(w),y-4*r*cos(w)+2*r*sin(w)],'b'); hold on;
figLager(5) = plot(gca,[x-3*r*cos(w)+5*r*sin(w),x+3*r*cos(w)+5*r*sin(w)],[y-5*r*cos(w)-3*r*sin(w),y-5*r*cos(w)+3*r*sin(w)],'b'); hold on;
for i=0:2
figLager(6+i) = plot(gca,[x-1.5*r*cos(w)+5*r*sin(w)+2*r*cos(w)*i,x-2.5*r*cos(w)+2*r*cos(w)*i+6*r*sin(w)],[y-5*r*cos(w)-1.5*r*sin(w)+2*r*sin(w)*i,y-6*r*cos(w)-2.5*r*sin(w)+2*r*sin(w)*i],'b'); hold on;
end 


% --- Executes on button press in SeilErz.
function SeilErz_Callback(hObject, eventdata, handles)
% hObject    handle to SeilErz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.figure1,'WindowButtonMotionFcn',@drawSeil);
set(handles.figure1,'WindowButtonDownFcn',@drawSeil);
set(handles.figure1, 'selectionType','open');
handles.Counter = 0;
guidata(handles.figure1,handles);

function drawSeil(hObject,eventdata)
%input :handles.Counter=0, Kreismiitelpunkt
%output : handles.figSeil , handles.Remem ,
% handles.figSeil2(Template),handles.nukber = 1 (Template)
handles = guidata(hObject);
m_type = get(hObject, 'selectionType');
% pos = get(handles.figure1, 'currentpoint');
pos = get(handles.axes1, 'currentpoint');
pos = [pos(1,1) pos(1,2)];
if strcmp(m_type, 'normal')
    handles.Counter = handles.Counter+1;
    if handles.Counter == 1
        handles.figSeil(1) = plot(pos(1),pos(2),'bo');
        handles.Remem(handles.Counter,:) = pos;
    elseif handles.Counter == 2
%         handles.figSeil(2:3) = handles.figSeil2;
%     elseif handles.Counter == 3
        set(hObject,'WindowButtonMotionFcn','');
        set(handles.figure1,'WindowButtonDownFcn','');
    end
    handles.nukber = 0;
    handles.figSeil2 = [];
    set(handles.figure1, 'selectionType','open');
end

if handles.Counter
%     if handles.nukber 
%         delete(handles.figSeil(2));
%     end
    handles.nukber = 0;
    if ~isempty(handles.figSeil2)
        delete(handles.figSeil2);
    end
    for i = 1;size(handles.KreisPosi)
        if norm(pos - handles.KreisPosi(i,:))>2
            if handles.nukber == 1
                handles.figSeil2(1) = plot([pos(1) handles.Remem(1,1)],[pos(2) handles.Remem(1,2)],'b');
                handles.figSeil2(2) = plot(pos(1),pos(2),'bo');
            end
            handles.nukber = 1;
        elseif norm(pos - handles.KreisPosi(i,:))> 1
            r = sqrt(2);
            vec = handles.KreisPosi(i,:)-handles.Remem(1,:);
            beta = asin(vec(2)/norm(vec));
            if vec(1)>0
                beta = pi - beta;
            end
            alpha = acos(r/norm(vec));
            punkt(1,:) = handles.KreisPosi(i,:)+[r*cos(alpha) r*sin(alpha)]*[cos(beta) -sin(beta) ;-sin(beta) -cos(beta) ];
            punkt(2,:) = handles.KreisPosi(i,:)+[r*cos(alpha) r*sin(alpha)]*[cos(beta) -sin(beta) ;sin(beta) cos(beta) ];
            if norm(pos-punkt(1,:))<norm(pos-punkt(2,:))
                handles.figSeil2(1) = plot(punkt(1,1),punkt(1,2),'bo');
                handles.figSeil2(2) = plot([punkt(1,1) handles.Remem(1,1)],[punkt(1,2) handles.Remem(1,2)],'b');
            else
                handles.figSeil2(1) = plot(punkt(2,1),punkt(2,2),'bo');
                handles.figSeil2(2) = plot([punkt(2,1) handles.Remem(1,1)],[punkt(2,2) handles.Remem(1,2)],'b');
            end
        else
            handles.figSeil2(1) = plot(handles.KreisPosi(i,1) , handles.KreisPosi(i,2),'bo');
            handles.figSeil2(2) = plot([handles.KreisPosi(i,1) handles.Remem(1,1)],[handles.KreisPosi(i,2) handles.Remem(1,2)],'b');
        end
    end
end
guidata(hObject,handles);


% --- Executes on button press in Reset.
function Reset_Callback(hObject, eventdata, handles)
% hObject    handle to Reset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if ~isempty(handles.figSeil2)
    delete(handles.figSeil2);
end
if ~isempty(handles.figSeil3)
%             delete(handles.Seil(handles.Counter));
    delete(handles.figSeil3);
    handles.figSeil3 = [];
end


% --- Executes on button press in FederOn.
function FederOn_Callback(hObject, eventdata, handles)
% hObject    handle to FederOn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% handles = guidata(hObject);
if handles.FederIsOn == 0
    handles.FederIsOn = 2;
elseif handles.FederIsOn == 2
    handles.FederIsOn = 0;
end
guidata(hObject,handles);
