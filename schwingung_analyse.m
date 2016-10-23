function varargout = schwingung_analyse(varargin)
% SCHWINGUNG_ANALYSE MATLAB code for schwingung_analyse.fig
%      SCHWINGUNG_ANALYSE, by itself, creates a new SCHWINGUNG_ANALYSE or raises the existing
%      singleton*.
%
%      H = SCHWINGUNG_ANALYSE returns the handle to a new SCHWINGUNG_ANALYSE or the handle to
%      the existing singleton*.
%
%      SCHWINGUNG_ANALYSE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SCHWINGUNG_ANALYSE.M with the given input arguments.
%
%      SCHWINGUNG_ANALYSE('Property','Value',...) creates a new SCHWINGUNG_ANALYSE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before schwingung_analyse_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to schwingung_analyse_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help schwingung_analyse

% Last Modified by GUIDE v2.5 09-Sep-2016 13:16:12

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @schwingung_analyse_OpeningFcn, ...
                   'gui_OutputFcn',  @schwingung_analyse_OutputFcn, ...
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


% --- Executes just before schwingung_analyse is made visible.
function schwingung_analyse_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to schwingung_analyse (see VARARGIN)

% Choose default command line output for schwingung_analyse
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
set(handles.figure1,'units','normalized','Position',[0 0 0.97 0.9]) %Anpassung der GUI Gr?e an den Bildschirm
set(handles.kosy,'units','centimeters','Position',[1 1 15 15]); %Fl?he f? Animation bereitgestellt

set(handles.oberflaeche,'units','normalized','Position',[0.5 0.85 0.1 0.1])%Position des Pushbuttons Oberlf?he erzeugen
set(handles.oberf,'units','normalized','Position',[0.75 0.5 0.16 0.2])%Position des Panels Oberfl?he
set(handles.punkte,'units','normalized','Position',[0.05 0.3 0.86 0.69])%Anordnung innerhalb des gennanten Panels
set(handles.ok,'units','normalized','Position',[0.7 0.05 0.2 0.2])%Pos: Button OK
set(handles.next,'units','normalized','Position',[0.1 0.05 0.45 0.2])%Pos: Button next

set(handles.rechteck,'units','normalized','Position',[0.5 0.72 0.1 0.1])%Pos: Pushbutton Rechteck
set(handles.rechteck_pos,'units','normalized','Position',[0.75 0.5 0.16 0.25])%Pos: Pannel Rechteck
set(handles.laenge,'units','normalized','Position',[0.1 0.8 0.15 0.1])%Pos: in Pannel
set(handles.breite,'units','normalized','Position',[0.1 0.61 0.15 0.1])%Pos: in Pannel
set(handles.winkel,'units','normalized','Position',[0.1 0.42 0.15 0.1])%Pos: in Pannel
set(handles.x_pos,'units','normalized','Position',[0.1 0.23 0.15 0.1])%Pos: in Pannel
set(handles.y_pos,'units','normalized','Position',[0.1 0.04 0.15 0.1])%Pos: in Pannel
set(handles.l,'units','normalized','Position',[0.4 0.8 0.3 0.1])%Pos: in Panel
set(handles.b,'units','normalized','Position',[0.4 0.61 0.3 0.1])%Pos: in Panel
set(handles.w,'units','normalized','Position',[0.4 0.42 0.3 0.1])%Pos: in Panel
set(handles.x,'units','normalized','Position',[0.4 0.23 0.3 0.1])%Pos: in Panel
set(handles.y,'units','normalized','Position',[0.4 0.04 0.3 0.1])%Pos: in Panel
set(handles.ok_rechteck,'units','normalized','Position',[0.75 0.04 0.2 0.1])%Pos: in Panel
set(handles.kosy,'units','centimeters','Position',[1 1 15 15]); %Fl?he f? Animation bereitgestellt


set(handles.loslager,'units','normalized','Position',[0.5 0.59 0.1 0.1])%Pos: in Panel
set(handles.festlager,'units','normalized','Position',[0.61 0.59 0.1 0.1])%Pos: in Panel
set(handles.auflager_fest,'units','normalized','Position',[0.75 0.5 0.12 0.2])%Pos: Pannel Rechteck
set(handles.text34,'units','normalized','Position',[0.1 0.80 0.1 0.1])%Pos: in Panel
set(handles.text35,'units','normalized','Position',[0.1 0.50 0.1 0.1])%Pos: in Panel
set(handles.text36,'units','normalized','Position',[0.08 0.20 0.3 0.1])%Pos: in Panel
set(handles.fest_x,'units','normalized','Position',[0.4 0.80 0.2 0.1])%Pos: in Panel
set(handles.fest_y,'units','normalized','Position',[0.4 0.50 0.2 0.1])%Pos: in Panel
set(handles.fest_winkel,'units','normalized','Position',[0.4 0.20 0.2 0.1])%Pos: in Panel
set(handles.fest_ok,'units','normalized','Position',[0.7 0.05 0.25 0.1])%Pos: in Panel


set(handles.v1,'units','normalized','Position',[0.5 0.46 0.1 0.1]); %Fl?he f? Animation bereitgestellt 
set(handles.push_seil,'units','normalized','Position',[0.61 0.46 0.1 0.1]); %Fl?he f? Animation bereitgestellt 

set(handles.generalK,'units','normalized','Position',[0.5 0.33 0.1 0.1]); %
set(handles.gen_koord,'units','normalized','Position',[0.75 0.5 0.1 0.2])%Pos: Panel Generalisierte Koordinate
set(handles.gen_co,'units','normalized','Position',[0.75 0.5 0.1 0.2])%Pos: Panel Generalisierte Koordinate
set(handles.koeper,'units','normalized','Position',[0.1 0.8 0.3 0.1])%Pos: in Panel
set(handles.winkel1,'units','normalized','Position',[0.1 0.6 0.3 0.1])%Pos: in Panel
set(handles.gen_ko,'units','normalized','Position',[0.75 0.5 0.35 0.1])%Pos: in Panel
set(handles.w_k,'units','normalized','Position',[0.6 0.6 0.35 0.1])%Pos: in Panel
set(handles.ok_gen,'units','normalized','Position',[0.6 0.05 0.35 0.1])%Pos: in Panel
set(handles.a_x,'units','normalized','Position',[0.1 0.4 0.35 0.1])%Pos: in Panel
set(handles.a_y,'units','normalized','Position',[0.1 0.2 0.35 0.1])%Pos: in Panel
set(handles.x_a,'units','normalized','Position',[0.6 0.4 0.35 0.1])%Pos: in Panel
set(handles.y_a,'units','normalized','Position',[0.6 0.2 0.35 0.1])%Pos: in Panel

set(handles.fertig,'units','normalized','Position',[0.61 0.33 0.1 0.1]); %

set(handles.push_kreis,'units','normalized','Position',[0.61 0.72 0.1 0.1])%Pos: in Panel
set(handles.k_x,'units','normalized','Position',[0.1 0.80 0.1 0.1])%Pos: in Panel
set(handles.k_y,'units','normalized','Position',[0.1 0.50 0.1 0.1])%Pos: in Panel
set(handles.k_r,'units','normalized','Position',[0.1 0.20 0.1 0.1])%Pos: in Panel
set(handles.panel_kreis,'units','normalized','Position',[0.75 0.50 0.1 0.2])%Pos: in Panel
set(handles.x_k,'units','normalized','Position',[0.4 0.80 0.35 0.1])%Pos: in Panel
set(handles.y_k,'units','normalized','Position',[0.4 0.50 0.35 0.1])%Pos: in Panel
set(handles.r_k,'units','normalized','Position',[0.4 0.20 0.35 0.1])%Pos: in Panel
set(handles.k_ok,'units','normalized','Position',[0.7 0.05 0.25 0.1])%Pos: in Panel
set(handles.kosy,'units','centimeters','Position',[1 1 15 15]); %Fl?he f? Animation bereitgestellt
set(handles.kosy,'units','centimeters','Position',[1 1 15 15]); %Fl?he f? Animation bereitgestellt
set(handles.kosy,'units','centimeters','Position',[1 1 15 15]); %Fl?he f? Animation bereitgestellt
set(handles.abrollbedingung,'units','normalized','Position',[0.75 0.4 .13 .2]); %Fl?he f? Animation bereitgestellt
set(handles.rollen,'units','normalized','Position',[0.15 0.5 .7 .25]); %Fl?he f? Animation bereitgestellt
set(handles.gleiten,'units','normalized','Position',[0.15 0.2 .7 .25]); %Fl?he f? Animation bereitgestellt
set(handles.text17,'units','normalized','Position',[0.15 0.85 .4 .1]); %Fl?he f? Animation bereitgestellt
set(handles.oberflaechenbedingung,'units','normalized','Position',[0.6 0.85 .4 .1]); %Fl?he f? Animation bereitgestellt
set(handles.dgl_text,'units','normalized','Position',[0.02 0.1 .95 .7]); %Fl?he f? Animation bereitgestellt 

set(handles.dgl,'units','normalized','Position',[0.47 0.05 0.54 0.2])%Position des Pannels DGL
set(handles.t1,'units','normalized','Position',[0.045 0.43 0.041 0.18]); %Fl?he f? Animation bereitgestellt 
set(handles.t2,'units','normalized','Position',[0.092 0.43 0.041 0.18]); %Fl?he f? Animation bereitgestellt 
set(handles.t3,'units','normalized','Position',[0.045 0.15 0.041 0.18]); %Fl?he f? Animation bereitgestellt 
set(handles.t4,'units','normalized','Position',[0.092 0.15 0.041 0.18]); %Fl?he f? Animation bereitgestellt 
set(handles.t5,'units','normalized','Position',[0.327 0.43 0.041 0.18]); %Fl?he f? Animation bereitgestellt 
set(handles.t6,'units','normalized','Position',[0.373 0.43 0.041 0.18]); %Fl?he f? Animation bereitgestellt 
set(handles.t7,'units','normalized','Position',[0.327 0.15 0.041 0.18]); %Fl?he f? Animation bereitgestellt 
set(handles.t8,'units','normalized','Position',[0.373 0.15 0.041 0.18]); %Fl?he f? Animation bereitgestellt 
set(handles.t9,'units','normalized','Position',[0.606 0.43 0.041 0.18]); %Fl?he f? Animation bereitgestellt 
set(handles.t10,'units','normalized','Position',[0.652 0.43 0.041 0.18]); %Fl?he f? Animation bereitgestellt 
set(handles.t11,'units','normalized','Position',[0.606 0.15 0.041 0.18]); %Fl?he f? Animation bereitgestellt 
set(handles.t12,'units','normalized','Position',[0.652 0.15 0.041 0.18]); %Fl?he f? Animation bereitgestellt 
set(handles.t13,'units','normalized','Position',[0.886 0.43 0.043 0.18]); %Fl?he f? Animation bereitgestellt 
set(handles.t14,'units','normalized','Position',[0.886 0.15 0.043 0.18]); %Fl?he f? Animation bereitgestellt 
set(handles.text28,'units','normalized','Position',[0.209 0.43 0.03 0.23]); %Fl?he f? Animation bereitgestellt 
set(handles.text29,'units','normalized','Position',[0.209 0.15 0.03 0.23]); %Fl?he f? Animation bereitgestellt 
set(handles.text30,'units','normalized','Position',[0.487 0.43 0.031 0.23]); %Fl?he f? Animation bereitgestellt 
set(handles.text31,'units','normalized','Position',[0.487 0.15 0.031 0.23]); %Fl?he f? Animation bereitgestellt
set(handles.text32,'units','normalized','Position',[0.767 0.43 0.031 0.23]); %Fl?he f? Animation bereitgestellt 
set(handles.text33,'units','normalized','Position',[0.767 0.15 0.031 0.23]); %Fl?he f? Animation bereitgestellt

set(handles.text21,'units','normalized','Position',[0.83 0.23 0.15 0.1]); %Fl?he f? Animation bereitgestellt
set(handles.nnvx,'units','normalized','Position',[0.927 0.32 0.023 0.023]); %Fl?he f? Animation bereitgestellt
set(handles.nnvdx,'units','normalized','Position',[0.927 0.29 0.023 0.023]); %Fl?he f? Animation bereitgestellt
set(handles.nnvy,'units','normalized','Position',[0.927 0.26 0.023 0.023]); %Fl?he f? Animation bereitgestellt
set(handles.nnvdy,'units','normalized','Position',[0.927 0.23 0.023 0.023]); %Fl?he f? Animation bereitgestellt

set(handles.counter2,'units','normalized','Position',[0.95 0.72 0.031 0.23]); %Fl?he f? Animation bereitgestellt
set(handles.counter3,'units','normalized','Position',[0.95 0.68 0.031 0.23]); %Fl?he f? Animation bereitgestellt
set(handles.counter4,'units','normalized','Position',[0.95 0.64 0.031 0.23]); %Fl?he f? Animation bereitgestellt
set(handles.counter5,'units','normalized','Position',[0.95 0.6 0.031 0.23]); %Fl?he f? Animation bereitgestellt
set(handles.counter_koerperzahl,'units','normalized','Position',[0.95 0.56 0.031 0.23]); %Fl?he f? Animation bereitgestellt
%Achsensysteme bearbeiten
guidata(hObject, handles);


%Variable
here=0;
here2=0;
rotation_rollen1=0;
handles.rotation_rollen1=rotation_rollen1;
handles.here=here;
handles.here2=here2;
handles.start_generalisiertekoordinatex1=0;
handles.rot_um_fest2=0;
handles.rot_um_fest1=0;
handles.Remem3 = [];
handles.Selected = [];
abroll1=0;
abroll2=0;
abroll3=0;
abroll4=0;
handles.abroll1=abroll1;
handles.abroll2=0;
handles.abroll3=0;
handles.abroll4=0;
handles.bez_koerper1=110;
handles.bez_koerper2=110;
guidata(hObject, handles);
rotation_rollen2=0;
rotation_rollen3=0;
handles.rotation_rollen2=0;
handles.rotation_rollen3=0;
POS_Koerper_t0=[];
handles.POS_Koerper_t0=POS_Koerper_t0;
handles.drehung2=0;


handles.Kreis_Info=[];
handles.Lager_Info=[];
handles.Koordinate_Info=[];
handles.h=[];
handles.Rechteck_Info=[];
handles.o1=[];
handles.o2=[];
handles.o3=[];
handles.o4=[];
handles.bb=[];
guidata(hObject, handles);


% UIWAIT makes schwingung_analyse wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = schwingung_analyse_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in oberflaeche.
function oberflaeche_Callback(hObject, eventdata, handles)
% hObject    handle to oberflaeche (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%Öffnet das Pannel um Oberfläche einzugeben. Und löscht alle vorherigen Plots. Und resetet den Counter
set(handles.oberf,'Visible','on');
axes(handles.kosy);
cla(handles.kosy,'reset');
newString=0;
set(handles.counter, 'String', newString );
set(handles.punkte,'Data',{'1','1';'11','1'});


% --- Executes on button press in ok.
function ok_Callback(hObject, eventdata, handles)
% hObject    handle to ok (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%liest die Positionen der Anfang und Endpunkte aus und plotet diese in das
%system KOSY. Weiterhin lässt er das Pannel verschwinden.

 %Counter
  % Read current text and convert it to a number.
currentCounterValue = str2double(get(handles.counter, 'String'));

% Create a new string with the number being 1 more than the current number.
newString = sprintf('%d', int32(currentCounterValue +1));

% Send the new string to the text control.
set(handles.counter, 'String', newString );
data = str2double(get(handles.punkte, 'data'));

set(handles.oberf,'Visible','off'); 
 if currentCounterValue==0
        if data(1,1)<= data(2,1)
        m1=(data(2,2)-data(1,2))/(data(2,1)-data(1,1));
        b1=data(1,2)-m1*data(1,1);
        fkt1 =@(x) m1*x+b1; %FKT der Oberflächenfunktion
        limit11=data(1,1);%Bestimmung der Limiten der FKT
        limit12=data(2,1);
        limit13=data(1,2);
        limit14=data(2,2);
        X=[limit11;limit12;limit13;limit14];
        else
        m1=(data(1,2)-data(2,2))/(data(1,1)-data(2,1));
        b1=data(1,2)-m1*data(1,1);
        fkt1 =@(x) m1*x+b1; %FKT der Oberflächenfunktion
        limit11=data(2,1);%Bestimmung der Limiten der FKT
        limit12=data(1,1);
        limit13=data(1,2);
        limit14=data(2,2);
        X=[limit11;limit12;limit13;limit14];
        end
      a=max(X);
        handles.X=X;
        handles.m1=m1;
        handles.b1=b1;
        
    elseif currentCounterValue==1
        X=handles.X;
        if data(1,1)<= data(2,1)
        m2=(data(2,2)-data(1,2))/(data(2,1)-data(1,1));
        b2=data(1,2)-m2*data(1,1);
        fkt2 =@(x) m2*x+b2; %FKT der Oberflächenfunktion
        limit21=data(1,1);%Bestimmung der Limiten der FKT
        limit22=data(2,1);
        limit23=data(1,2);
        limit24=data(2,2);
        [X]=[X;limit21;limit22;limit23;limit24];
     
        else
        m2=(data(1,2)-data(2,2))/(data(1,1)-data(2,1));
        b2=data(1,2)-m2*data(1,1);
        fkt2 =@(x) m2*x+b2; %FKT der Oberflächenfunktion
        limit21=data(2,1);%Bestimmung der Limiten der FKT
        limit22=data(1,1);
        limit23=data(1,2);
        limit24=data(2,2);
        [X]=[X;limit21;limit22;limit23;limit24];
        end
          a=max(X) ;
          handles.X=X;    %Merken der Variable
          handles.m2=m2;
          handles.b2=b2;
     elseif currentCounterValue==2
         X=handles.X; 
        if data(1,1)<= data(2,1)
        m3=(data(2,2)-data(1,2))/(data(2,1)-data(1,1));
        b3=data(1,2)-m3*data(1,1);
        fkt3 =@(x) m3*x+b3; %FKT der Oberflächenfunktion
        limit31=data(1,1);%Bestimmung der Limiten der FKT
        limit32=data(2,1);
        limit33=data(1,2);
        limit34=data(2,2);
        [X]=[X;limit31;limit32;limit33;limit34];
     
     
        else
        m3=(data(1,2)-data(2,2))/(data(1,1)-data(2,1));
        b3=data(1,2)-m3*data(1,1);
        fkt3 =@(x) m3*x+b3; %FKT der Oberflächenfunktion
        limit31=data(2,1);%Bestimmung der Limiten der FKT
        limit32=data(1,1);
        limit33=data(1,2);
        limit34=data(2,2);
         [X]=[X;limit31;limit32;limit33;limit34];
     
        
        end
          a=max(X);
          handles.X=X;
          handles.m3=m3;
          handles.b3=b3;
      elseif currentCounterValue==3
          X=handles.X;
        if data(1,1)<= data(2,1)
        m4=(data(2,2)-data(1,2))/(data(2,1)-data(1,1));
        b4=data(1,2)-m4*data(1,1);
        fkt4 =@(x) m4*x+b4; %FKT der Oberflächenfunktion
        limit41=data(1,1);%Bestimmung der Limiten der FKT
        limit42=data(2,1);
        limit43=data(1,2);
        limit44=data(2,2);
        
         [X]=[X;limit41;limit42;limit43;limit44];
     
        else
        m4=(data(1,2)-data(2,2))/(data(1,1)-data(2,1));
        b4=data(1,2)-m4*data(1,1);
        fkt4 =@(x) m4*x+b4; %FKT der Oberflächenfunktion
        limit41=data(1,1);%Bestimmung der Limiten der FKT
        limit42=data(2,1);
        limit43=data(1,2);
        limit44=data(2,2);
        [X]=[X;limit41;limit42;limit43;limit44];
         
        end
            a=max(X);
            handles.X=X;
            handles.m4=m4;
            handles.b4=b4;
    else
        fprintf('Stop');
        
        
     
      end
  if currentCounterValue==0
            m1=handles.m1;
            b1=handles.b1;
            [m]=m1;
            [b]=b1;
            handles.m=m;
            handles.bv=b;
        elseif currentCounterValue==1
            m2=handles.m2;
            b2=handles.b2;
            m=handles.m;
            b=handles.bv;
            [m]=[m;m2];
            [b]=[b;b2];
            handles.m=m;
            handles.bv=b;
        elseif currentCounterValue==2
            m3=handles.m3;
            b3=handles.b3;
            m=handles.m;
            b=handles.bv;
            [m]=[m;m3];
            [b]=[b;b3];
            handles.m=m;
            handles.bv=b;
        elseif currentCounterValue==3
            m4=handles.m4;
            b4=handles.b4;
            m=handles.m;
            b=handles.bv;
            [m]=[m;m4];
            [b]=[b;b4];
            handles.m=m;
            handles.bv=b;
        end
data = str2double(get(handles.punkte, 'data'));
disp(data);
axes(handles.kosy);
 plot(data(:,1),data(:,2),'k','LineWidth',3);
 xlim([0 a+a/10+1]);% Korrektur des Limits
 ylim([0 a+a/10+1]);
 handles.a=a;       % Speichern der größten Koordinate
 hold on;
 axes(handles.kosy);
 xlim([0 a+a/10+1]);% Korrektur des Limits
 ylim([0 a+a/10+1]);
 guidata(hObject,handles);
       
       

 


% --- Executes on button press in next.
function next_Callback(hObject, eventdata, handles)
% hObject    handle to next (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%liest die Positionen der Anfang und Endpunkte aus und plotet diese in das
%system KOSY. Bestimmung der Analytischen Fkt für die entsprechenden
%Abschnitte.(Counter)
data = str2double(get(handles.punkte, 'data'));

 %Counter
% Read current text and convert it to a number.
currentCounterValue = str2double(get(handles.counter, 'String'));

% Create a new string with the number being 1 more than the current number.
newString = sprintf('%d', int32(currentCounterValue +1));

% Send the new string to the text control.
set(handles.counter, 'String', newString );
    if currentCounterValue==0
        if data(1,1)<= data(2,1)
        m1=(data(2,2)-data(1,2))/(data(2,1)-data(1,1));
        b1=data(1,2)-m1*data(1,1);
        fkt1 =@(x) m1*x+b1; %FKT der Oberflächenfunktion
        limit11=data(1,1);%Bestimmung der Limiten der FKT
        limit12=data(2,1);
        limit13=data(1,2);
        limit14=data(2,2);
        X=[limit11;limit12;limit13;limit14];
        else
        m1=(data(1,2)-data(2,2))/(data(1,1)-data(2,1));
        b1=data(1,2)-m1*data(1,1);
        fkt1 =@(x) m1*x+b1; %FKT der Oberflächenfunktion
        limit11=data(2,1);%Bestimmung der Limiten der FKT
        limit12=data(1,1);
        limit13=data(1,2);
        limit14=data(2,2);
        X=[limit11;limit12;limit13;limit14];
        end
      a=max(X);
        handles.X=X;
        handles.m1=m1;
        handles.b1=b1;
        
    elseif currentCounterValue==1
        X=handles.X;
        if data(1,1)<= data(2,1)
        m2=(data(2,2)-data(1,2))/(data(2,1)-data(1,1));
        b2=data(1,2)-m2*data(1,1);
        fkt2 =@(x) m2*x+b2; %FKT der Oberflächenfunktion
        limit21=data(1,1);%Bestimmung der Limiten der FKT
        limit22=data(2,1);
        limit23=data(1,2);
        limit24=data(2,2);
        [X]=[X;limit21;limit22;limit23;limit24];
     
        else
        m2=(data(1,2)-data(2,2))/(data(1,1)-data(2,1));
        b2=data(1,2)-m2*data(1,1);
        fkt2 =@(x) m2*x+b2; %FKT der Oberflächenfunktion
        limit21=data(2,1);%Bestimmung der Limiten der FKT
        limit22=data(1,1);
        limit23=data(1,2);
        limit24=data(2,2);
        [X]=[X;limit21;limit22;limit23;limit24];
        end
          a=max(X) ;
          handles.X=X;    %Merken der Variable
          handles.m2=m2;
          handles.b2=b2;
     elseif currentCounterValue==2
         X=handles.X; 
        if data(1,1)<= data(2,1)
        m3=(data(2,2)-data(1,2))/(data(2,1)-data(1,1));
        b3=data(1,2)-m3*data(1,1);
        fkt3 =@(x) m3*x+b3; %FKT der Oberflächenfunktion
        limit31=data(1,1);%Bestimmung der Limiten der FKT
        limit32=data(2,1);
        limit33=data(1,2);
        limit34=data(2,2);
        [X]=[X;limit31;limit32;limit33;limit34];
     
     
        else
        m3=(data(1,2)-data(2,2))/(data(1,1)-data(2,1));
        b3=data(1,2)-m3*data(1,1);
        fkt3 =@(x) m3*x+b3; %FKT der Oberflächenfunktion
        limit31=data(2,1);%Bestimmung der Limiten der FKT
        limit32=data(1,1);
        limit33=data(1,2);
        limit34=data(2,2);
         [X]=[X;limit31;limit32;limit33;limit34];
     
        
        end
          a=max(X);
          handles.X=X;
          handles.m3=m3;
          handles.b3=b3;
      elseif currentCounterValue==3
          X=handles.X;
        if data(1,1)<= data(2,1)
        m4=(data(2,2)-data(1,2))/(data(2,1)-data(1,1));
        b4=data(1,2)-m4*data(1,1);
        fkt4 =@(x) m4*x+b4; %FKT der Oberflächenfunktion
        limit41=data(1,1);%Bestimmung der Limiten der FKT
        limit42=data(2,1);
        limit43=data(1,2);
        limit44=data(2,2);
        
         [X]=[X;limit41;limit42;limit43;limit44];
     
        else
        m4=(data(1,2)-data(2,2))/(data(1,1)-data(2,1));
        b4=data(1,2)-m4*data(1,1);
        fkt4 =@(x) m4*x+b4; %FKT der Oberflächenfunktion
        limit41=data(1,1);%Bestimmung der Limiten der FKT
        limit42=data(2,1);
        limit43=data(1,2);
        limit44=data(2,2);
        [X]=[X;limit41;limit42;limit43;limit44];
         
        end
            a=max(X);
            handles.X=X;
            handles.m4=m4;
            handles.b4=b4;
    else
        fprintf('Stop');
        
        
     
    end
        if currentCounterValue==0
            m1=handles.m1;
            b1=handles.b1;
            [m]=m1;
            [b]=b1;
            handles.m=m;
            handles.bv=b;
        elseif currentCounterValue==1
            m2=handles.m2;
            b2=handles.b2;
            m=handles.m;
            b=handles.bv;
            [m]=[m;m2];
            [b]=[b;b2];
            handles.m=m;
            handles.bv=b;
        elseif currentCounterValue==2
            m3=handles.m3;
            b3=handles.b3;
            m=handles.m;
            b=handles.bv;
            [m]=[m;m3];
            [b]=[b;b3];
            handles.m=m;
            handles.bv=b;
        elseif currentCounterValue==3
            m4=handles.m4;
            b4=handles.b4;
            m=handles.m;
            b=handles.bv;
            [m]=[m;m4];
            [b]=[b;b4];
            handles.m=m;
            handles.bv=b;
        end
    
    

    
    
    
    
    
    
    data = str2double(get(handles.punkte, 'data'));
axes(handles.kosy);
 plot(data(:,1),data(:,2),'k','LineWidth',3);
 xlim([0 a+a/10+1]);% Korrektur des Limits
 ylim([0 a+a/10+1]);
 handles.a=a;  % Speichern der größten Koordinate
 hold on;
 axes(handles.kosy);
 xlim([0 a+a/10+1]);% Korrektur des Limits
 ylim([0 a+a/10+1]);
 guidata(hObject,handles);
       
    


% --- Executes on button press in rechteck.
function rechteck_Callback(hObject, eventdata, handles)
% hObject    handle to rechteck (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%Counter2 bestimmt in welches Koordinatensystem das Rechteck geplotet wird.

 %Counter
% Read current text and convert it to a number.
currentCounterValue5 = str2double(get(handles.counter5, 'String'));

% Create a new string with the number being 1 more than the current number.
newString5 = sprintf('%d', int32(currentCounterValue5 +1));

% Send the new string to the text control.
set(handles.counter5, 'String', newString5 );




currentCounterValue2 = str2double(get(handles.counter_koerperzahl, 'String'));

% Create a new string with the number being 1 more than the current number.
newString_koerper = sprintf('%d', int32(currentCounterValue2 +1));

% Send the new string to the text control.
set(handles.counter_koerperzahl, 'String', newString_koerper );

set(handles.rechteck_pos,'Visible','on');
% if currentCounterValue5==0
%     guidata(hObject, handles);
%     axes(handles.kosy);
%     x=[0 0 1 1];
%     y=[1 0 0 1];
%     fill(x,y,'bl'); %set(gca,'xtick',[]); 
%     a=handles.a;
%     xlim([0 a+a/10+1]);% Korrektur des Limits
%     ylim([0 a+a/10+1]);
% %     set(gca,'ytick',[]);
% %     set(gca, 'Visible', 'off');
% end



function l_Callback(hObject, eventdata, handles)
% hObject    handle to l (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of l as text
%        str2double(get(hObject,'String')) returns contents of l as a double


% --- Executes during object creation, after setting all properties.
function l_CreateFcn(hObject, eventdata, handles)
% hObject    handle to l (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function w_Callback(hObject, eventdata, handles)
% hObject    handle to w (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of w as text
%        str2double(get(hObject,'String')) returns contents of w as a double


% --- Executes during object creation, after setting all properties.
function w_CreateFcn(hObject, eventdata, handles)
% hObject    handle to w (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function b_Callback(hObject, eventdata, handles)
% hObject    handle to b (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of b as text
%        str2double(get(hObject,'String')) returns contents of b as a double


% --- Executes during object creation, after setting all properties.
function b_CreateFcn(hObject, eventdata, handles)
% hObject    handle to b (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function x_Callback(hObject, eventdata, handles)
% hObject    handle to x (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of x as text
%        str2double(get(hObject,'String')) returns contents of x as a double


% --- Executes during object creation, after setting all properties.
function x_CreateFcn(hObject, eventdata, handles)
% hObject    handle to x (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function y_Callback(hObject, eventdata, handles)
% hObject    handle to y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of y as text
%        str2double(get(hObject,'String')) returns contents of y as a double


% --- Executes during object creation, after setting all properties.
function y_CreateFcn(hObject, eventdata, handles)
% hObject    handle to y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in ok_rechteck.
function ok_rechteck_Callback(hObject, eventdata, handles)
% hObject    handle to ok_rechteck (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
counter5=str2double(get(handles.counter5,'string'));
guidata(hObject, handles);
a=handles.a;
b=handles.b;
Rechteck_Info=handles.Rechteck_Info;
if counter5==1; 
    object1=0; %kosy enthält ein Rechteck
    ln1=str2double(get(handles.l,'string'));% Auslesen der Eingaben
    w1=str2double(get(handles.w,'string'))/360*2*pi;
    bn1=str2double(get(handles.b,'string'));
    xn1=str2double(get(handles.x,'string'));
    yn1=str2double(get(handles.y,'string'));
    %ln1=l1/(a+a/10+1)*12,6; %Anpassung der Dimensionen
    %bn1=b1/(a+a/10+1)*12,6;
    %xn1=x1/(a+a/10+1)*12,6;
    %yn1=y1/(a+a/10+1)*12,6;
    axes(handles.kosy);
    x=[xn1-cos(w1)*ln1/2-cos(pi/2-w1)*bn1/2 xn1-cos(w1)*ln1/2+cos(pi/2-w1)*bn1/2  xn1+cos(w1)*ln1/2+cos(pi/2-w1)*bn1/2 xn1+cos(w1)*ln1/2-cos(pi/2-w1)*bn1/2 ];
    y=[yn1-sin(w1)*ln1/2+sin(pi/2-w1)*bn1/2 yn1-sin(w1)*ln1/2-sin(pi/2-w1)*bn1/2 yn1+sin(w1)*ln1/2-sin(pi/2-w1)*bn1/2 yn1+sin(w1)*ln1/2+sin(pi/2-w1)*bn1/2];
    bb(1)=fill(x,y,'b');
    xlim([0 a+a/10+1]);% Korrektur des Limits
    ylim([0 a+a/10+1]);
    m=handles.m;
    handles.bb=bb;
    handles.RechteckPos=[xn1 yn1];
    handles.RechteckGroesse=[ln1 bn1 w1];
    Rechteck_Info(1,:)=[ xn1 , yn1 , ln1 , bn1 , w1 , 0 ];
     
    
%     set(gca,'ytick',[]);
%     set(gca, 'Visible', 'off');
    %hold on;
    handles.ln1=ln1;%merken der Variablen
    handles.w1=w1;
    handles.bn1=bn1;
    handles.xn1=xn1;
    handles.yn1=yn1;
    handles.object1=object1;
    
elseif counter5==2
    object2=0; %kosy enthält ein Rechteck
    ln2=str2double(get(handles.l,'string'));% Auslesen der Eingaben
    w2=str2double(get(handles.w,'string'))/360*2*pi;
    bn2=str2double(get(handles.b,'string'));
    xn2=str2double(get(handles.x,'string'));
    yn2=str2double(get(handles.y,'string'));
    %ln1=l1/(a+a/10+1)*12,6; %Anpassung der Dimensionen
    %bn1=b1/(a+a/10+1)*12,6;
    %xn1=x1/(a+a/10+1)*12,6;
    %yn1=y1/(a+a/10+1)*12,6;
    axes(handles.kosy);
    x=[xn2-cos(w2)*ln2/2-cos(pi/2-w2)*bn2/2 xn2-cos(w2)*ln2/2+cos(pi/2-w2)*bn2/2  xn2+cos(w2)*ln2/2+cos(pi/2-w2)*bn2/2 xn2+cos(w2)*ln2/2-cos(pi/2-w2)*bn2/2 ];
    y=[yn2-sin(w2)*ln2/2+sin(pi/2-w2)*bn2/2 yn2-sin(w2)*ln2/2-sin(pi/2-w2)*bn2/2 yn2+sin(w2)*ln2/2-sin(pi/2-w2)*bn2/2 yn2+sin(w2)*ln2/2+sin(pi/2-w2)*bn2/2];
    bb(2)=fill(x,y,'b');
    xlim([0 a+a/10+1]);% Korrektur des Limits
    ylim([0 a+a/10+1]);
     handles.bb=bb;
    m=handles.m;
    b=handles.b;
    handles.RechteckPos=[handles.RechteckPos ; xn2 yn2];
    handles.RechteckGroesse=[handles.RechteckGroesse ; ln2 bn2 w2];
%     set(gca,'ytick',[]);
%     set(gca, 'Visible', 'off');
    %hold on;
    handles.ln2=ln2;%merken der Variablen
    handles.w2=w2;
    handles.bn2=bn2;
    handles.xn2=xn2;
    handles.yn2=yn2;
    handles.object2=object2;
    
    Rechteck_Info(2,:)=[ xn2 , yn2 , ln2 , bn2 , w2 , 0 ];
    
    
    
elseif counter5==3
    object3=0; %kosy enthält ein Rechteck
    ln3=str2double(get(handles.l,'string'));% Auslesen der Eingaben
    w3=str2double(get(handles.w,'string'))/360*2*pi;
    bn3=str2double(get(handles.b,'string'));
    xn3=str2double(get(handles.x,'string'));
    yn3=str2double(get(handles.y,'string'));
    %ln1=l1/(a+a/10+1)*12,6; %Anpassung der Dimensionen
    %bn1=b1/(a+a/10+1)*12,6;
    %xn1=x1/(a+a/10+1)*12,6;
    %yn1=y1/(a+a/10+1)*12,6;
    axes(handles.kosy);
    x=[xn3-cos(w3)*ln3/2-cos(pi/2-w3)*bn3/2 xn3-cos(w3)*ln3/2+cos(pi/2-w3)*bn3/2  xn3+cos(w3)*ln3/2+cos(pi/2-w3)*bn3/2 xn3+cos(w3)*ln3/2-cos(pi/2-w3)*bn3/2 ];
    y=[yn3-sin(w3)*ln3/2+sin(pi/2-w3)*bn3/2 yn3-sin(w3)*ln3/2-sin(pi/2-w3)*bn3/2 yn3+sin(w3)*ln3/2-sin(pi/2-w3)*bn3/2 yn3+sin(w3)*ln3/2+sin(pi/2-w3)*bn3/2];
    bb(3)=fill(x,y,'b');
    xlim([0 a+a/10+1]);% Korrektur des Limits
    ylim([0 a+a/10+1]);
    m=handles.m;
    handles.bb=bb;
    handles.RechteckPos=[handles.RechteckPos ; xn3 yn3];
     handles.RechteckGroesse=[handles.RechteckGroesse ; ln3 bn3 w3];
%     set(gca,'ytick',[]);
%     set(gca, 'Visible', 'off');
    %hold on;
    handles.ln3=ln3;%merken der Variablen
    handles.w3=w3;
    handles.bn3=bn3;
    handles.xn3=xn3;
    handles.yn3=yn3;
    handles.object3=object3;
    Rechteck_Info(3,:)=[ xn3 , yn3 , ln3 , bn3 , w3 , 0 ];
    
  elseif counter5==4
    object4=0; %kosy enthält ein Rechteck
    ln4=str2double(get(handles.l,'string'));% Auslesen der Eingaben
    w4=str2double(get(handles.w,'string'))/360*2*pi;
    bn4=str2double(get(handles.b,'string'));
    xn4=str2double(get(handles.x,'string'));
    yn4=str2double(get(handles.y,'string'));
    %ln1=l1/(a+a/10+1)*12,6; %Anpassung der Dimensionen
    %bn1=b1/(a+a/10+1)*12,6;
    %xn1=x1/(a+a/10+1)*12,6;
    %yn1=y1/(a+a/10+1)*12,6;
    axes(handles.kosy);
    x=[xn4-cos(w4)*ln4/2-cos(pi/2-w4)*bn4/2 xn4-cos(w4)*ln4/2+cos(pi/2-w4)*bn4/2  xn4+cos(w4)*ln4/2+cos(pi/2-w4)*bn4/2 xn4+cos(w4)*ln4/2-cos(pi/2-w4)*bn4/2 ];
    y=[yn4-sin(w4)*ln4/2+sin(pi/2-w4)*bn4/2 yn4-sin(w4)*ln4/2-sin(pi/2-w4)*bn4/2 yn4+sin(w4)*ln4/2-sin(pi/2-w4)*bn4/2 yn4+sin(w4)*ln4/2+sin(pi/2-w4)*bn4/2];
    bb(4)=fill(x,y,'b');
    xlim([0 a+a/10+1]);% Korrektur des Limits
    ylim([0 a+a/10+1]);
    m=handles.m;
    handles.bb=bb;
    b=handles.b;
    handles.RechteckPos=[handles.RechteckPos ; xn4 yn4];
     handles.RechteckGroesse=[handles.RechteckGroesse ; ln4 bn4 w4];
%     set(gca,'ytick',[]);
%     set(gca, 'Visible', 'off');
    %hold on;
    handles.ln4=ln4;%merken der Variablen
    handles.w4=w4;
    handles.bn4=bn4;
    handles.xn4=xn4;
    handles.yn4=yn4;
    handles.object4=object4;
    Rechteck_Info(4,:)=[ xn4 , yn4 , ln4 , bn4 , w4 , 0 ];  
    
    
    
    
    
    
end


set(handles.rechteck_pos,'Visible','off');
handles.Rechteck_Info=Rechteck_Info;
guidata(hObject, handles);


% --- Executes on button press in generalK.
function generalK_Callback(hObject, eventdata, handles)
% hObject    handle to kosyeralK (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.gen_koord,'Visible','on');
 %Counter
% Read current text and convert it to a number.
currentCounterValue3 = str2double(get(handles.counter3, 'String'));

% Create a new string with the number being 1 more than the current number.
newString3 = sprintf('%d', int32(currentCounterValue3 +1));

% Send the new string to the text control.
set(handles.counter3, 'String', newString3 );
handles.currentCounterValue3=currentCounterValue3;
guidata(hObject,handles);
set(handles.gen_koord,'units','normalized','Position',[0.5 0.5 0.10 0.15]);
set(handles.gen_ko,'String','2');
set(handles.w_k,'String','0');
set(handles.x_a,'String','11');
set(handles.y_a,'String','4');



function gen_ko_Callback(hObject, eventdata, handles)
% hObject    handle to kosy_ko (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of kosy_ko as text
%        str2double(get(hObject,'String')) returns contents of gen_ko as a double


% --- Executes during object creation, after setting all properties.
function gen_ko_CreateFcn(hObject, eventdata, handles)
% hObject    handle to gen_ko (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function w_k_Callback(hObject, eventdata, handles)
% hObject    handle to w_k (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of w_k as text
%        str2double(get(hObject,'String')) returns contents of w_k as a double


% --- Executes during object creation, after setting all properties.
function w_k_CreateFcn(hObject, eventdata, handles)
% hObject    handle to w_k (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in ok_gen.
function ok_gen_Callback(hObject, eventdata, handles)
% hObject    handle to ok_gen (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
  guidata(hObject, handles);
  currentCounterValue3=handles.currentCounterValue3;
  Koordinate_Info=handles.Koordinate_Info;
if currentCounterValue3==0
bez_koerper1=str2double(get(handles.gen_ko,'string'));% Auslesen des Bezugskörpers
richtung1=str2double(get(handles.w_k,'string'))/360*2*pi% Auslesen der Richtung
x1=str2double(get(handles.x_a,'string'))
y1=str2double(get(handles.y_a,'string'))
handles.generalisierte_KOordinate_X1=x1;
handles.generalisierte_KOordinate_Y1=y1;
a=handles.a;
drehung=0; 
handles.drehung1=drehung;
handles.bez_koerper1=bez_koerper1;

%Koordinate_Info(1,:)=[ x1 , y1 , Translation , Richtung , Positiv, neg]
Koordinate_Info(1,:)=[ x1 , y1 , 1 , richtung1 , 0 , 0 ];

handles.Koordinate_Info=Koordinate_Info;
guidata(hObject, handles);
Kreis_Info=handles.Kreis_Info;


%Zeichnen der Generalisierten Koordinate

axes(handles.kosy);
        hold on;
        X=[x1 x1+a/10*cos(richtung1) x1+a*3/40*cos(richtung1)-sin(richtung1)*a/40  x1+a/10*cos(richtung1) x1+a*3/40*cos(richtung1)+sin(richtung1)*a/40];
        Y=[y1 y1+a/10*sin(richtung1) y1+a/40*cos(richtung1)+a*3/40*sin(richtung1) y1+a/10*sin(richtung1) y1-cos(richtung1)*a/40+a*3/40*sin(richtung1)];
        plot(X,Y,'k','LineWidth',2);
        xlim([0 a+a/10+1]);% Korrektur des Limits
        ylim([0 a+a/10+1]);

%Anzahl der Kreise
counter2=str2double(get(handles.counter2,'string')); 
%Anzahl der Rechtecke
counter5=str2double(get(handles.counter5,'string'));

    if bez_koerper1==1 %%%nur translation möglich
%         axes(handles.kosy);
%         hold on;
%         X=[x1 x1+a/10*cos(richtung1) x1+a*3/40*cos(richtung1)-sin(richtung1)*a/40  x1+a/10*cos(richtung1) x1+a*3/40*cos(richtung1)+sin(richtung1)*a/40];
%         Y=[y1 y1+a/10*sin(richtung1) y1+a/40*cos(richtung1)+a*3/40*sin(richtung1) y1+a/10*sin(richtung1) y1-cos(richtung1)*a/40+a*3/40*sin(richtung1)];
%         plot(X,Y,'k','LineWidth',2);
%         xlim([0 a+a/10+1]);% Korrektur des Limits
%         ylim([0 a+a/10+1]);
        handles.richtung11=richtung1;
        handles.x11=x1;
        handles.y11=y1;
        %set(gca, 'Visible', 'off');
        drehung=0; 
        handles.drehung1=drehung;
        guidata(hObject, handles);
        object1=handles.object1;
        
            if counter2~=0
                
                Kreis_Info(1,5)=1;
                Kreis_Info(1,7)=1;
                
                
            end
        
        
        
        
        % Berechnung der Anfangsbedingung
%         if object1==1 %Kreis
%         xn1kreis=handles.xn1kreis;
%         yn1kreis=handles.yn1kreis;
%         rn1kreis=handles.rn1kreis;
%         steigung_general=tan(richtung1);
%         steigung_orth=tan(richtung1+pi/2);
%         b_para=yn1kreis-steigung_general*xn1kreis;
%         b_ortho=y1-steigung_orth*x1;
%         
       % solv fkt
       
%             if steigung_general~=0 && steigung_general~=pi/2 && steigung_general~=pi && steigung_general~=3*pi/2 && steigung_general~=2*pi
%                 syms symsx symsy
%                 start_generalisiertekoordinatex1=solve(steigung_general*symsx+b_para == steigung_orth*symsx+b_ortho)
%                 start_generalisiertekoordinatey1=steigung_general*start_generalisiertekoordinatex1+b_para;
%                 handles.start_generalisiertekoordinatex1=start_generalisiertekoordinatex1;
%                 handles.start_generalisiertekoordinatey1=start_generalisiertekoordinatey1;
%                 guidata(hObject, handles);
%             elseif steigung_general==0 
%                 handles.start_generalisiertekoordinatex1=x1;
%                 handles.start_generalisiertekoordinatey1=yn1kreis;
%                 guidata(hObject, handles);
%             end
            
%         elseif object1==0 %Rechteck
% 
%             xn1reckteck=handles.xn1;
%             yn1rechteck=handles.yn1;
%             steigung_general=tan(richtung1);
%             steigung_orth=tan(richtung1+pi/2);
%             b_para=yn1rechteck-steigung_general*xn1reckteck;
%             b_ortho=y1-steigung_orth*x1;
%              % solv fkt
       
%                 if steigung_general~=0 && steigung_general~=pi/2 && steigung_general~=pi && steigung_general~=3*pi/2 && steigung_general~=2*pi
%                     syms symsx symsy
%                     start_generalisiertekoordinatex1=solve(steigung_general*symsx+b_para == steigung_orth*symsx+b_ortho)
%                     start_generalisiertekoordinatey1=steigung_general*start_generalisiertekoordinatex1+b_para;
%                     handles.start_generalisiertekoordinatex1=start_generalisiertekoordinatex1;
%                     handles.start_generalisiertekoordinatey1=start_generalisiertekoordinatey1;
%                     guidata(hObject, handles);
%                 elseif steigung_general==0 
%                     handles.start_generalisiertekoordinatex1=x1;
%                     handles.start_generalisiertekoordinatey1=yn1kreis;
%                     guidata(hObject, handles);
%                 end
%         end
        
    elseif bez_koerper1==2
        
        if counter2>=2
            
            Kreis_Info(2,5)=1;
            Kreis_Info(2,7)=1;
        else
            
            Rechteck_Info(2-counter2,6)=1;
            
        
        end
     
   elseif bez_koerper1==3
        
        if counter2>=3
            
            Kreis_Info(3,5)=1;
            Kreis_Info(3,7)=1;
            
        else
            
            Rechteck_Info(3-counter2,6)=1;
            
        end     
        
    elseif bez_koerper1==4
        
        if counter2>=4
            
            Kreis_Info(4,5)=1;
            Kreis_Info(4,7)=1;
            
        else
            
            Rechteck_Info(4-counter2,6)=1;
            
        end         
        
     elseif bez_koerper1==5
        
        if counter2>=5
            
            Kreis_Info(5,5)=1;
            Kreis_Info(5,7)=1;
            
        else
            
            Rechteck_Info(5-counter2,6)=1;
            
        end        
        
    end



elseif currentCounterValue3==1
    bez_koerper2=str2double(get(handles.gen_ko,'string'));% Auslesen des Bezugskörpers
    richtung2=str2double(get(handles.w_k,'string'))/360*2*pi% Auslesen der Richtung
    x2=str2double(get(handles.x_a,'string'));
    y2=str2double(get(handles.y_a,'string'));
    Kreis_Info=handles.Kreis_Info;
    a=handles.a;
    handles.bez_koerper2=bez_koerper2;
    Koordinate_Info(2,:)=[ x2 , y2 , 1 , richtung2 , 0 , 0 ];
    guidata(hObject, handles);
    %Anzahl der Kreise
counter2=str2double(get(handles.counter2,'string')); 
%Anzahl der Rechtecke
counter5=str2double(get(handles.counter5,'string'));

    
     hold on;
        X=[x2 x2+a/10*cos(richtung2) x2+a*3/40*cos(richtung2)-sin(richtung2)*a/40  x2+a/10*cos(richtung2) x2+a*3/40*cos(richtung2)+sin(richtung2)*a/40];
        Y=[y2 y2+a/10*sin(richtung2) y2+a/40*cos(richtung2)+a*3/40*sin(richtung2) y2+a/10*sin(richtung2) y2-cos(richtung2)*a/40+a*3/40*sin(richtung2)];
        plot(X,Y,'k','LineWidth',2);
        xlim([0 a+a/10+1]);% Korrektur des Limits
        ylim([0 a+a/10+1]);
        
 if bez_koerper2==1 %%%nur translation möglich
%         axes(handles.kosy);
%         hold on;
%         X=[x1 x1+a/10*cos(richtung1) x1+a*3/40*cos(richtung1)-sin(richtung1)*a/40  x1+a/10*cos(richtung1) x1+a*3/40*cos(richtung1)+sin(richtung1)*a/40];
%         Y=[y1 y1+a/10*sin(richtung1) y1+a/40*cos(richtung1)+a*3/40*sin(richtung1) y1+a/10*sin(richtung1) y1-cos(richtung1)*a/40+a*3/40*sin(richtung1)];
%         plot(X,Y,'k','LineWidth',2);
%         xlim([0 a+a/10+1]);% Korrektur des Limits
%         ylim([0 a+a/10+1]);
        handles.richtung11=richtung1;
        handles.x11=x1;
        handles.y11=y1;
        %set(gca, 'Visible', 'off');
        drehung=0; 
        handles.drehung1=drehung;
        guidata(hObject, handles);
        object1=handles.object1;
        
            if counter2~=0
                
                Kreis_Info(1,5)=2;
                Kreis_Info(1,7)=1;
                
                
            end
        
        
        
        
%         % Berechnung der Anfangsbedingung
%         if object2==1 %Kreis
%         xn1kreis=handles.xn1kreis;
%         yn1kreis=handles.yn1kreis;
%         rn1kreis=handles.rn1kreis;
%         steigung_general=tan(richtung1);
%         steigung_orth=tan(richtung1+pi/2);
%         b_para=yn1kreis-steigung_general*xn1kreis;
%         b_ortho=y1-steigung_orth*x1;
%         
%        % solv fkt
%        
%             if steigung_general~=0 && steigung_general~=pi/2 && steigung_general~=pi && steigung_general~=3*pi/2 && steigung_general~=2*pi
%                 syms symsx symsy
%                 start_generalisiertekoordinatex1=solve(steigung_general*symsx+b_para == steigung_orth*symsx+b_ortho)
%                 start_generalisiertekoordinatey1=steigung_general*start_generalisiertekoordinatex1+b_para;
%                 handles.start_generalisiertekoordinatex1=start_generalisiertekoordinatex1;
%                 handles.start_generalisiertekoordinatey1=start_generalisiertekoordinatey1;
%                 guidata(hObject, handles);
%             elseif steigung_general==0 
%                 handles.start_generalisiertekoordinatex1=x1;
%                 handles.start_generalisiertekoordinatey1=yn1kreis;
%                 guidata(hObject, handles);
%             end
%             
%         elseif object1==0 %Rechteck
% 
%             xn1reckteck=handles.xn1;
%             yn1rechteck=handles.yn1;
%             steigung_general=tan(richtung1);
%             steigung_orth=tan(richtung1+pi/2);
%             b_para=yn1rechteck-steigung_general*xn1reckteck;
%             b_ortho=y1-steigung_orth*x1;
%              % solv fkt
%        
%                 if steigung_general~=0 && steigung_general~=pi/2 && steigung_general~=pi && steigung_general~=3*pi/2 && steigung_general~=2*pi
%                     syms symsx symsy
%                     start_generalisiertekoordinatex1=solve(steigung_general*symsx+b_para == steigung_orth*symsx+b_ortho)
%                     start_generalisiertekoordinatey1=steigung_general*start_generalisiertekoordinatex1+b_para;
%                     handles.start_generalisiertekoordinatex1=start_generalisiertekoordinatex1;
%                     handles.start_generalisiertekoordinatey1=start_generalisiertekoordinatey1;
%                     guidata(hObject, handles);
%                 elseif steigung_general==0 
%                     handles.start_generalisiertekoordinatex1=x1;
%                     handles.start_generalisiertekoordinatey1=yn1kreis;
%                     guidata(hObject, handles);
%                 end
      %  end
        
    elseif bez_koerper2==2
        
        if counter2>=2
            
            Kreis_Info(2,5)=2;
            Kreis_Info(2,7)=1;
        else
            
            Rechteck_Info(2-counter2,6)=2;
            
        
        end
     
   elseif bez_koerper2==3
        
        if counter2>=3
            
            Kreis_Info(3,5)=2;
            Kreis_Info(3,7)=1;
            
        else
            
            Rechteck_Info(3-counter2,6)=2;
            
        end     
        
    elseif bez_koerper2==4
        
        if counter2>=4
            
            Kreis_Info(4,5)=2;
            Kreis_Info(4,7)=1;
            
        else
            
            Rechteck_Info(4-counter2,6)=2;
            
        end         
        
     elseif bez_koerper1==5
        
        if counter2>=5
            
            Kreis_Info(5,5)=2;
            Kreis_Info(5,7)=1;
            
        else
            
            Rechteck_Info(5-counter2,6)=2;
            
        end        
        
    end       
    
    
    
    
    
    
    
end
  set(handles.gen_co,'Visible','off');  
  handles.Kreis_Info=Kreis_Info;
  handles.Koordinate_Info=Koordinate_Info
  guidata(hObject, handles);
    



function x_a_Callback(hObject, eventdata, handles)
% hObject    handle to x_a (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of x_a as text
%        str2double(get(hObject,'String')) returns contents of x_a as a double


% --- Executes during object creation, after setting all properties.
function x_a_CreateFcn(hObject, eventdata, handles)
% hObject    handle to x_a (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function y_a_Callback(hObject, eventdata, handles)
% hObject    handle to y_a (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of y_a as text
%        str2double(get(hObject,'String')) returns contents of y_a as a double


% --- Executes during object creation, after setting all properties.
function y_a_CreateFcn(hObject, eventdata, handles)
% hObject    handle to y_a (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in fertig.
function fertig_Callback(hObject, eventdata, handles)
% hObject    handle to fertig (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%Auslesen der DGL und Berechnung durch das Hauptprogramm. Interpretation
%durch korrelation mit den gegebenen Bewegunbsrichtungen und Kopplungen.
%Neu positionierung der Objekte 
t1=str2double(get(handles.t1,'string'));% Auslesen der Eingaben
t2=str2double(get(handles.t2,'string'));
t3=str2double(get(handles.t3,'string'));
t4=str2double(get(handles.t4,'string'));
t5=str2double(get(handles.t5,'string'));
t6=str2double(get(handles.t6,'string'));
t7=str2double(get(handles.t7,'string'));
t8=str2double(get(handles.t8,'string'));
t9=str2double(get(handles.t9,'string'));
t10=str2double(get(handles.t10,'string'));
t11=str2double(get(handles.t11,'string'));
t12=str2double(get(handles.t12,'string'));
t13=str2double(get(handles.t13,'string'));
t14=str2double(get(handles.t14,'string'));
z1=str2double(get(handles.nnvx,'string'));
z2=str2double(get(handles.nnvdx,'string'));
z3=str2double(get(handles.nnvy,'string'));
z4=str2double(get(handles.nnvdy,'string'));

drehung1=0;
drehung2=0;

drehung1=handles.drehung1;
%drehung2=handles.drehung2;


format short
%start_generalisiertekoordinatex1= double(handles.start_generalisiertekoordinatex1)
%start_generalisiertekoordinatey1=  double(handles.start_generalisiertekoordinatey1)


Lager_Info=handles.Lager_Info;
Kreis_Info=handles.Kreis_Info;
Rechteck_Info=handles.Rechteck_Info;
Koordinate_Info=handles.Koordinate_Info;
o1=handles.o1;

b=handles.bb;


Anzahl_der_Kreise=size(Kreis_Info)
Anzahl_der_Lager=size(Lager_Info)

h=handles.h;


%befindet sich ein Lager in der Mitte des Kreises?!
if Anzahl_der_Lager(1,1)~=0

    for aaa=1:Anzahl_der_Kreise(1,1)
    
        for bbb=1:Anzahl_der_Lager 
            
            if Kreis_Info(aaa,1) == Lager_Info(bbb,1) && Kreis_Info(aaa,2) == Lager_Info(bbb,2)
                
                Kreis_Info(aaa,6)=1 
                
            end
            
        end
        
    end
    
end


% %Berechnung der Bewegungsrichtungen
%  pos_Seil=handles.Remem3;
%  size_pos_Seil=size(pos_Seil);
%  size_KreisPos=size(handles.KreisPos);
%  
%  for seilaufsatzpunkt=1:2:size_pos_Seil(1,1)
%      
%      for sp_kreis=1:size_KreisPos(1,1) %Fallen kreisMasseschwerpunkt und seilaufatzpunkt zusammen?
%          
%          if handles.Remem3(seilaufsatzpunkt,1)== handles.KreisPos(sp_kreis,1) && handles.Remem3(seilaufsatzpunkt,2)== handles.KreisPos(sp_kreis,2) &&
         

%Tranvo Rot in trans
anzahl_Seiluebertragung=size(handles.Selected);
currentCounterValue2 = str2double(get(handles.counter2, 'String'));
currentCounterValue5 = str2double(get(handles.counter5, 'String'));
gesammtzahl_koerper=currentCounterValue2+currentCounterValue5;
bez_koerper2=handles.bez_koerper2;
bez_koerper1=handles.bez_koerper1;

% rot_um_fest1=handles.rot_um_fest1;
% rot_um_fest2=handles.rot_um_fest2;
% % bz_k1=handles.bz_k1;
%  richtung_koerper=zeros(gesammtzahl_koerper(1,1),2);
% if rot_um_fest1==0
%     richtung(bz_k1)
    
    
    
    
    
    
    
    
    
% end

                   




% übertragung der bewegung durch seil
% richtung1=handles.richtung11

anzahl_Seiluebertragung=size(handles.Selected);
currentCounterValue2 = str2double(get(handles.counter2, 'String'));
currentCounterValue5 = str2double(get(handles.counter5, 'String'));
counter5=currentCounterValue5;
gesammtzahl_koerper=currentCounterValue2+currentCounterValue5
Remem3=handles.Remem3;

%BEZ 2 fehlt noch

richtung_koerper(bez_koerper1,1)=Koordinate_Info(1,4);
richtung_koerper(bez_koerper1,2)=1;
richtung_koerper(bez_koerper1,4)=1;

if bez_koerper2~=110
    
    richtung_koerper(bez_koerper2,1)=Koordinate_Info(2,4);
    
end

richtung_koerper(bez_koerper2,2)=2;
richtung_koerper(bez_koerper2,4)=1;


richtung_koerper;

for dbfDUFAWJVS=1:5

for zeile=1:anzahl_Seiluebertragung(1,1)
    
    for koerper_nr=1:gesammtzahl_koerper
        
        if koerper_nr == abs(handles.Selected(zeile,1))
            
            for koerper_nnr=1:gesammtzahl_koerper
                
                if koerper_nnr== abs(handles.Selected(zeile,2))
                    
                    if richtung_koerper(koerper_nr,4)==1  && richtung_koerper(koerper_nnr,4)~=1
                        x1=handles.Remem3(2*zeile-1,1);
                        x2=handles.Remem3(2*zeile,1);
                        y1=handles.Remem3(2*zeile-1,2);
                        y2=handles.Remem3(2*zeile,2);
                        richtung_koerper(koerper_nnr,1)=atan((y2-y1)/(x2-x1));
                        
                        if (x2-x1)==0
                            
                            if y2>y1
                                
                                richtung_koerper(koerper_nnr,1)=-pi/2;
                                
                            else
                               
                                richtung_koerper(koerper_nnr,1)=pi/2;
                                
                            end
                            
                        end
                        richtung_koerper(koerper_nnr,2)=1;
                        richtung_koerper(koerper_nnr,3)=drehung1;
                        richtung_koerper(koerper_nnr,4)=1;
                        
                        if currentCounterValue2>=koerper_nnr
                          %Andere objecte fehlen  
                            Kreis_Info(koerper_nnr,5)=Kreis_Info(koerper_nr,5);
                            
                        elseif koerper_nnr>=currentCounterValue2 % bei weiterne Körpern erweitern
                            
                            Rechteck_Info(koerper_nnr,6)=Rechteck_Info(koerper_nr,6);
                        end
                        
                        richtung_koerper
                        
                    end
                        
                    if richtung_koerper(koerper_nr,4)==1  && richtung_koerper(koerper_nnr,4)~=1
                        x1=handles.Remem3(2*zeile-1,1);
                        x2=handles.Remem3(2*zeile,1);
                        y1=handles.Remem3(2*zeile-1,2);
                        y2=handles.Remem3(2*zeile,2);
                        richtung_koerper(koerper_nnr,1)=atan((y2-y1)/(x2-x1));
                        
                        if (x2-x1)==0
                            
                            if y2>y1
                                
                                richtung_koerper(koerper_nnr,1)=-pi/2;
                                
                            else
                               
                                richtung_koerper(koerper_nnr,1)=pi/2;
                                
                            end
                            
                        end
                        
                        richtung_koerper(koerper_nnr,2)=2;
                        richtung_koerper(koerper_nnr,3)=drehung2;
                        richtung_koerper(koerper_nnr,4)=1;
                         if currentCounterValue2>=koerper_nnr
                          %Andere objecte fehlen  
                            Kreis_Info(koerper_nnr,5)=Kreis_Info(koerper_nr,5);
                            
                         elseif koerper_nnr>=currentCounterValue2 % bei weiterne Körpern erweitern
                            
                           Rechteck_Info(koerper_nnr,6)=Rechteck_Info(koerper_nr,6);
                           
                         end
                        
                        richtung_koerper
                        
                    end
                        
                    if richtung_koerper(koerper_nnr,4)==1  && richtung_koerper(koerper_nr,4)~=1
                        
                        x1=handles.Remem3(2*zeile-1,1)
                        x2=handles.Remem3(2*zeile,1)
                        y1=handles.Remem3(2*zeile-1,2)
                        y2=handles.Remem3(2*zeile,2)
                        richtung_koerper(koerper_nr,1)=atan((y2-y1)/(x2-x1));
                        
                        if (x2-x1)==0
                            
                            if y2>y1
                                
                                richtung_koerper(koerper_nnr,1)=-pi/2;
                                
                            else
                               
                                richtung_koerper(koerper_nnr,1)=pi/2;
                                
                            end
                            
                        end
                        
                        richtung_koerper(koerper_nr,2)=1;
                        richtung_koerper(koerper_nr,3)=drehung1;
                        richtung_koerper(koerper_nr,4)=1;
                        
                        if currentCounterValue2>=koerper_nnr
                          %Andere objecte fehlen  
                            Kreis_Info(koerper_nr,5)=Kreis_Info(koerper_nnr,5);
                            
                        elseif koerper_nnr>=currentCounterValue2 % bei weiterne Körpern erweitern
                            
                           Rechteck_Info(koerper_nr,6)=Rechteck_Info(koerper_nnr,6);
                         end
                        
                        richtung_koerper
                        
                    end
     
                    if richtung_koerper(koerper_nnr,4)==1  && richtung_koerper(koerper_nr,4)~=1
                        
                        x1=handles.Remem3(2*zeile-1,1)
                        x2=handles.Remem3(2*zeile,1)
                        y1=handles.Remem3(2*zeile-1,2)
                        y2=handles.Remem3(2*zeile,2)
                        richtung_koerper(koerper_nr,1)=atan((y2-y1)/(x2-x1));
                        
                        if (x2-x1)==0
                            
                            if y2>y1
                                
                                richtung_koerper(koerper_nnr,1)=-pi/2;
                                
                            else
                               
                                richtung_koerper(koerper_nnr,1)=pi/2;
                                
                            end
                            
                        end
                       
                        richtung_koerper(koerper_nr,2)=2;
                        richtung_koerper(koerper_nr,3)=drehung2;
                        richtung_koerper(koerper_nr,4)=1; 
                        if currentCounterValue2>=koerper_nnr
                          %Andere objecte fehlen  
                            Kreis_Info(koerper_nr,5)=Kreis_Info(koerper_nnr,5);
                            
                        elseif koerper_nnr>=currentCounterValue2 % bei weiterne Körpern erweitern
                            
                           Rechteck_Info(koerper_nr,6)=Rechteck_Info(koerper_nnr,6);
                            
                         end
                        
                        richtung_koerper
                        
                    end
                    
                   
                end
            end
        end
    end
end

end


%Rechnung
t0=0;
tend=20;
n=1;
[vc]=0;%Neue Vektoren für flüssigere Animation
            [ve]=0;
            [vvc]=0;%Neue Vektoren für flüssigere Animation
            [vve]=0;
if t2==0&&t3==0&&t4==0
        z0=[z1;z2];
        ein_massenschwinger = @ (t,z) [0 1;-(t9/t1) -(t5/t1)]*z +[0;t13/t1];
        [t,z]=ode45(ein_massenschwinger,[t0 tend],[z0(1) z0(2)]);
%         figure(1);
%         subplot(2,2,1); plot(t,z(:,1));grid on; title('position'); xlabel('t'); ylabel('z-pos');
%         subplot(2,2,2); plot(t,z(:,2));grid on; title('velocity'); xlabel('t'); ylabel('v');
        [nnvc]=0;%Neue Vektoren für flüssigere Animation
        [nnve]=0;
        nna=size(t);

            for hnnvb=1:nna(1,1)-1
            nnvc(2*hnnvb)=(z(hnnvb+1)+z(hnnvb))/2; %Erzeugung von mehr Koordinaten
            nnvc(2*hnnvb-1)=z(hnnvb);
            nnve(2*hnnvb)=(t(hnnvb+1)+t(hnnvb))/2; %Anpassung der Zeit
            nnve(2*hnnvb-1)=t(hnnvb);
            nnve;
              end

            [vc]=0;%Neue Vektoren für flüssigere Animation
            [ve]=0;
            nnaa=size(nnve);
          
            for hnnvbc=1:nnaa(1,2)-1
            vc(2*hnnvbc)=(nnvc(hnnvbc+1)+nnvc(hnnvbc))/2; %Erzeugung von mehr Koordinaten
            vc(2*hnnvbc-1)=nnvc(hnnvbc);
            ve(2*hnnvbc)=(nnve(hnnvbc+1)+nnve(hnnvbc))/2; %Anpassung der Zeit
            ve(2*hnnvbc-1)=nnve(hnnvbc);
            ve;
    
            end
         
            [vvc]=0;%Neue Vektoren für flüssigere Animation
            [vve]=0;
            vnnaa=size(ve);
          
            for hnnvbcc=1:vnnaa(1,2)-1
            vvc(2*hnnvbcc,1)=(vc(hnnvbcc+1)+vc(hnnvbcc))/2; %Erzeugung von mehr Koordinaten
            vvc(2*hnnvbcc-1,1)=vc(hnnvbcc);
            vve(2*hnnvbcc)=(ve(hnnvbcc+1)+ve(hnnvbcc))/2; %Anpassung der Zeit
            vve(2*hnnvbcc-1)=ve(hnnvbcc);
            vve;
            vnnaa=size(vvc);
    
            end
            
            
else 
        z0=[z1;z2;z3;z4];
        
        M1=[t1,t2;t3,t4];
        M2=[t5,t6;t7,t8];
        M3=[t9,t10;t11,t12];

        M=zeros(4,4);
        M(1:2,:)=[0 0 1 0;0 0 0 1]; 
        M(3:4,:)=[-inv(M1)*M3,-inv(M1)*M2];

        func_1 = @ (t,z) M *[z(1);z(2);z(3);z(4)];
        [t,z]=ode45(func_1,[0,20],[z1 z3 z2 z4]);
%         subplot(2,2,1); plot(t,z(:,1));grid on; title('position'); xlabel('t'); ylabel('z-pos');
%         subplot(2,2,2); plot(t,z(:,2));grid on; title('velocity'); xlabel('t'); ylabel('v');
    
%         massenschwingeruk = @(t,z) (eye(4)+[0 0 0 0;0 0 0 t2/t1;0 0 0 0;0 t3/t4 0 0])\[0 1 0 0;-t9/t1 -t5/t1 -t10/t1 -t6/t1;0 0 0 1;-t11/t4 -t7/t4 -t12/t4 -t8/t4]*z+(eye(4)+[0 0 0 0;0 0 0 t2/t1;0 0 0 0;0 t3/t4 0 0])\[0;t13/t1;0;t14/t4];
%         [t,z]=ode23t(massenschwingeruk,[t0 tend],[z0(1) z0(2) z0(3) z0(4)]);
%         figure(1);
%         %plot(t,z(:,1)); hold on;plot(t,z(:,3));
%         subplot(2,2,1); plot(t,z(:,1));grid on; title('position'); xlabel('t'); ylabel('z-pos');
%         subplot(2,2,2); plot(t,z(:,2));grid on; title('position'); xlabel('t'); ylabel('z-pos');
%         subplot(2,2,3); plot(t,z(:,3));grid on; title('position'); xlabel('t'); ylabel('z-pos');
%         subplot(2,2,4); plot(t,z(:,4));grid on; title('position'); xlabel('t'); ylabel('z-pos');


        [nnvc]=0;%Neue Vektoren für flüssigere Animation
        [nnve]=0;
            nna=size(t);

     for nz=1:2
                
            for hnnvb=1:nna(1,1)-1
            nnvc(2*hnnvb,nz)=(z(hnnvb+1,nz)+z(hnnvb,nz))/2; %Erzeugung von mehr Koordinaten
            nnvc(2*hnnvb-1,nz)=z(hnnvb,nz);
            nnve(2*hnnvb)=(t(hnnvb+1)+t(hnnvb))/2; %Anpassung der Zeit
            nnve(2*hnnvb-1)=t(hnnvb);
            nnve;
              end

            %[vc]=0;%Neue Vektoren für flüssigere Animation
            %[ve]=0;
            nnaa=size(nnve);
          
            for hnnvbc=1:nnaa(1,2)-1
            vc(2*hnnvbc,nz)=(nnvc(hnnvbc+1,nz)+nnvc(hnnvbc,nz))/2; %Erzeugung von mehr Koordinaten
            vc(2*hnnvbc-1,nz)=nnvc(hnnvbc,nz);
            ve(2*hnnvbc)=(nnve(hnnvbc+1)+nnve(hnnvbc))/2; %Anpassung der Zeit
            ve(2*hnnvbc-1)=nnve(hnnvbc);
            ve;
    
            end
         
            %[vvc]=0;%Neue Vektoren für flüssigere Animation
            %[vve]=0;
            vnnaa=size(ve);
          
            for hnnvbcc=1:vnnaa(1,2)-1
            vvc(2*hnnvbcc,nz)=(vc(hnnvbcc+1,nz)+vc(hnnvbcc,nz))/2; %Erzeugung von mehr Koordinaten
            vvc(2*hnnvbcc-1,nz)=vc(hnnvbcc,nz);
            vve(2*hnnvbcc)=(ve(hnnvbcc+1)+ve(hnnvbcc))/2; %Anpassung der Zeit
            vve(2*hnnvbcc-1)=ve(hnnvbcc);
            
            vnnaa=size(vvc);
    
            end
     end

end



%Neu positionierung der Objekte 
counter2=str2double(get(handles.counter2, 'String'));
object1=handles.object1;
%object2=handles.object2;
% object2=handles.object2;
% object3=handles.object3;
% object4=handles.object4;
bez_koerper1=handles.bez_koerper1;
drehung1=handles.drehung1;
abroll1=handles.abroll1;
a=handles.a;
nnvtt=0:0.2:2*pi;
easy1=size(abroll1);
rotation_rollen1=handles.rotation_rollen1;
for jenny1=2:easy1(1,1)
    anna1=abroll1(jenny1,1);
    if anna1==0
        rotation_rollen1=1;
    end
end

rotation_rollen2=0;
abroll2= handles.abroll2;        
 easy2=size(abroll2);
%rotation_rollen2=handles.rotation_rollen2;
for jenny2=2:easy2(1,1)
    anna2=abroll2(jenny2,1);
    if anna2==0
        rotation_rollen2=1;
    end
end
abroll3= handles.abroll3; 
rotation_rollen3=0;
easy3=size(abroll3);
%rotation_rollen3=handles.rotation_rollen3;
for jenny3=2:easy3(1,1)
    anna3=abroll3(jenny3,1);
    if anna3==0
        rotation_rollen3=1;
    end
end

%%% Berechnung der Ausgangspunkte der Körper



rotation_rollen=[rotation_rollen1 ; rotation_rollen2 ; rotation_rollen3];
x1=handles.generalisierte_KOordinate_X1;
y1=handles.generalisierte_KOordinate_Y1;
%object=[object1;object2;object3;object4;object5;object6];


%Einlagern der Ausgangspunkte der gen. Koordinate x1;y1
% for asdf=1:counter2+%counter5
%     
%     if asdf==1
%     
%         if richtung_koerper(asdf,2)==1
%         
%             if drehung1==0
%             
%                 if object(asdf)== 1 %  Kreis
%             
%                     xn1kreis=handles.xn1kreis;
%                     yn1kreis=handles.yn1kreis;
%                     rn1kreis=handles.rn1kreis;
%                     steigung_general=tan(richtung1);
%                     steigung_orth=tan(richtung1+pi/2);
%                     b_para=yn1kreis-steigung_general*xn1kreis;
%                     b_ortho=y1-steigung_orth*x1;
%         
%                             % solv fkt
%        
%                             if steigung_general~=0 && steigung_general~=pi/2 && steigung_general~=pi && steigung_general~=3*pi/2 && steigung_general~=2*pi
%                     
%                                 syms symsx symsy
%                     
%                                 start_generalisiertekoordinatex1=solve(steigung_general*symsx+b_para == steigung_orth*symsx+b_ortho)
%                                 start_generalisiertekoordinatey1=steigung_general*start_generalisiertekoordinatex1+b_para;
%                                 handles.start_generalisiertekoordinatex1=start_generalisiertekoordinatex1;
%                                 handles.start_generalisiertekoordinatey1=start_generalisiertekoordinatey1;
%                                 guidata(hObject, handles);
%                     
%                             elseif steigung_general==0 
%                     
%                                 handles.start_generalisiertekoordinatex1=x1;
%                                 handles.start_generalisiertekoordinatey1=yn1kreis;
%                                 guidata(hObject, handles);
%                     
%                             end
%                 
%                 elseif object(asdf)==0 %Rechteck
% 
%                     xn1reckteck=handles.xn1;
%                     yn1rechteck=handles.yn1;
%                     steigung_general=tan(richtung1);
%                     steigung_orth=tan(richtung1+pi/2);
%                     b_para=yn1rechteck-steigung_general*xn1reckteck;
%                     b_ortho=y1-steigung_orth*x1;
%                             % solv fkt
%        
%                             if steigung_general~=0 && steigung_general~=pi/2 && steigung_general~=pi && steigung_general~=3*pi/2 && steigung_general~=2*pi
%                     
%                                 syms symsx symsy
%                     
%                                 start_generalisiertekoordinatex1=solve(steigung_general*symsx+b_para == steigung_orth*symsx+b_ortho)
%                                 start_generalisiertekoordinatey1=steigung_general*start_generalisiertekoordinatex1+b_para;
%                                 handles.start_generalisiertekoordinatex1=start_generalisiertekoordinatex1;
%                                 handles.start_generalisiertekoordinatey1=start_generalisiertekoordinatey1;
%                                 guidata(hObject, handles);
%                     
%                             elseif steigung_general==0 
%                     
%                                 handles.start_generalisiertekoordinatex1=x1;
%                                 handles.start_generalisiertekoordinatey1=yn1kreis;
%                                 guidata(hObject, handles);
%                             end
%                 
%                 end
%             
%         elseif
% 
%         end
%         
%     elseif richtung_koerper(asdf,2)==2
% 
%         if drehung1==1
%             
%             if object(asdf)== 1% noch in Matrix schreiben %  Kreis
%             
%                 xn1kreis=handles.xn1kreis;
%                 yn1kreis=handles.yn1kreis;
%                 rn1kreis=handles.rn1kreis;
%                 steigung_general=tan(richtung2);
%                 steigung_orth=tan(richtung2+pi/2);
%                 b_para=yn1kreis-steigung_general*xn1kreis;
%                 b_ortho=y1-steigung_orth*x1;
%         
%                 % solv fkt
%        
%                 if steigung_general~=0 && steigung_general~=pi/2 && steigung_general~=pi && steigung_general~=3*pi/2 && steigung_general~=2*pi
%                     
%                     syms symsx symsy
%                     
%                     start_generalisiertekoordinatex1=solve(steigung_general*symsx+b_para == steigung_orth*symsx+b_ortho)
%                     start_generalisiertekoordinatey1=steigung_general*start_generalisiertekoordinatex1+b_para;
%                     handles.start_generalisiertekoordinatex1=start_generalisiertekoordinatex1;
%                     handles.start_generalisiertekoordinatey1=start_generalisiertekoordinatey1;
%                     guidata(hObject, handles);
%                     
%                 elseif steigung_general==0 
%                     
%                     handles.start_generalisiertekoordinatex1=x1;
%                     handles.start_generalisiertekoordinatey1=yn1kreis;
%                     guidata(hObject, handles);
%                     
%                 end
%                 
%             elseif object(asdf)==0 %Rechteck
% 
%                 xn1reckteck=handles.xn1;
%                 yn1rechteck=handles.yn1;
%                 steigung_general=tan(richtung1);
%                 steigung_orth=tan(richtung1+pi/2);
%                 b_para=yn1rechteck-steigung_general*xn1reckteck;
%                 b_ortho=y1-steigung_orth*x1;
%                 % solv fkt
%        
%                 if steigung_general~=0 && steigung_general~=pi/2 && steigung_general~=pi && steigung_general~=3*pi/2 && steigung_general~=2*pi
%                     
%                     syms symsx symsy
%                     
%                     start_generalisiertekoordinatex1=solve(steigung_general*symsx+b_para == steigung_orth*symsx+b_ortho)
%                     start_generalisiertekoordinatey1=steigung_general*start_generalisiertekoordinatex1+b_para;
%                     handles.start_generalisiertekoordinatex1=start_generalisiertekoordinatex1;
%                     handles.start_generalisiertekoordinatey1=start_generalisiertekoordinatey1;
%                     guidata(hObject, handles);
%                     
%                 elseif steigung_general==0 
%                     
%                     handles.start_generalisiertekoordinatex1=x1;
%                     handles.start_generalisiertekoordinatey1=yn1kreis;
%                     guidata(hObject, handles);
%                 end
%                 
%             end
%             
%         elseif
% 
%         end

    rn1=handles.rn1;%Auslesen der Geometrie
    xn1=handles.xn1;
    yn1=handles.yn1;
%      rn2=handles.rn2;%Auslesen der Geometrie
%      xn2=handles.xn2;
%      yn2=handles.yn2;
%      start_generalisiertekoordinatex2=xn2;
%      start_generalisiertekoordinatey2=yn2;
%     richtung1=handles.richtung11
    
    cos_richtung1=cos(richtung_koerper(1,1));
    sin_richtung1=sin(richtung_koerper(1,1));
%      cos_richtung2=cos(richtung_koerper(2,1));
%      sin_richtung2=sin(richtung_koerper(2,1));
handles.POS_Koerper_t0;
% for nnvt=1:vnnaa(1,2)-1
%  
%   POS_Koerper_t0  
% %Neu positionieren der einzelnen Objekte
% 
%  for nz=1:counter2+counter5 %Überprüfen ob 1 oder0!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
%      
%      if nz==1 %Objekt 1
%             %axes(handles.kosy);
%             % hold off;
% %           xlim([0 a+a/10+1]);% Korrektur des Limits
% %           ylim([0 a+a/10+1]); 
%                 if nz<=counter2 %Auslesen ob es sich um ein Kreis handelt.   Ersetzen durch: 
% %                      rn1=handles.rn1;%Auslesen der Geometrie
% %                      xn1=handles.xn1;
% %                      yn1=handles.yn1;
% 
%                     if Kreis_Info(nz,5)==1 %Auslesen welche generalisierte Koordinate in diesem Fall muss es 1 sein
%                         
%                                 %die Position bestimmt. 
%                                 %hhh=size(z(:,:)) ;  
%                                 %richtung1=handles.richtung11; %Auslesen der Bewegungsrichtung
%                                 
%                         if drehung1==0 %Auslesen ob es sich um Rotation oder Translation handelt. 
%                           
%                             if Kreis_Info(nz,4)==0;
%                              
%                                 %cla(handles.kosy);
%                                 %hold(handles.kosy,'on'); %nnvtt=0:0.01:2*pi;
%                                 %for nnvt=1:vnnaa(1,2)-1
%                                 %axes(handles.kosy);
%                                 
%                                 phi=round(-(vvc(nnvt))/rn1,4);
% %                               cos_richtung1=cos(richtung1);
% %                               sin_richtung1=sin(richtung1);
%                                
%                                 spec=[rn1*sin(0:0.2:pi) 0.5*rn1*sin(0:0.2:pi) 0.5*rn1*sin(pi:0.2:2*pi);rn1*cos(0:0.2:pi) -0.5*rn1+0.5*rn1*cos(pi:0.2:2*pi) 0.5*rn1+0.5*rn1*cos(pi:0.2:2*pi);...
%                                       rn1*sin(pi:0.2:2*pi) 0.5*rn1*sin(pi:0.2:2*pi) 0.5*rn1*sin(0:0.2:pi);rn1*cos(pi:0.2:2*pi) 0.5*rn1+0.5*rn1*cos(0:0.2:pi) -0.5*rn1+0.5*rn1*cos(0:0.2:pi)];
%                                 trans = [cos(phi) sin(phi) 0 0;-sin(phi) cos(phi) 0 0;0 0 cos(phi) sin(phi);0 0 -sin(phi) cos(phi)];
%                                 spec1 = (spec'*trans)'; 
%                                 
%                                 [x]=[POS_Koerper_t0(1,2)-vvc(160)*cos_richtung1+vvc(nnvt)*cos_richtung1+spec1(1,:);POS_Koerper_t0(1,2)-vvc(160)*cos_richtung1+vvc(nnvt)*cos_richtung1+spec1(3,:)];
%                                 [y]=[POS_Koerper_t0(1,3)-vvc(160)*sin_richtung1+vvc(nnvt)*sin_richtung1+spec1(2,:);POS_Koerper_t0(1,3)-vvc(160)*sin_richtung1+vvc(nnvt)*sin_richtung1+spec1(4,:)];
%                                 h(1) = fill(x(1,:),y(1,:),'k','Parent',gca);
%                                 hold on;
%                                 h(2) = fill(x(2,:),y(2,:),'w','Parent',gca);
%                                 h(3) = 0;  
%                                 xlim([0 a+a/10+1]);% Korrektur des Limits
%                                 ylim([0 a+a/10+1]);
%                            
%                                 %h=fill(nnvxx,nnvyy,'b','Parent',handles.kosy);
%                           
%                                 %pause(vve(nnvt+1)-vve(nnvt));
%                                 %set(gca,'xtick',[]); 
%                                 %set(gca,'ytick',[]);
%                                 %set(gca, 'Visible', 'off');
%                          else
%                              
%                              %axes(handles.kosy);
%                                 phi=0;
% %                                 cos_richtung1=cos(richtung1);
% %                                 sin_richtung1=sin(richtung1);
%                                
%                                 spec=[rn1*sin(0:0.2:pi) 0.5*rn1*sin(0:0.2:pi) 0.5*rn1*sin(pi:0.2:2*pi);rn1*cos(0:0.2:pi) -0.5*rn1+0.5*rn1*cos(pi:0.2:2*pi) 0.5*rn1+0.5*rn1*cos(pi:0.2:2*pi);...
%                                       rn1*sin(pi:0.2:2*pi) 0.5*rn1*sin(pi:0.2:2*pi) 0.5*rn1*sin(0:0.2:pi);rn1*cos(pi:0.2:2*pi) 0.5*rn1+0.5*rn1*cos(0:0.2:pi) -0.5*rn1+0.5*rn1*cos(0:0.2:pi)];
%                                 trans = [cos(phi) sin(phi) 0 0;-sin(phi) cos(phi) 0 0;0 0 cos(phi) sin(phi);0 0 -sin(phi) cos(phi)];
%                                 spec1 = (spec'*trans)'; 
%                                
%                                 %rdjdut=vvc(nnvt)*cos_richtung1
%                                 [x]=[start_generalisiertekoordinatex1+vvc(nnvt)*cos_richtung1+spec1(1,:);start_generalisiertekoordinatex1+vvc(nnvt)*cos_richtung1+spec1(3,:)];
%                                 [y]=[start_generalisiertekoordinatey1+vvc(nnvt)*sin_richtung1+spec1(2,:);start_generalisiertekoordinatey1+vvc(nnvt)*sin_richtung1+spec1(4,:)];
%                                 h(1) = fill(x(1,:),y(1,:),'k','Parent',gca);
%                                 hold on;
%                                 h(2) = fill(x(2,:),y(2,:),'w','Parent',gca);
%                                 h(3) = 0;  
%                                 xlim([0 a+a/10+1]);% Korrektur des Limits
%                                 ylim([0 a+a/10+1]);
%                            
%                               
%                          end
%                          
%                      else  
%                          
%                          if rot_um_fest1==0
%   
%                          end
%                          
%                          
%                          end
%                          end
%    
%                 end
%                     
%                      
%      elseif nz==2 %Objekt 1
%             %axes(handles.kosy);
%            % hold off;
% %               xlim([0 a+a/10+1]);% Korrektur des Limits
% %               ylim([0 a+a/10+1]); 
%                 if object2==1 %Auslesen ob es sich um ein Kreis handelt.
% %                      rn1=handles.rn1;%Auslesen der Geometrie
% %                      xn1=handles.xn1;
% %                      yn1=handles.yn1;
%      
          
%                 if richtung_koerper(2,2)==1 %Auslesen welche generalisierte Koordinate
%                                    %die Position bestimmt. 
%                                 %hhh=size(z(:,:)) ;  
%                                 %richtung1=handles.richtung11; %Auslesen der Bewegungsrichtung
%                      if drehung2==0 %Auslesen ob es sich um Rotation oder Translation handelt. 
%                           
%                          if rotation_rollen(nz,1)==1;
%                             %cla(handles.kosy);
%                             %hold(handles.kosy,'on'); %nnvtt=0:0.01:2*pi;
%                             %for nnvt=1:vnnaa(1,2)-1
%                                 %axes(handles.kosy);
%                                 phi=round(-(vvc(nnvt))/rn2,4);
% %                                 cos_richtung1=cos(richtung1);
% %                                 sin_richtung1=sin(richtung1);
%                                
%                                 spec=[rn2*sin(0:0.2:pi) 0.5*rn2*sin(0:0.2:pi) 0.5*rn2*sin(pi:0.2:2*pi);rn2*cos(0:0.2:pi) -0.5*rn2+0.5*rn2*cos(pi:0.2:2*pi) 0.5*rn2+0.5*rn2*cos(pi:0.2:2*pi);...
%                                       rn2*sin(pi:0.2:2*pi) 0.5*rn2*sin(pi:0.2:2*pi) 0.5*rn2*sin(0:0.2:pi);rn2*cos(pi:0.2:2*pi) 0.5*rn2+0.5*rn2*cos(0:0.2:pi) -0.5*rn2+0.5*rn2*cos(0:0.2:pi)];
%                                 trans = [cos(phi) sin(phi) 0 0;-sin(phi) cos(phi) 0 0;0 0 cos(phi) sin(phi);0 0 -sin(phi) cos(phi)];
%                                 spec1 = (spec'*trans)'; 
%                                 
%                                 [x]=[POS_Koerper_t0(2,1)-vvc(160)*cos_richtung1+vvc(nnvt)*cos_richtung2+spec1(1,:);POS_Koerper_t0(2,1)-vvc(160)*cos_richtung1+vvc(nnvt)*cos_richtung2+spec1(3,:)];
%                                 [y]=[POS_Koerper_t0(2,2)-vvc(160)*sin_richtung1+vvc(nnvt)*sin_richtung2+spec1(2,:);POS_Koerper_t0(2,2)-vvc(160)*sin_richtung1+vvc(nnvt)*sin_richtung2+spec1(4,:)];
%                                 g(1) = fill(x(1,:),y(1,:),'k','Parent',gca);
%                                 hold on;
%                                 g(2) = fill(x(2,:),y(2,:),'w','Parent',gca);
%                                 g(3) = 0;  
%                                 xlim([0 a+a/10+1]);% Korrektur des Limits
%                                 ylim([0 a+a/10+1]);
%                                 %h=fill(nnvxx,nnvyy,'b','Parent',handles.kosy);                        
%                                 %pause(vve(nnvt+1)-vve(nnvt));
%                                 %set(gca,'xtick',[]); 
%                                 %set(gca,'ytick',[]);
%                                 %set(gca, 'Visible', 'off');
%                          else
%                              
%                              %axes(handles.kosy);
%                                 phi=0;
% %                                 cos_richtung1=cos(richtung1);
% %                                 sin_richtung1=sin(richtung1);
%                                
%                                 spec=[rn2*sin(0:0.2:pi) 0.5*rn2*sin(0:0.2:pi) 0.5*rn2*sin(pi:0.2:2*pi);rn2*cos(0:0.2:pi) -0.5*rn2+0.5*rn2*cos(pi:0.2:2*pi) 0.5*rn2+0.5*rn2*cos(pi:0.2:2*pi);...
%                                       rn2*sin(pi:0.2:2*pi) 0.5*rn2*sin(pi:0.2:2*pi) 0.5*rn2*sin(0:0.2:pi);rn2*cos(pi:0.2:2*pi) 0.5*rn2+0.5*rn2*cos(0:0.2:pi) -0.5*rn2+0.5*rn2*cos(0:0.2:pi)];
%                                 trans = [cos(phi) sin(phi) 0 0;-sin(phi) cos(phi) 0 0;0 0 cos(phi) sin(phi);0 0 -sin(phi) cos(phi)];
%                                 spec1 = (spec'*trans)'; 
%                                
%                                 %rdjdut=vvc(nnvt)*cos_richtung1
%                                 [x]=[start_generalisiertekoordinatex2+vvc(nnvt)*cos_richtung2+spec1(1,:)-vvc(160)*cos_richtung2;start_generalisiertekoordinatex2+vvc(nnvt)*cos_richtung2+spec1(3,:)-vvc(160)*cos_richtung2];
%                                 [y]=[start_generalisiertekoordinatey2+vvc(nnvt)*sin_richtung2+spec1(2,:)-vvc(160)*sin_richtung2;start_generalisiertekoordinatey2+vvc(nnvt)*sin_richtung2+spec1(4,:)-vvc(160)*sin_richtung2];
%                                 g(1) = fill(x(1,:),y(1,:),'k','Parent',gca);
%                                 hold on;
%                                 g(2) = fill(x(2,:),y(2,:),'w','Parent',gca);
%                                 g(3) = 0;  
%                                 xlim([0 a+a/10+1]);% Korrektur des Limits
%                                 ylim([0 a+a/10+1]);
 
%                          end
%                          
%                      else  
%                          
%                          if rot_um_fest1==0
%   
%                          end
%                          
%                          end
%                          end
%                         
%                      end
%      end
%      
%  end
                    
%          pause(vve(nnvt+1)-vve(nnvt));
%                                     if nnvt ~= vnnaa(1,2)-1
%                                           delete(h);
%                                           delete(g);
%                                      end
% end

for nz=1:counter2+counter5
    
cos_richtung(nz,1)=cos(richtung_koerper(nz,1));
sin_richtung(nz,1)=sin(richtung_koerper(nz,1));

end

zaehler1=0;

for nz=1:counter2
    
    if Kreis_Info(nz,5)==1
    
        if Kreis_Info(nz,6)==1
        
            x_b=Kreis_Info(nz,1)
            zaehler1=zaehler1+1;
            
        end
        
    end
    
end

zaehler1=0;

% if o1(:,1)==bez_koerper1
%     
%     for nz=2:size(o1)
%         
%         for nzz=1:counter2
%             
%             if o1(nz,1)==nzz
%         
%             Kreis_Info(nzz,7)=1;
%             
%             end
%             
%         end
%         
%     end
%     
% end

        
 oh=[handles.o1 handles.o2 handles.o3 handles.o4]       
        
        
if Kreis_Info(:,6)==1

for nz=1:counter2
    
    if Kreis_Info(nz,5)==1
    
        if Kreis_Info(bez_koerper1,1)<x_b && Kreis_Info(nz,1)>x_b 
    
            Kreis_Info(nz,7)=1;
            
    
        end

        if Kreis_Info(bez_koerper1,1)>x_b && Kreis_Info(nz,1)<x_b 
    
            Kreis_Info(nz,7)=1;
            
        end
        
    end
    
    if oh(:,bez_koerper1)==oh(:,nz)
        
        Kreis_Info(nz,7)=1;
        
    end
    
end

end

for nz=1:counter2

if oh(:,bez_koerper1)==oh(:,nz)
        
        Kreis_Info(nz,7)=1;
        
end
    
end

% neu Positonieren der Elemente

row_Remem3 = size(handles.Remem3);
row_Remem3 = row_Remem3(1);
if ~isempty(handles.figSeil)
    delete(handles.figSeil);
    handles.figSeil = [];
end

for nnvt=160:vnnaa(1,1)-1
    
     if nnvt ~= vnnaa(1,2)-1
         
        
            if counter2~=0
                
                delete(h);
            
            end
            
            if counter5~=0
                
                delete(b);
                
            end
                                        
     end
    
    %Kreise neu Positionieren
    
    for nz=1:counter2
        
        %AUf welche generalisierte Koordinate wird bezug genommen
        
        if Kreis_Info(nz,5)==1 %generalisierte Koordinate 1
            
            % Handelt es sich heirbei um eine Translation oder Rotation
            
            if Koordinate_Info(1,3)==1 % in diesem Fall Translation
                
                %Rollen oder Gleiten
                
                Point_Nr = find(handles.Selected==nz);
                if size(Point_Nr) > 1
                    msgbox('Be Careful!');
                end
                
                %Überprüfen ob es der Bezugspörper ist
                
                if Kreis_Info(nz,7)==1 || Kreis_Info(nz,6)==1
                    
                    if Kreis_Info(nz,4)==0 % in dem Fall rollen                
                    
                        phi=round(-(vvc(nnvt,1))/Kreis_Info(nz,3),4);
                    
                                spec=[Kreis_Info(nz,3)*sin(0:0.2:pi) 0.5*Kreis_Info(nz,3)*sin(0:0.2:pi) 0.5*Kreis_Info(nz,3)*sin(pi:0.2:2*pi);Kreis_Info(nz,3)*cos(0:0.2:pi) -0.5*Kreis_Info(nz,3)+0.5*Kreis_Info(nz,3)*cos(pi:0.2:2*pi) 0.5*Kreis_Info(nz,3)+0.5*Kreis_Info(nz,3)*cos(pi:0.2:2*pi);...
                                      Kreis_Info(nz,3)*sin(pi:0.2:2*pi) 0.5*Kreis_Info(nz,3)*sin(pi:0.2:2*pi) 0.5*Kreis_Info(nz,3)*sin(0:0.2:pi);Kreis_Info(nz,3)*cos(pi:0.2:2*pi) 0.5*Kreis_Info(nz,3)+0.5*Kreis_Info(nz,3)*cos(0:0.2:pi) -0.5*Kreis_Info(nz,3)+0.5*Kreis_Info(nz,3)*cos(0:0.2:pi)];
                                trans = [cos(phi) sin(phi) 0 0;-sin(phi) cos(phi) 0 0;0 0 cos(phi) sin(phi);0 0 -sin(phi) cos(phi)];
                                spec1 = (spec'*trans)'; 
                                
                                [x]=[Kreis_Info(nz,1)-vvc(160,1)*cos_richtung(nz,1)+vvc(nnvt,1)*cos_richtung(nz,1)+spec1(1,:);Kreis_Info(nz,1)-vvc(160,1)*cos_richtung(nz,1)+vvc(nnvt,1)*cos_richtung(nz,1)+spec1(3,:)];
                                [y]=[Kreis_Info(nz,2)-vvc(160,1)*sin_richtung(nz,1)+vvc(nnvt,1)*sin_richtung(nz,1)+spec1(2,:);Kreis_Info(nz,2)-vvc(160,1)*sin_richtung(nz,1)+vvc(nnvt,1)*sin_richtung(nz,1)+spec1(4,:)];
                                h(nz,1) = fill(x(1,:),y(1,:),'k','Parent',gca);
                                hold on;
                                h(nz,2) = fill(x(2,:),y(2,:),'w','Parent',gca);
                                h(nz,3) = 0;  
                                xlim([0 a+a/10+1]);% Korrektur des Limits
                                ylim([0 a+a/10+1]);
                                if ~isempty(Point_Nr)
                                    handles.Remem3(Point_Nr,:) = [Kreis_Info(nz,1)-vvc(160,1)*cos_richtung(nz,1)+vvc(nnvt,1)*cos_richtung(nz,1) Kreis_Info(nz,2)-vvc(160,1)*sin_richtung(nz,1)+vvc(nnvt,1)*sin_richtung(nz,1)];
                                end
                                
                    elseif Kreis_Info(nz,4)==1 % in dem Fall gleiten
                    
                        phi=0;
                    
                                spec=[Kreis_Info(nz,3)*sin(0:0.2:pi) 0.5*Kreis_Info(nz,3)*sin(0:0.2:pi) 0.5*Kreis_Info(nz,3)*sin(pi:0.2:2*pi);Kreis_Info(nz,3)*cos(0:0.2:pi) -0.5*Kreis_Info(nz,3)+0.5*Kreis_Info(nz,3)*cos(pi:0.2:2*pi) 0.5*Kreis_Info(nz,3)+0.5*Kreis_Info(nz,3)*cos(pi:0.2:2*pi);...
                                      Kreis_Info(nz,3)*sin(pi:0.2:2*pi) 0.5*Kreis_Info(nz,3)*sin(pi:0.2:2*pi) 0.5*Kreis_Info(nz,3)*sin(0:0.2:pi);Kreis_Info(nz,3)*cos(pi:0.2:2*pi) 0.5*Kreis_Info(nz,3)+0.5*Kreis_Info(nz,3)*cos(0:0.2:pi) -0.5*Kreis_Info(nz,3)+0.5*Kreis_Info(nz,3)*cos(0:0.2:pi)];
                                trans = [cos(phi) sin(phi) 0 0;-sin(phi) cos(phi) 0 0;0 0 cos(phi) sin(phi);0 0 -sin(phi) cos(phi)];
                                spec1 = (spec'*trans)'; 
                                
                                [x]=[Kreis_Info(nz,1)-vvc(160,1)*cos_richtung(nz,1)+vvc(nnvt,1)*cos_richtung(nz,1)+spec1(1,:);Kreis_Info(nz,1)-vvc(160,1)*cos_richtung(nz,1)+vvc(nnvt,1)*cos_richtung(nz,1)+spec1(3,:)];
                                [y]=[Kreis_Info(nz,2)-vvc(160,1)*sin_richtung(nz,1)+vvc(nnvt,1)*sin_richtung(nz,1)+spec1(2,:);Kreis_Info(nz,2)-vvc(160,1)*sin_richtung(nz,1)+vvc(nnvt,1)*sin_richtung(nz,1)+spec1(4,:)];
                                h(nz,1) = fill(x(1,:),y(1,:),'k','Parent',gca);
                                hold on;
                                h(nz,2) = fill(x(2,:),y(2,:),'w','Parent',gca);
                                h(nz,3) = 0;  
                                xlim([0 a+a/10+1]);% Korrektur des Limits
                                ylim([0 a+a/10+1]);
                                if ~isempty(Point_Nr)
                                    handles.Remem3(Point_Nr,:) = [Kreis_Info(nz,1)-vvc(160,1)*cos_richtung(nz,1)+vvc(nnvt,1)*cos_richtung(nz,1) Kreis_Info(nz,2)-vvc(160,1)*sin_richtung(nz,1)+vvc(nnvt,1)*sin_richtung(nz,1)];
                                end
                                
                                
                    elseif  Kreis_Info(nz,4)==2 && Kreis_Info(nz,6)==0% in dem Fall gleiten
                    
                        phi=0;
                    
                                spec=[Kreis_Info(nz,3)*sin(0:0.2:pi) 0.5*Kreis_Info(nz,3)*sin(0:0.2:pi) 0.5*Kreis_Info(nz,3)*sin(pi:0.2:2*pi);Kreis_Info(nz,3)*cos(0:0.2:pi) -0.5*Kreis_Info(nz,3)+0.5*Kreis_Info(nz,3)*cos(pi:0.2:2*pi) 0.5*Kreis_Info(nz,3)+0.5*Kreis_Info(nz,3)*cos(pi:0.2:2*pi);...
                                      Kreis_Info(nz,3)*sin(pi:0.2:2*pi) 0.5*Kreis_Info(nz,3)*sin(pi:0.2:2*pi) 0.5*Kreis_Info(nz,3)*sin(0:0.2:pi);Kreis_Info(nz,3)*cos(pi:0.2:2*pi) 0.5*Kreis_Info(nz,3)+0.5*Kreis_Info(nz,3)*cos(0:0.2:pi) -0.5*Kreis_Info(nz,3)+0.5*Kreis_Info(nz,3)*cos(0:0.2:pi)];
                                trans = [cos(phi) sin(phi) 0 0;-sin(phi) cos(phi) 0 0;0 0 cos(phi) sin(phi);0 0 -sin(phi) cos(phi)];
                                spec1 = (spec'*trans)'; 
                                
                                [x]=[Kreis_Info(nz,1)-vvc(160,1)*cos_richtung(nz,1)+vvc(nnvt,1)*cos_richtung(nz,1)+spec1(1,:);Kreis_Info(nz,1)-vvc(160,1)*cos_richtung(nz,1)+vvc(nnvt,1)*cos_richtung(nz,1)+spec1(3,:)];
                                [y]=[Kreis_Info(nz,2)-vvc(160,1)*sin_richtung(nz,1)+vvc(nnvt,1)*sin_richtung(nz,1)+spec1(2,:);Kreis_Info(nz,2)-vvc(160,1)*sin_richtung(nz,1)+vvc(nnvt,1)*sin_richtung(nz,1)+spec1(4,:)];
                                h(nz,1) = fill(x(1,:),y(1,:),'k','Parent',gca);
                                hold on;
                                h(nz,2) = fill(x(2,:),y(2,:),'w','Parent',gca);
                                h(nz,3) = 0;  
                                xlim([0 a+a/10+1]);% Korrektur des Limits
                                ylim([0 a+a/10+1]);
                                 if ~isempty(Point_Nr)
                                    handles.Remem3(Point_Nr,:) = [Kreis_Info(nz,1)-vvc(160,1)*cos_richtung(nz,1)+vvc(nnvt,1)*cos_richtung(nz,1) Kreis_Info(nz,2)-vvc(160,1)*sin_richtung(nz,1)+vvc(nnvt,1)*sin_richtung(nz,1)];
                                end
                                
                    elseif Kreis_Info(nz,6)==1 % in dem Fall Rotation um ein Lager inder Mitte des Kreises
                     
                       % if zaehler1==1
                            
                            if Kreis_Info(bez_koerper1,2)> Kreis_Info(nz,2)
                            
                                phi=round(-(vvc(nnvt,1))/Kreis_Info(nz,3),4);
                            
                            else
                            
                                phi=round((vvc(nnvt,1))/Kreis_Info(nz,3),4);
                            
                            end
                            
                        %elseif zaehler1==2
                            
                            
                        
                        %end
                    
                                spec=[Kreis_Info(nz,3)*sin(0:0.2:pi) 0.5*Kreis_Info(nz,3)*sin(0:0.2:pi) 0.5*Kreis_Info(nz,3)*sin(pi:0.2:2*pi);Kreis_Info(nz,3)*cos(0:0.2:pi) -0.5*Kreis_Info(nz,3)+0.5*Kreis_Info(nz,3)*cos(pi:0.2:2*pi) 0.5*Kreis_Info(nz,3)+0.5*Kreis_Info(nz,3)*cos(pi:0.2:2*pi);...
                                      Kreis_Info(nz,3)*sin(pi:0.2:2*pi) 0.5*Kreis_Info(nz,3)*sin(pi:0.2:2*pi) 0.5*Kreis_Info(nz,3)*sin(0:0.2:pi);Kreis_Info(nz,3)*cos(pi:0.2:2*pi) 0.5*Kreis_Info(nz,3)+0.5*Kreis_Info(nz,3)*cos(0:0.2:pi) -0.5*Kreis_Info(nz,3)+0.5*Kreis_Info(nz,3)*cos(0:0.2:pi)];
                                trans = [cos(phi) sin(phi) 0 0;-sin(phi) cos(phi) 0 0;0 0 cos(phi) sin(phi);0 0 -sin(phi) cos(phi)];
                                spec1 = (spec'*trans)'; 
                                
                                [x]=[Kreis_Info(nz,1)+spec1(1,:);Kreis_Info(nz,1)+spec1(3,:)];
                                [y]=[Kreis_Info(nz,2)+spec1(2,:);Kreis_Info(nz,2)+spec1(4,:)];
                                h(nz,1) = fill(x(1,:),y(1,:),'k','Parent',gca);
                                hold on;
                                h(nz,2) = fill(x(2,:),y(2,:),'w','Parent',gca);
                                h(nz,3) = 0;  
                                xlim([0 a+a/10+1]);% Korrektur des Limits
                                ylim([0 a+a/10+1]);
                                if ~isempty(Point_Nr)
                                    handles.Remem3(Point_Nr,:) = [Kreis_Info(nz,1) Kreis_Info(nz,2)];
                                end
                                
                                end
                                
                else
                        
                            if Kreis_Info(nz,4)==0 % in dem Fall rollen                
                    
                                phi=round((vvc(nnvt,1))/Kreis_Info(nz,3),4);
                    
                                spec=[Kreis_Info(nz,3)*sin(0:0.2:pi) 0.5*Kreis_Info(nz,3)*sin(0:0.2:pi) 0.5*Kreis_Info(nz,3)*sin(pi:0.2:2*pi);Kreis_Info(nz,3)*cos(0:0.2:pi) -0.5*Kreis_Info(nz,3)+0.5*Kreis_Info(nz,3)*cos(pi:0.2:2*pi) 0.5*Kreis_Info(nz,3)+0.5*Kreis_Info(nz,3)*cos(pi:0.2:2*pi);...
                                      Kreis_Info(nz,3)*sin(pi:0.2:2*pi) 0.5*Kreis_Info(nz,3)*sin(pi:0.2:2*pi) 0.5*Kreis_Info(nz,3)*sin(0:0.2:pi);Kreis_Info(nz,3)*cos(pi:0.2:2*pi) 0.5*Kreis_Info(nz,3)+0.5*Kreis_Info(nz,3)*cos(0:0.2:pi) -0.5*Kreis_Info(nz,3)+0.5*Kreis_Info(nz,3)*cos(0:0.2:pi)];
                                trans = [cos(phi) sin(phi) 0 0;-sin(phi) cos(phi) 0 0;0 0 cos(phi) sin(phi);0 0 -sin(phi) cos(phi)];
                                spec1 = (spec'*trans)'; 
                                
                                [x]=[Kreis_Info(nz,1)-(-vvc(160,1)*cos_richtung(nz,1)+vvc(nnvt,1)*cos_richtung(nz,1)+spec1(1,:));Kreis_Info(nz,1)-(-vvc(160,1)*cos_richtung(nz,1)+vvc(nnvt,1)*cos_richtung(nz,1)+spec1(3,:))];
                                [y]=[Kreis_Info(nz,2)-(-vvc(160,1)*sin_richtung(nz,1)+vvc(nnvt,1)*sin_richtung(nz,1)+spec1(2,:));Kreis_Info(nz,2)-(-vvc(160,1)*sin_richtung(nz,1)+vvc(nnvt,1)*sin_richtung(nz,1)+spec1(4,:))];
                                h(nz,1) = fill(x(1,:),y(1,:),'k','Parent',gca);
                                hold on;
                                h(nz,2) = fill(x(2,:),y(2,:),'w','Parent',gca);
                                h(nz,3) = 0;  
                                xlim([0 a+a/10+1]);% Korrektur des Limits
                                ylim([0 a+a/10+1]);
                                if ~isempty(Point_Nr)
                                    handles.Remem3(Point_Nr,:) = [Kreis_Info(nz,1)-(-vvc(160,1)*cos_richtung(nz,1)+vvc(nnvt,1)*cos_richtung(nz,1)) Kreis_Info(nz,2)-(-vvc(160,1)*sin_richtung(nz,1)+vvc(nnvt,1)*sin_richtung(nz,1))];
                                end
                                
                    elseif Kreis_Info(nz,4)==1 % in dem Fall gleiten
                    
                                phi=0;
                    
                                spec=[Kreis_Info(nz,3)*sin(0:0.2:pi) 0.5*Kreis_Info(nz,3)*sin(0:0.2:pi) 0.5*Kreis_Info(nz,3)*sin(pi:0.2:2*pi);Kreis_Info(nz,3)*cos(0:0.2:pi) -0.5*Kreis_Info(nz,3)+0.5*Kreis_Info(nz,3)*cos(pi:0.2:2*pi) 0.5*Kreis_Info(nz,3)+0.5*Kreis_Info(nz,3)*cos(pi:0.2:2*pi);...
                                      Kreis_Info(nz,3)*sin(pi:0.2:2*pi) 0.5*Kreis_Info(nz,3)*sin(pi:0.2:2*pi) 0.5*Kreis_Info(nz,3)*sin(0:0.2:pi);Kreis_Info(nz,3)*cos(pi:0.2:2*pi) 0.5*Kreis_Info(nz,3)+0.5*Kreis_Info(nz,3)*cos(0:0.2:pi) -0.5*Kreis_Info(nz,3)+0.5*Kreis_Info(nz,3)*cos(0:0.2:pi)];
                                trans = [cos(phi) sin(phi) 0 0;-sin(phi) cos(phi) 0 0;0 0 cos(phi) sin(phi);0 0 -sin(phi) cos(phi)];
                                spec1 = (spec'*trans)'; 
                                
                                [x]=[Kreis_Info(nz,1)-(-vvc(160,1)*cos_richtung(nz,1)+vvc(nnvt,1)*cos_richtung(nz,1)+spec1(1,:));Kreis_Info(nz,1)-(-vvc(160,1)*cos_richtung(nz,1)+vvc(nnvt,1)*cos_richtung(nz,1)+spec1(3,:))];
                                [y]=[Kreis_Info(nz,2)-(-vvc(160,1)*sin_richtung(nz,1)+vvc(nnvt,1)*sin_richtung(nz,1)+spec1(2,:));Kreis_Info(nz,2)-(-vvc(160,1)*sin_richtung(nz,1)+vvc(nnvt,1)*sin_richtung(nz,1)+spec1(4,:))];
                                h(nz,1) = fill(x(1,:),y(1,:),'k','Parent',gca);
                                hold on;
                                h(nz,2) = fill(x(2,:),y(2,:),'w','Parent',gca);
                                h(nz,3) = 0;  
                                xlim([0 a+a/10+1]);% Korrektur des Limits
                                ylim([0 a+a/10+1]);
                                if ~isempty(Point_Nr)
                                    handles.Remem3(Point_Nr,:) = [Kreis_Info(nz,1)-(-vvc(160,1)*cos_richtung(nz,1)+vvc(nnvt,1)*cos_richtung(nz,1)) Kreis_Info(nz,2)-(-vvc(160,1)*sin_richtung(nz,1)+vvc(nnvt,1)*sin_richtung(nz,1))];
                                end
                                
                    elseif  Kreis_Info(nz,4)==2 && Kreis_Info(nz,6)==0% in dem Fall gleiten
                    
                                phi=0;
                    
                                spec=[Kreis_Info(nz,3)*sin(0:0.2:pi) 0.5*Kreis_Info(nz,3)*sin(0:0.2:pi) 0.5*Kreis_Info(nz,3)*sin(pi:0.2:2*pi);Kreis_Info(nz,3)*cos(0:0.2:pi) -0.5*Kreis_Info(nz,3)+0.5*Kreis_Info(nz,3)*cos(pi:0.2:2*pi) 0.5*Kreis_Info(nz,3)+0.5*Kreis_Info(nz,3)*cos(pi:0.2:2*pi);...
                                      Kreis_Info(nz,3)*sin(pi:0.2:2*pi) 0.5*Kreis_Info(nz,3)*sin(pi:0.2:2*pi) 0.5*Kreis_Info(nz,3)*sin(0:0.2:pi);Kreis_Info(nz,3)*cos(pi:0.2:2*pi) 0.5*Kreis_Info(nz,3)+0.5*Kreis_Info(nz,3)*cos(0:0.2:pi) -0.5*Kreis_Info(nz,3)+0.5*Kreis_Info(nz,3)*cos(0:0.2:pi)];
                                trans = [cos(phi) sin(phi) 0 0;-sin(phi) cos(phi) 0 0;0 0 cos(phi) sin(phi);0 0 -sin(phi) cos(phi)];
                                spec1 = (spec'*trans)'; 
                                
                                [x]=[Kreis_Info(nz,1)-(-vvc(160,1)*cos_richtung(nz,1)+vvc(nnvt,1)*cos_richtung(nz,1)+spec1(1,:));Kreis_Info(nz,1)-(-vvc(160,1)*cos_richtung(nz,1)+vvc(nnvt,1)*cos_richtung(nz,1)+spec1(3,:))];
                                [y]=[Kreis_Info(nz,2)-(-vvc(160,1)*sin_richtung(nz,1)+vvc(nnvt,1)*sin_richtung(nz,1)+spec1(2,:));Kreis_Info(nz,2)-(-vvc(160,1)*sin_richtung(nz,1)+vvc(nnvt,1)*sin_richtung(nz,1)+spec1(4,:))];
                                h(nz,1) = fill(x(1,:),y(1,:),'k','Parent',gca);
                                hold on;
                                h(nz,2) = fill(x(2,:),y(2,:),'w','Parent',gca);
                                h(nz,3) = 0;  
                                xlim([0 a+a/10+1]);% Korrektur des Limits
                                ylim([0 a+a/10+1]);   
                                if ~isempty(Point_Nr)
                                    handles.Remem3(Point_Nr,:) = [Kreis_Info(nz,1)-(-vvc(160,1)*cos_richtung(nz,1)+vvc(nnvt,1)*cos_richtung(nz,1)) Kreis_Info(nz,2)-(-vvc(160,1)*sin_richtung(nz,1)+vvc(nnvt,1)*sin_richtung(nz,1))];
                                end
                                
                            end
                                
                                 
                end
                
                
            else %Rotation
                
                if Kreis_Info(nz,7)==1 || Kreis_Info(nz,6)==1
                    
                    if Kreis_Info(nz,4)==0 % in dem Fall rollen        
                      
                    elseif Kreis_Info(nz,6)==1 % in dem Fall Rotation um ein Lager inder Mitte des Kreises
                        
                        phi=vvc(nnvt,1);
                     
                       % if zaehler1==1
                            
%                             if Kreis_Info(bez_koerper1,2)> Kreis_Info(nz,2)
%                             
%                                 phi=round(-(vvc(nnvt,1))/Kreis_Info(nz,3),4);
%                             
%                             else
%                             
%                                 phi=round((vvc(nnvt,1))/Kreis_Info(nz,3),4);
%                             
%                             end
                            
                        %elseif zaehler1==2
                            
                            
                        
                        %end
                    
                                spec=[Kreis_Info(nz,3)*sin(0:0.2:pi) 0.5*Kreis_Info(nz,3)*sin(0:0.2:pi) 0.5*Kreis_Info(nz,3)*sin(pi:0.2:2*pi);Kreis_Info(nz,3)*cos(0:0.2:pi) -0.5*Kreis_Info(nz,3)+0.5*Kreis_Info(nz,3)*cos(pi:0.2:2*pi) 0.5*Kreis_Info(nz,3)+0.5*Kreis_Info(nz,3)*cos(pi:0.2:2*pi);...
                                      Kreis_Info(nz,3)*sin(pi:0.2:2*pi) 0.5*Kreis_Info(nz,3)*sin(pi:0.2:2*pi) 0.5*Kreis_Info(nz,3)*sin(0:0.2:pi);Kreis_Info(nz,3)*cos(pi:0.2:2*pi) 0.5*Kreis_Info(nz,3)+0.5*Kreis_Info(nz,3)*cos(0:0.2:pi) -0.5*Kreis_Info(nz,3)+0.5*Kreis_Info(nz,3)*cos(0:0.2:pi)];
                                trans = [cos(phi) sin(phi) 0 0;-sin(phi) cos(phi) 0 0;0 0 cos(phi) sin(phi);0 0 -sin(phi) cos(phi)];
                                spec1 = (spec'*trans)'; 
                                
                                [x]=[Kreis_Info(nz,1)+spec1(1,:);Kreis_Info(nz,1)+spec1(3,:)];
                                [y]=[Kreis_Info(nz,2)+spec1(2,:);Kreis_Info(nz,2)+spec1(4,:)];
                                h(nz,1) = fill(x(1,:),y(1,:),'k','Parent',gca);
                                hold on;
                                h(nz,2) = fill(x(2,:),y(2,:),'w','Parent',gca);
                                h(nz,3) = 0;  
                                xlim([0 a+a/10+1]);% Korrektur des Limits
                                ylim([0 a+a/10+1]);
                                if ~isempty(Point_Nr)
                                    handles.Remem3(Point_Nr,:) = [Kreis_Info(nz,1) Kreis_Info(nz,2)];
                                end
                                
                                
                    end
                    
                end
                
                
                
            end
            
        else
            
            % Handelt es sich heirbei um eine Translation oder Rotation
            
            if Koordinate_Info(2,3)==1 % in diesem Fall Translation
                
                %Rollen oder Gleiten
                
                Point_Nr = find(handles.Selected==nz);
                if size(Point_Nr) > 1
                    msgbox('Be Careful!');
                end
                
                %Überprüfen ob es der Bezugspörper ist
                
                if Kreis_Info(nz,7)==1 || Kreis_Info(nz,6)==1
                    
                    if Kreis_Info(nz,4)==0 % in dem Fall rollen                
                    
                        phi=round(-(vvc(nnvt,2))/Kreis_Info(nz,3),4);
                    
                                spec=[Kreis_Info(nz,3)*sin(0:0.2:pi) 0.5*Kreis_Info(nz,3)*sin(0:0.2:pi) 0.5*Kreis_Info(nz,3)*sin(pi:0.2:2*pi);Kreis_Info(nz,3)*cos(0:0.2:pi) -0.5*Kreis_Info(nz,3)+0.5*Kreis_Info(nz,3)*cos(pi:0.2:2*pi) 0.5*Kreis_Info(nz,3)+0.5*Kreis_Info(nz,3)*cos(pi:0.2:2*pi);...
                                      Kreis_Info(nz,3)*sin(pi:0.2:2*pi) 0.5*Kreis_Info(nz,3)*sin(pi:0.2:2*pi) 0.5*Kreis_Info(nz,3)*sin(0:0.2:pi);Kreis_Info(nz,3)*cos(pi:0.2:2*pi) 0.5*Kreis_Info(nz,3)+0.5*Kreis_Info(nz,3)*cos(0:0.2:pi) -0.5*Kreis_Info(nz,3)+0.5*Kreis_Info(nz,3)*cos(0:0.2:pi)];
                                trans = [cos(phi) sin(phi) 0 0;-sin(phi) cos(phi) 0 0;0 0 cos(phi) sin(phi);0 0 -sin(phi) cos(phi)];
                                spec1 = (spec'*trans)'; 
                                
                                [x]=[Kreis_Info(nz,1)-vvc(160,2)*cos_richtung(nz,1)+vvc(nnvt,2)*cos_richtung(nz,1)+spec1(1,:);Kreis_Info(nz,1)-vvc(160,2)*cos_richtung(nz,1)+vvc(nnvt,2)*cos_richtung(nz,1)+spec1(3,:)];
                                [y]=[Kreis_Info(nz,2)-vvc(160,2)*sin_richtung(nz,1)+vvc(nnvt,2)*sin_richtung(nz,1)+spec1(2,:);Kreis_Info(nz,2)-vvc(160,2)*sin_richtung(nz,1)+vvc(nnvt,2)*sin_richtung(nz,1)+spec1(4,:)];
                                h(nz,1) = fill(x(1,:),y(1,:),'k','Parent',gca);
                                hold on;
                                h(nz,2) = fill(x(2,:),y(2,:),'w','Parent',gca);
                                h(nz,3) = 0;  
                                xlim([0 a+a/10+1]);% Korrektur des Limits
                                ylim([0 a+a/10+1]);
                                if ~isempty(Point_Nr)
                                    handles.Remem3(Point_Nr,:) = [Kreis_Info(nz,1)-vvc(160,1)*cos_richtung(nz,1)+vvc(nnvt,1)*cos_richtung(nz,1) Kreis_Info(nz,2)-vvc(160,1)*sin_richtung(nz,1)+vvc(nnvt,1)*sin_richtung(nz,1)];
                                end
                                
                    elseif Kreis_Info(nz,4)==1 % in dem Fall gleiten
                    
                        phi=0;
                    
                                spec=[Kreis_Info(nz,3)*sin(0:0.2:pi) 0.5*Kreis_Info(nz,3)*sin(0:0.2:pi) 0.5*Kreis_Info(nz,3)*sin(pi:0.2:2*pi);Kreis_Info(nz,3)*cos(0:0.2:pi) -0.5*Kreis_Info(nz,3)+0.5*Kreis_Info(nz,3)*cos(pi:0.2:2*pi) 0.5*Kreis_Info(nz,3)+0.5*Kreis_Info(nz,3)*cos(pi:0.2:2*pi);...
                                      Kreis_Info(nz,3)*sin(pi:0.2:2*pi) 0.5*Kreis_Info(nz,3)*sin(pi:0.2:2*pi) 0.5*Kreis_Info(nz,3)*sin(0:0.2:pi);Kreis_Info(nz,3)*cos(pi:0.2:2*pi) 0.5*Kreis_Info(nz,3)+0.5*Kreis_Info(nz,3)*cos(0:0.2:pi) -0.5*Kreis_Info(nz,3)+0.5*Kreis_Info(nz,3)*cos(0:0.2:pi)];
                                trans = [cos(phi) sin(phi) 0 0;-sin(phi) cos(phi) 0 0;0 0 cos(phi) sin(phi);0 0 -sin(phi) cos(phi)];
                                spec1 = (spec'*trans)'; 
                                
                                [x]=[Kreis_Info(nz,1)-vvc(160,2)*cos_richtung(nz,1)+vvc(nnvt,2)*cos_richtung(nz,1)+spec1(1,:);Kreis_Info(nz,1)-vvc(160,2)*cos_richtung(nz,1)+vvc(nnvt,2)*cos_richtung(nz,1)+spec1(3,:)];
                                [y]=[Kreis_Info(nz,2)-vvc(160,2)*sin_richtung(nz,1)+vvc(nnvt,2)*sin_richtung(nz,1)+spec1(2,:);Kreis_Info(nz,2)-vvc(160,2)*sin_richtung(nz,1)+vvc(nnvt,2)*sin_richtung(nz,1)+spec1(4,:)];
                                h(nz,1) = fill(x(1,:),y(1,:),'k','Parent',gca);
                                hold on;
                                h(nz,2) = fill(x(2,:),y(2,:),'w','Parent',gca);
                                h(nz,3) = 0;  
                                xlim([0 a+a/10+1]);% Korrektur des Limits
                                ylim([0 a+a/10+1]);
                                if ~isempty(Point_Nr)
                                    handles.Remem3(Point_Nr,:) = [Kreis_Info(nz,1)-vvc(160,1)*cos_richtung(nz,1)+vvc(nnvt,1)*cos_richtung(nz,1) Kreis_Info(nz,2)-vvc(160,1)*sin_richtung(nz,1)+vvc(nnvt,1)*sin_richtung(nz,1)];
                                end
                                
                                
                    elseif  Kreis_Info(nz,4)==2 && Kreis_Info(nz,6)==0% in dem Fall gleiten
                    
                        phi=0;
                    
                                spec=[Kreis_Info(nz,3)*sin(0:0.2:pi) 0.5*Kreis_Info(nz,3)*sin(0:0.2:pi) 0.5*Kreis_Info(nz,3)*sin(pi:0.2:2*pi);Kreis_Info(nz,3)*cos(0:0.2:pi) -0.5*Kreis_Info(nz,3)+0.5*Kreis_Info(nz,3)*cos(pi:0.2:2*pi) 0.5*Kreis_Info(nz,3)+0.5*Kreis_Info(nz,3)*cos(pi:0.2:2*pi);...
                                      Kreis_Info(nz,3)*sin(pi:0.2:2*pi) 0.5*Kreis_Info(nz,3)*sin(pi:0.2:2*pi) 0.5*Kreis_Info(nz,3)*sin(0:0.2:pi);Kreis_Info(nz,3)*cos(pi:0.2:2*pi) 0.5*Kreis_Info(nz,3)+0.5*Kreis_Info(nz,3)*cos(0:0.2:pi) -0.5*Kreis_Info(nz,3)+0.5*Kreis_Info(nz,3)*cos(0:0.2:pi)];
                                trans = [cos(phi) sin(phi) 0 0;-sin(phi) cos(phi) 0 0;0 0 cos(phi) sin(phi);0 0 -sin(phi) cos(phi)];
                                spec1 = (spec'*trans)'; 
                                
                                [x]=[Kreis_Info(nz,1)-vvc(160,2)*cos_richtung(nz,1)+vvc(nnvt,2)*cos_richtung(nz,1)+spec1(1,:);Kreis_Info(nz,1)-vvc(160,2)*cos_richtung(nz,1)+vvc(nnvt,2)*cos_richtung(nz,1)+spec1(3,:)];
                                [y]=[Kreis_Info(nz,2)-vvc(160,2)*sin_richtung(nz,1)+vvc(nnvt,2)*sin_richtung(nz,1)+spec1(2,:);Kreis_Info(nz,2)-vvc(160,2)*sin_richtung(nz,1)+vvc(nnvt,2)*sin_richtung(nz,1)+spec1(4,:)];
                                h(nz,1) = fill(x(1,:),y(1,:),'k','Parent',gca);
                                hold on;
                                h(nz,2) = fill(x(2,:),y(2,:),'w','Parent',gca);
                                h(nz,3) = 0;  
                                xlim([0 a+a/10+1]);% Korrektur des Limits
                                ylim([0 a+a/10+1]);
                                 if ~isempty(Point_Nr)
                                    handles.Remem3(Point_Nr,:) = [Kreis_Info(nz,1)-vvc(160,1)*cos_richtung(nz,1)+vvc(nnvt,1)*cos_richtung(nz,1) Kreis_Info(nz,2)-vvc(160,1)*sin_richtung(nz,1)+vvc(nnvt,1)*sin_richtung(nz,1)];
                                end
                                
                    elseif Kreis_Info(nz,6)==1 % in dem Fall Rotation um ein Lager inder Mitte des Kreises
                     
                       % if zaehler1==1
                            
                            if Kreis_Info(bez_koerper1,2)> Kreis_Info(nz,2)
                            
                                phi=round(-(vvc(nnvt,1))/Kreis_Info(nz,3),4);
                            
                            else
                            
                                phi=round((vvc(nnvt,1))/Kreis_Info(nz,3),4);
                            
                            end
                            
                        %elseif zaehler1==2
                            
                            
                        
                        %end
                    
                                spec=[Kreis_Info(nz,3)*sin(0:0.2:pi) 0.5*Kreis_Info(nz,3)*sin(0:0.2:pi) 0.5*Kreis_Info(nz,3)*sin(pi:0.2:2*pi);Kreis_Info(nz,3)*cos(0:0.2:pi) -0.5*Kreis_Info(nz,3)+0.5*Kreis_Info(nz,3)*cos(pi:0.2:2*pi) 0.5*Kreis_Info(nz,3)+0.5*Kreis_Info(nz,3)*cos(pi:0.2:2*pi);...
                                      Kreis_Info(nz,3)*sin(pi:0.2:2*pi) 0.5*Kreis_Info(nz,3)*sin(pi:0.2:2*pi) 0.5*Kreis_Info(nz,3)*sin(0:0.2:pi);Kreis_Info(nz,3)*cos(pi:0.2:2*pi) 0.5*Kreis_Info(nz,3)+0.5*Kreis_Info(nz,3)*cos(0:0.2:pi) -0.5*Kreis_Info(nz,3)+0.5*Kreis_Info(nz,3)*cos(0:0.2:pi)];
                                trans = [cos(phi) sin(phi) 0 0;-sin(phi) cos(phi) 0 0;0 0 cos(phi) sin(phi);0 0 -sin(phi) cos(phi)];
                                spec1 = (spec'*trans)'; 
                                
                                [x]=[Kreis_Info(nz,1)+spec1(1,:);Kreis_Info(nz,1)+spec1(3,:)];
                                [y]=[Kreis_Info(nz,2)+spec1(2,:);Kreis_Info(nz,2)+spec1(4,:)];
                                h(nz,1) = fill(x(1,:),y(1,:),'k','Parent',gca);
                                hold on;
                                h(nz,2) = fill(x(2,:),y(2,:),'w','Parent',gca);
                                h(nz,3) = 0;  
                                xlim([0 a+a/10+1]);% Korrektur des Limits
                                ylim([0 a+a/10+1]);
                                if ~isempty(Point_Nr)
                                    handles.Remem3(Point_Nr,:) = [Kreis_Info(nz,1) Kreis_Info(nz,2)];
                                end
                                
                                end
                                
                else
                        
                            if Kreis_Info(nz,4)==0 % in dem Fall rollen                
                    
                                phi=round((vvc(nnvt,1))/Kreis_Info(nz,3),4);
                    
                                spec=[Kreis_Info(nz,3)*sin(0:0.2:pi) 0.5*Kreis_Info(nz,3)*sin(0:0.2:pi) 0.5*Kreis_Info(nz,3)*sin(pi:0.2:2*pi);Kreis_Info(nz,3)*cos(0:0.2:pi) -0.5*Kreis_Info(nz,3)+0.5*Kreis_Info(nz,3)*cos(pi:0.2:2*pi) 0.5*Kreis_Info(nz,3)+0.5*Kreis_Info(nz,3)*cos(pi:0.2:2*pi);...
                                      Kreis_Info(nz,3)*sin(pi:0.2:2*pi) 0.5*Kreis_Info(nz,3)*sin(pi:0.2:2*pi) 0.5*Kreis_Info(nz,3)*sin(0:0.2:pi);Kreis_Info(nz,3)*cos(pi:0.2:2*pi) 0.5*Kreis_Info(nz,3)+0.5*Kreis_Info(nz,3)*cos(0:0.2:pi) -0.5*Kreis_Info(nz,3)+0.5*Kreis_Info(nz,3)*cos(0:0.2:pi)];
                                trans = [cos(phi) sin(phi) 0 0;-sin(phi) cos(phi) 0 0;0 0 cos(phi) sin(phi);0 0 -sin(phi) cos(phi)];
                                spec1 = (spec'*trans)'; 
                                
                                [x]=[Kreis_Info(nz,1)-(-vvc(160,2)*cos_richtung(nz,1)+vvc(nnvt,2)*cos_richtung(nz,1)+spec1(1,:));Kreis_Info(nz,1)-(-vvc(160,2)*cos_richtung(nz,1)+vvc(nnvt,2)*cos_richtung(nz,1)+spec1(3,:))];
                                [y]=[Kreis_Info(nz,2)-(-vvc(160,2)*sin_richtung(nz,1)+vvc(nnvt,2)*sin_richtung(nz,1)+spec1(2,:));Kreis_Info(nz,2)-(-vvc(160,2)*sin_richtung(nz,1)+vvc(nnvt,2)*sin_richtung(nz,1)+spec1(4,:))];
                                h(nz,1) = fill(x(1,:),y(1,:),'k','Parent',gca);
                                hold on;
                                h(nz,2) = fill(x(2,:),y(2,:),'w','Parent',gca);
                                h(nz,3) = 0;  
                                xlim([0 a+a/10+1]);% Korrektur des Limits
                                ylim([0 a+a/10+1]);
                                if ~isempty(Point_Nr)
                                    handles.Remem3(Point_Nr,:) = [Kreis_Info(nz,1)-(-vvc(160,1)*cos_richtung(nz,1)+vvc(nnvt,1)*cos_richtung(nz,1)) Kreis_Info(nz,2)-(-vvc(160,1)*sin_richtung(nz,1)+vvc(nnvt,1)*sin_richtung(nz,1))];
                                end
                                
                    elseif Kreis_Info(nz,4)==1 % in dem Fall gleiten
                    
                                phi=0;
                    
                                spec=[Kreis_Info(nz,3)*sin(0:0.2:pi) 0.5*Kreis_Info(nz,3)*sin(0:0.2:pi) 0.5*Kreis_Info(nz,3)*sin(pi:0.2:2*pi);Kreis_Info(nz,3)*cos(0:0.2:pi) -0.5*Kreis_Info(nz,3)+0.5*Kreis_Info(nz,3)*cos(pi:0.2:2*pi) 0.5*Kreis_Info(nz,3)+0.5*Kreis_Info(nz,3)*cos(pi:0.2:2*pi);...
                                      Kreis_Info(nz,3)*sin(pi:0.2:2*pi) 0.5*Kreis_Info(nz,3)*sin(pi:0.2:2*pi) 0.5*Kreis_Info(nz,3)*sin(0:0.2:pi);Kreis_Info(nz,3)*cos(pi:0.2:2*pi) 0.5*Kreis_Info(nz,3)+0.5*Kreis_Info(nz,3)*cos(0:0.2:pi) -0.5*Kreis_Info(nz,3)+0.5*Kreis_Info(nz,3)*cos(0:0.2:pi)];
                                trans = [cos(phi) sin(phi) 0 0;-sin(phi) cos(phi) 0 0;0 0 cos(phi) sin(phi);0 0 -sin(phi) cos(phi)];
                                spec1 = (spec'*trans)'; 
                                
                                [x]=[Kreis_Info(nz,1)-(-vvc(160,2)*cos_richtung(nz,1)+vvc(nnvt,2)*cos_richtung(nz,1)+spec1(1,:));Kreis_Info(nz,1)-(-vvc(160,2)*cos_richtung(nz,1)+vvc(nnvt,2)*cos_richtung(nz,1)+spec1(3,:))];
                                [y]=[Kreis_Info(nz,2)-(-vvc(160,2)*sin_richtung(nz,1)+vvc(nnvt,2)*sin_richtung(nz,1)+spec1(2,:));Kreis_Info(nz,2)-(-vvc(160,2)*sin_richtung(nz,1)+vvc(nnvt,2)*sin_richtung(nz,1)+spec1(4,:))];
                                h(nz,1) = fill(x(1,:),y(1,:),'k','Parent',gca);
                                hold on;
                                h(nz,2) = fill(x(2,:),y(2,:),'w','Parent',gca);
                                h(nz,3) = 0;  
                                xlim([0 a+a/10+1]);% Korrektur des Limits
                                ylim([0 a+a/10+1]);
                                if ~isempty(Point_Nr)
                                    handles.Remem3(Point_Nr,:) = [Kreis_Info(nz,1)-(-vvc(160,1)*cos_richtung(nz,1)+vvc(nnvt,1)*cos_richtung(nz,1)) Kreis_Info(nz,2)-(-vvc(160,1)*sin_richtung(nz,1)+vvc(nnvt,1)*sin_richtung(nz,1))];
                                end
                                
                    elseif  Kreis_Info(nz,4)==2 && Kreis_Info(nz,6)==0% in dem Fall gleiten
                    
                                phi=0;
                    
                                spec=[Kreis_Info(nz,3)*sin(0:0.2:pi) 0.5*Kreis_Info(nz,3)*sin(0:0.2:pi) 0.5*Kreis_Info(nz,3)*sin(pi:0.2:2*pi);Kreis_Info(nz,3)*cos(0:0.2:pi) -0.5*Kreis_Info(nz,3)+0.5*Kreis_Info(nz,3)*cos(pi:0.2:2*pi) 0.5*Kreis_Info(nz,3)+0.5*Kreis_Info(nz,3)*cos(pi:0.2:2*pi);...
                                      Kreis_Info(nz,3)*sin(pi:0.2:2*pi) 0.5*Kreis_Info(nz,3)*sin(pi:0.2:2*pi) 0.5*Kreis_Info(nz,3)*sin(0:0.2:pi);Kreis_Info(nz,3)*cos(pi:0.2:2*pi) 0.5*Kreis_Info(nz,3)+0.5*Kreis_Info(nz,3)*cos(0:0.2:pi) -0.5*Kreis_Info(nz,3)+0.5*Kreis_Info(nz,3)*cos(0:0.2:pi)];
                                trans = [cos(phi) sin(phi) 0 0;-sin(phi) cos(phi) 0 0;0 0 cos(phi) sin(phi);0 0 -sin(phi) cos(phi)];
                                spec1 = (spec'*trans)'; 
                                
                                [x]=[Kreis_Info(nz,1)-(-vvc(160,2)*cos_richtung(nz,1)+vvc(nnvt,2)*cos_richtung(nz,1)+spec1(1,:));Kreis_Info(nz,1)-(-vvc(160,2)*cos_richtung(nz,1)+vvc(nnvt,2)*cos_richtung(nz,1)+spec1(3,:))];
                                [y]=[Kreis_Info(nz,2)-(-vvc(160,2)*sin_richtung(nz,1)+vvc(nnvt,2)*sin_richtung(nz,1)+spec1(2,:));Kreis_Info(nz,2)-(-vvc(160,2)*sin_richtung(nz,1)+vvc(nnvt,2)*sin_richtung(nz,1)+spec1(4,:))];
                                h(nz,1) = fill(x(1,:),y(1,:),'k','Parent',gca);
                                hold on;
                                h(nz,2) = fill(x(2,:),y(2,:),'w','Parent',gca);
                                h(nz,3) = 0;  
                                xlim([0 a+a/10+1]);% Korrektur des Limits
                                ylim([0 a+a/10+1]);   
                                if ~isempty(Point_Nr)
                                    handles.Remem3(Point_Nr,:) = [Kreis_Info(nz,1)-(-vvc(160,1)*cos_richtung(nz,1)+vvc(nnvt,1)*cos_richtung(nz,1)) Kreis_Info(nz,2)-(-vvc(160,1)*sin_richtung(nz,1)+vvc(nnvt,1)*sin_richtung(nz,1))];
                                end
                                
                            end
                                
                                 
                end
                
            end
           
            
        end
        
    end 
    
    for Iter_Remem3 = 1:row_Remem3/2
        
        h(nz,3+Iter_Remem3) = plot([handles.Remem3(2*Iter_Remem3-1,1) handles.Remem3(2*Iter_Remem3,1)],[handles.Remem3(2*Iter_Remem3-1,2) handles.Remem3(2*Iter_Remem3,2)],'b');
    
    end
    
    %Rechteckbewegung
    
    for nz=1:counter5
        
        %AUf welche generalisierte Koordinate wird bezug genommen
        
        if Rechteck_Info(nz,6)==1 %generalisierte Koordinate 1
            
            % Handelt es sich heirbei um eine Translation oder Rotation
            
            if Koordinate_Info(1,3)==1 % in diesem Fall Translation
                
                    x=[Rechteck_Info(nz,1)-cos(Rechteck_Info(nz,5))*Rechteck_Info(nz,3)/2-cos(pi/2-Rechteck_Info(nz,5))*Rechteck_Info(nz,4)/2-vvc(160,1)*cos_richtung(nz,1)+vvc(nnvt,1)*cos_richtung(nz,1) Rechteck_Info(nz,1)-cos(Rechteck_Info(nz,5))*Rechteck_Info(nz,3)/2+cos(pi/2-Rechteck_Info(nz,5))*Rechteck_Info(nz,4)/2-vvc(160,1)*cos_richtung(nz,1)+vvc(nnvt,1)*cos_richtung(nz,1) Rechteck_Info(nz,1)+cos(Rechteck_Info(nz,5))*Rechteck_Info(nz,3)/2+cos(pi/2-Rechteck_Info(nz,5))*Rechteck_Info(nz,4)/2-vvc(160,1)*cos_richtung(nz,1)+vvc(nnvt,1)*cos_richtung(nz,1) Rechteck_Info(nz,1)+cos(Rechteck_Info(nz,5))*Rechteck_Info(nz,3)/2-cos(pi/2-Rechteck_Info(nz,5))*Rechteck_Info(nz,4)/2-vvc(160,1)*cos_richtung(nz,1)+vvc(nnvt,1)*cos_richtung(nz,1)];
                    y=[Rechteck_Info(nz,2)-sin(Rechteck_Info(nz,5))*Rechteck_Info(nz,3)/2+sin(pi/2-Rechteck_Info(nz,5))*Rechteck_Info(nz,4)/2-vvc(160,1)*sin_richtung(nz,1)+vvc(nnvt,1)*sin_richtung(nz,1) Rechteck_Info(nz,2)-sin(Rechteck_Info(nz,5))*Rechteck_Info(nz,3)/2-sin(pi/2-Rechteck_Info(nz,5))*Rechteck_Info(nz,4)/2-vvc(160,1)*sin_richtung(nz,1)+vvc(nnvt,1)*sin_richtung(nz,1) Rechteck_Info(nz,2)+sin(Rechteck_Info(nz,5))*Rechteck_Info(nz,3)/2-sin(pi/2-Rechteck_Info(nz,5))*Rechteck_Info(nz,4)/2-vvc(160,1)*sin_richtung(nz,1)+vvc(nnvt,1)*sin_richtung(nz,1) Rechteck_Info(nz,2)+sin(Rechteck_Info(nz,5))*Rechteck_Info(nz,3)/2+sin(pi/2-Rechteck_Info(nz,5))*Rechteck_Info(nz,4)/2-vvc(160,1)*sin_richtung(nz,1)+vvc(nnvt,1)*sin_richtung(nz,1)];
                    hold on;
                    b(nz)=fill(x,y,'b');
                    xlim([0 a+a/10+1]);% Korrektur des Limits
                    ylim([0 a+a/10+1]);
                
            end
           
        else
            
            if Koordinate_Info(1,3)==1 % in diesem Fall Translation
                
                     x=[Rechteck_Info(nz,1)-cos(Rechteck_Info(nz,5))*Rechteck_Info(nz,3)/2-cos(pi/2-Rechteck_Info(nz,5))*Rechteck_Info(nz,4)/2-vvc(160,2)*cos_richtung(nz,1)+vvc(nnvt,2)*cos_richtung(nz,1) Rechteck_Info(nz,1)-cos(Rechteck_Info(nz,5))*Rechteck_Info(nz,3)/2+cos(pi/2-Rechteck_Info(nz,5))*Rechteck_Info(nz,4)/2-vvc(160,2)*cos_richtung(nz,1)+vvc(nnvt,2)*cos_richtung(nz,1) Rechteck_Info(nz,1)+cos(Rechteck_Info(nz,5))*Rechteck_Info(nz,3)/2+cos(pi/2-Rechteck_Info(nz,5))*Rechteck_Info(nz,4)/2-vvc(160,2)*cos_richtung(nz,1)+vvc(nnvt,2)*cos_richtung(nz,1) Rechteck_Info(nz,1)+cos(Rechteck_Info(nz,5))*Rechteck_Info(nz,3)/2-cos(pi/2-Rechteck_Info(nz,5))*Rechteck_Info(nz,4)/2-vvc(160,2)*cos_richtung(nz,1)+vvc(nnvt,2)*cos_richtung(nz,1)];
                    y=[Rechteck_Info(nz,2)-sin(Rechteck_Info(nz,5))*Rechteck_Info(nz,3)/2+sin(pi/2-Rechteck_Info(nz,5))*Rechteck_Info(nz,4)/2-vvc(160,2)*sin_richtung(nz,1)+vvc(nnvt,2)*sin_richtung(nz,1) Rechteck_Info(nz,2)-sin(Rechteck_Info(nz,5))*Rechteck_Info(nz,3)/2-sin(pi/2-Rechteck_Info(nz,5))*Rechteck_Info(nz,4)/2-vvc(160,2)*sin_richtung(nz,1)+vvc(nnvt,2)*sin_richtung(nz,1) Rechteck_Info(nz,2)+sin(Rechteck_Info(nz,5))*Rechteck_Info(nz,3)/2-sin(pi/2-Rechteck_Info(nz,5))*Rechteck_Info(nz,4)/2-vvc(160,2)*sin_richtung(nz,1)+vvc(nnvt,2)*sin_richtung(nz,1) Rechteck_Info(nz,2)+sin(Rechteck_Info(nz,5))*Rechteck_Info(nz,3)/2+sin(pi/2-Rechteck_Info(nz,5))*Rechteck_Info(nz,4)/2-vvc(160,2)*sin_richtung(nz,1)+vvc(nnvt,2)*sin_richtung(nz,1)];
                    hold on;
                    b(nz)=fill(x,y,'b');
                    xlim([0 a+a/10+1]);% Korrektur des Limits
                    ylim([0 a+a/10+1]);
                    
            end
        
%          
        end
        
    end
    
    %Pausenfunktion
    
    pause(vve(nnvt+1)-vve(nnvt));
    
%         if nnvt ~= vnnaa(1,2)-1
%         
%             delete(h);
%                                         
%         end
    
end










figure(1);
        subplot(2,2,1); plot(t,z(:,1));grid on; title('position'); xlabel('t'); ylabel('z-pos');
        subplot(2,2,2); plot(t,z(:,2));grid on; title('velocity'); xlabel('t'); ylabel('v');
        [nnvc]=0;%Neue Vektoren für flüssigere Animation
        [nnve]=0;
        nna=size(t);
    

         
%     
% 


% --- Executes on button press in push_kreis.
function push_kreis_Callback(hObject, eventdata, handles)
% hObject    handle to push_kreis (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%Counter
% Read current text and convert it to a number.
currentCounterValue2 = str2double(get(handles.counter2, 'String'));

% Create a new string with the number being 1 more than the current number.
newString2 = sprintf('%d', int32(currentCounterValue2 +1));

% Send the new string to the text control.
set(handles.counter2, 'String', newString2 );
set(handles.panel_kreis,'Visible','on');


currentCounterValue2 = str2double(get(handles.counter_koerperzahl, 'String'));

% Create a new string with the number being 1 more than the current number.
newString_koerper = sprintf('%d', int32(currentCounterValue2 +1));

% Send the new string to the text control.
set(handles.counter_koerperzahl, 'String', newString_koerper );
switch currentCounterValue2
    case 1 , set(handles.x_k,'String','2'),set(handles.y_k,'String','2'),set(handles.r_k,'String','1')
    case 2 , set(handles.x_k,'String','11'),set(handles.y_k,'String','2'),set(handles.r_k,'String','1')
    case 3 , set(handles.x_k,'String','11'),set(handles.y_k,'String','6')
end



% if currentCounterValue2==0
%     t=0:0.01:2*pi;
%     [x]=sin(t)+2;
%     [y]=cos(t)+2;
%     
%     fill(x(:),y(:),'k','Parent',handles.kosy);
% %     set(gca, 'Visible', 'off');
% 
%     fill(x,y,'bl'); %set(gca,'xtick',[]); 
%     a=handles.a;
%     xlim([0 a+a/10+1]);% Korrektur des Limits
%     ylim([0 a+a/10+1]);
% %     set(gca,'ytick',[]);
% %     set(gca, 'Visible', 'off');
% end



function x_k_Callback(hObject, eventdata, handles)
% hObject    handle to x_k (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of x_k as text
%        str2double(get(hObject,'String')) returns contents of x_k as a double


% --- Executes during object creation, after setting all properties.
function x_k_CreateFcn(hObject, eventdata, handles)
% hObject    handle to x_k (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function y_k_Callback(hObject, eventdata, handles)
% hObject    handle to y_k (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of y_k as text
%        str2double(get(hObject,'String')) returns contents of y_k as a double


% --- Executes during object creation, after setting all properties.
function y_k_CreateFcn(hObject, eventdata, handles)
% hObject    handle to y_k (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function r_k_Callback(hObject, eventdata, handles)
% hObject    handle to r_k (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of r_k as text
%        str2double(get(hObject,'String')) returns contents of r_k as a double


% --- Executes during object creation, after setting all properties.
function r_k_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r_k (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in k_ok.
function k_ok_Callback(hObject, eventdata, handles)
% hObject    handle to k_ok (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

counter2=str2double(get(handles.counter2,'string'));
guidata(hObject, handles);
currentCounterValue = str2double(get(handles.counter, 'String'))
a=handles.a;
X=handles.X;
m=handles.m;
b=handles.b;
h=handles.h;
Kreis_Info=handles.Kreis_Info;
if counter2==1; 
    object1=1; %kosy enthält einen Kreis
    xn1=eval(sym(str2double(get(handles.x_k,'string'))));% Auslesen der Eingaben
    %w1=str2double(get(handles.w,'string'))/360*2*pi;
    yn1=eval(sym(str2double(get(handles.y_k,'string'))));
    rn1=eval(sym(str2double(get(handles.r_k,'string'))));
    axes(handles.kosy);
    handles.xn1kreis=xn1;
    handles.yn1kreis=yn1;
    handles.rn1kreis=rn1;
    % Zeichnen des Kreises
    phi=0;
    spec=[rn1*sin(0:0.01:pi) 0.5*rn1*sin(0:0.01:pi) 0.5*rn1*sin(pi:0.01:2*pi);rn1*cos(0:0.01:pi) -0.5*rn1+0.5*rn1*cos(pi:0.01:2*pi) 0.5*rn1+0.5*rn1*cos(pi:0.01:2*pi);...
    rn1*sin(pi:0.01:2*pi) 0.5*rn1*sin(pi:0.01:2*pi) 0.5*rn1*sin(0:0.01:pi);rn1*cos(pi:0.01:2*pi) 0.5*rn1+0.5*rn1*cos(0:0.01:pi) -0.5*rn1+0.5*rn1*cos(0:0.01:pi)];
    trans = [cos(phi) sin(phi) 0 0;-sin(phi) cos(phi) 0 0;0 0 cos(phi) sin(phi);0 0 -sin(phi) cos(phi)];
    spec1 = (spec'*trans)';
    [x]=[xn1+spec1(1,:);xn1+spec1(3,:)];
    [y]=[yn1+spec1(2,:);yn1+spec1(4,:)];
    h(1,1) = fill(x(1,:),y(1,:),'k','Parent',gca);
    hold on;
    h(1,2) = fill(x(2,:),y(2,:),'w','Parent',gca);
    h(1,3) = 0;  
    xlim([0 a+a/10+1]);% Korrektur des Limits
    ylim([0 a+a/10+1]);
    m=handles.m
    b=handles.bv;
    handles.KreisPosi=[ xn1 yn1];
    handles.KreisRadius = [rn1];
    x_kreiss = xn1;
    y_kreiss = yn1;
    Kreis_Info(1,:)=[xn1 , yn1 , rn1 , 2 , 0 , 0];
    handles.Kreis_Info=Kreis_Info;
    
%     set(gca,'ytick',[]);
%     set(gca, 'Visible', 'off');
    %hold on;
    handles.rn1=rn1;%merken der Variablen
    handles.xn1=xn1;
    handles.yn1=yn1;
    handles.object1=object1;
    handles.h=h;
    guidata(hObject, handles);
    %Abrollbedingung
    [o1]=0; %Vektor gibt an an welchen Oberflächen Kreisscheibe 1 Kontakt hat.
    tol=0.0001*a;
    n=1;
    set(handles.panel_kreis,'Visible','off');
    currentCounterValue
    for g=1:currentCounterValue
              
        if( X(n)<=xn1 && xn1<=X(n+1)) || (X(n)==X(n+1) && X(n)>=xn1-tol-rn1 && X(n)<=xn1+tol+rn1)
            
            n=n+4;
            u=0;
            m(g);
            for e=xn1-rn1:0.01:xn1+rn1
                handles.g=g;
                if m(g)==inf
                  
                    nv=X(4*g-3);
                    
                    if (xn1-rn1-tol)<=nv && nv<=(xn1+rn1+tol) && u==0
                    [o1]=[o1;g]
                    handles.o1=o1;
                    guidata(hObject,handles);
                        u=1;
                        set(handles.abrollbedingung,'Visible','on');
                        set(handles.oberflaechenbedingung, 'String', g);
                        uiwait() 
                        handles=guidata(hObject);
                        
                    end
                else   
                    
                    navy=m(g)*e+b(g);
                    abs=sqrt((xn1-e)^2+(yn1-navy)^2);
                
                    if (rn1-tol)<=abs && abs<=(rn1+tol) && u==0
                        [o1]=[o1;g]
                        u=1;
                        handles.o1=o1;
                       guidata(hObject,handles);
                        set(handles.abrollbedingung,'Visible','on');
                        set(handles.oberflaechenbedingung, 'String', g);
                        uiwait()
                        handles=guidata(hObject);
                        
                    end
            end
        end
        end 
    end
   
          
    elseif counter2==2
    object2=1; %kosy enthält einen Kreis
    xn2=eval(sym(str2double(get(handles.x_k,'string'))));% Auslesen der Eingaben
    %w1=str2double(get(handles.w,'string'))/360*2*pi;
    yn2=eval(sym(str2double(get(handles.y_k,'string'))));
    rn2=eval(sym(str2double(get(handles.r_k,'string'))));
    axes(handles.kosy);
    axes(handles.kosy);
    % Zeichnen des Kreises
    phi2=0;
    spec=[rn2*sin(0:0.01:pi) 0.5*rn2*sin(0:0.01:pi) 0.5*rn2*sin(pi:0.01:2*pi);rn2*cos(0:0.01:pi) -0.5*rn2+0.5*rn2*cos(pi:0.01:2*pi) 0.5*rn2+0.5*rn2*cos(pi:0.01:2*pi);...
    rn2*sin(pi:0.01:2*pi) 0.5*rn2*sin(pi:0.01:2*pi) 0.5*rn2*sin(0:0.01:pi);rn2*cos(pi:0.01:2*pi) 0.5*rn2+0.5*rn2*cos(0:0.01:pi) -0.5*rn2+0.5*rn2*cos(0:0.01:pi)];
    trans = [cos(phi2) sin(phi2) 0 0;-sin(phi2) cos(phi2) 0 0;0 0 cos(phi2) sin(phi2);0 0 -sin(phi2) cos(phi2)];
    spec2 = (spec'*trans)';
    [x]=[xn2+spec2(1,:);xn2+spec2(3,:)];
    [y]=[yn2+spec2(2,:);yn2+spec2(4,:)];
    h(2,1) = fill(x(1,:),y(1,:),'k','Parent',gca);
    hold on;
    h(2,2) = fill(x(2,:),y(2,:),'w','Parent',gca);
    h(2,3) = 0;  
    xlim([0 a+a/10+1]);% Korrektur des Limits
    ylim([0 a+a/10+1]);
    m=handles.m
    b=handles.bv;
    handles.KreisPosi=[ handles.KreisPosi ; xn2 yn2];
    handles.KreisRadius = [handles.KreisRadius ; rn2];
    Kreis_Info(2,:)=[xn2 , yn2 , rn2 , 2 , 0 , 0];
    handles.Kreis_Info=Kreis_Info;
    
%     set(gca,'ytick',[]);
%     set(gca, 'Visible', 'off');
    %hold on;
    handles.rn2=rn2;%merken der Variablen
    handles.xn2=xn2;
    handles.yn2=yn2;
    handles.object2=object2;
    x_kreiss = xn2;
    y_kreiss = yn2;
    handles.h=h;
    guidata(hObject, handles);
    
     %Abrollbedingung
    [o2]=0; %Vektor gibt an an welchen Oberflächen Kreisscheibe 1 Kontakt hat.
    tol=0.0001*a;
    n=1;
    set(handles.panel_kreis,'Visible','off');
    currentCounterValue
    for g=1:currentCounterValue
              
        if( X(n)<=xn2 && xn2<=X(n+1)) || (X(n)==X(n+1) && X(n)>=xn2-tol-rn2 && X(n)<=xn2+tol+rn2)
            
            n=n+4;
            u=0;
            m(g);
            for e=xn2-rn2:0.01:xn2+rn2
                handles.g=g;
                if m(g)==inf
                  
                    nv=X(4*g-3);
                    
                    if (xn2-rn2-tol)<=nv && nv<=(xn2+rn2+tol) && u==0
                    [o2]=[o2;g]
                    handles.o2=o2;guidata(hObject,handles);
                        u=1;
                        set(handles.abrollbedingung,'Visible','on');
                        set(handles.oberflaechenbedingung, 'String', g);
                        uiwait() 
                        handles=guidata(hObject);
                        
                    end
                else   
                    
                    navy=m(g)*e+b(g);
                    abs=sqrt((xn2-e)^2+(yn2-navy)^2);
                
                    if (rn2-tol)<=abs && abs<=(rn2+tol) && u==0
                        [o2]=[o2;g]
                        u=1;handles.o2=o2;
                        guidata(hObject,handles);
                        set(handles.abrollbedingung,'Visible','on');
                        set(handles.oberflaechenbedingung, 'String', g);
                        uiwait()
                        handles=guidata(hObject);
                        
                    end
            end
        end
        end 
    end
    
elseif counter2==3
    object3=1; %kosy enthält einen Kreis
    xn3=eval(sym(str2double(get(handles.x_k,'string'))));% Auslesen der Eingaben
    %w1=str2double(get(handles.w,'string'))/360*2*pi;
    yn3=eval(sym(str2double(get(handles.y_k,'string'))));
    rn3=eval(sym(str2double(get(handles.r_k,'string'))));
    axes(handles.kosy);
    t=0:0.01:2*pi;% Zeichnen des Kreises
    phi3=0;
    spec=[rn3*sin(0:0.01:pi) 0.5*rn3*sin(0:0.01:pi) 0.5*rn3*sin(pi:0.01:2*pi);rn3*cos(0:0.01:pi) -0.5*rn3+0.5*rn3*cos(pi:0.01:2*pi) 0.5*rn3+0.5*rn3*cos(pi:0.01:2*pi);...
    rn3*sin(pi:0.01:2*pi) 0.5*rn3*sin(pi:0.01:2*pi) 0.5*rn3*sin(0:0.01:pi);rn3*cos(pi:0.01:2*pi) 0.5*rn3+0.5*rn3*cos(0:0.01:pi) -0.5*rn3+0.5*rn3*cos(0:0.01:pi)];
    trans = [cos(phi3) sin(phi3) 0 0;-sin(phi3) cos(phi3) 0 0;0 0 cos(phi3) sin(phi3);0 0 -sin(phi3) cos(phi3)];
    spec3 = (spec'*trans)';
    [x]=[xn3+spec3(1,:);xn3+spec3(3,:)];
    [y]=[yn3+spec3(2,:);yn3+spec3(4,:)];
    h(3,1) = fill(x(1,:),y(1,:),'k','Parent',gca);
    hold on;
    h(3,2) = fill(x(2,:),y(2,:),'w','Parent',gca);
    h(3,3) = 0;  
    xlim([0 a+a/10+1]);% Korrektur des Limits
    ylim([0 a+a/10+1]);
    m=handles.m;
    b=handles.bv;
    handles.KreisPosi=[ handles.KreisPosi ; xn3 yn3];
    handles.KreisRadius = [handles.KreisRadius ; rn3];
%     set(gca,'ytick',[]);
%     set(gca, 'Visible', 'off');
    %hold on;
    handles.rn3=rn3;%merken der Variablen
    handles.xn3=xn3;
    handles.yn3=yn3;
    handles.object3=object3;
    x_kreiss = xn3;
    y_kreiss = yn3;
    Kreis_Info(3,:)=[xn3 , yn3 , rn3 , 2 , 0 , 0];
    handles.Kreis_Info=Kreis_Info;
    handles.h=h;
    guidata(hObject, handles);
    
    %Abrollbedingung
    [o3]=0; %Vektor gibt an an welchen Oberflächen Kreisscheibe 1 Kontakt hat.
    tol=0.0001*a;
    n=1;
    set(handles.panel_kreis,'Visible','off');
    currentCounterValue
    for g=1:currentCounterValue
              
            
              
        if( X(n)<=xn3 && xn3<=X(n+1)) || (X(n)==X(n+1) && X(n)>=xn3-tol-rn1 && X(n)<=xn3+tol+rn3)
            
            n=n+4;
            u=0;
            m(g);
            for e=xn3-rn3:0.01:xn3+rn3
                handles.g=g;
                if m(g)==inf
                  
                    nv=X(4*g-3);
                    
                    if (xn3-rn3-tol)<=nv && nv<=(xn3+rn3+tol) && u==0
                    [o3]=[o3;g]
                        u=1;
                        set(handles.abrollbedingung,'Visible','on');
                        set(handles.oberflaechenbedingung, 'String', g);
                        handles.o3=o3;
                        guidata(hObject,handles);
                        uiwait() 
                        handles=guidata(hObject);
                    end
                else   
                    
                    navy=m(g)*e+b(g);
                    abs=sqrt((xn3-e)^2+(yn3-navy)^2);
                
                    if (rn3-tol)<=abs && abs<=(rn3+tol) && u==0
                        [o3]=[o3;g]
                        u=1; 
                        handles.o3=o3;
                        guidata(hObject,handles);
                        set(handles.abrollbedingung,'Visible','on');
                        set(handles.oberflaechenbedingung, 'String', g);
                        uiwait()
                        handles=guidata(hObject);
                       
                    end
            end
        end
        end 
    end
elseif counter2==4
    object4=1; %kosy enthält einen Kreis
    xn4=eval(sym(str2double(get(handles.x_k,'string'))));% Auslesen der Eingaben
    %w1=str2double(get(handles.w,'string'))/360*2*pi;
    yn4=eval(sym(str2double(get(handles.y_k,'string'))));
    rn4=eval(sym(str2double(get(handles.r_k,'string'))));
    axes(handles.kosy);
    t=0:0.01:2*pi;% Zeichnen des Kreises
    phi4=0;
    spec=[rn4*sin(0:0.01:pi) 0.5*rn4*sin(0:0.01:pi) 0.5*rn4*sin(pi:0.01:2*pi);rn4*cos(0:0.01:pi) -0.5*rn4+0.5*rn4*cos(pi:0.01:2*pi) 0.5*rn4+0.5*rn4*cos(pi:0.01:2*pi);...
    rn4*sin(pi:0.01:2*pi) 0.5*rn4*sin(pi:0.01:2*pi) 0.5*rn4*sin(0:0.01:pi);rn4*cos(pi:0.01:2*pi) 0.5*rn4+0.5*rn4*cos(0:0.01:pi) -0.5*rn4+0.5*rn4*cos(0:0.01:pi)];
    trans = [cos(phi4) sin(phi4) 0 0;-sin(phi4) cos(phi4) 0 0;0 0 cos(phi4) sin(phi4);0 0 -sin(phi4) cos(phi4)];
    spec4 = (spec'*trans)';
    [x]=[xn4+spec4(1,:);xn4+spec4(3,:)];
    [y]=[yn4+spec4(2,:);yn4+spec4(4,:)];
    h(4,1) = fill(x(1,:),y(1,:),'k','Parent',gca);
    hold on;
    h(4,2) = fill(x(2,:),y(2,:),'w','Parent',gca);
    h(4,3) = 0;  
    xlim([0 a+a/10+1]);% Korrektur des Limits
    ylim([0 a+a/10+1]);
    m=handles.m;
    b=handles.bv;
    handles.KreisPosi=[ handles.KreisPosi ; xn4 yn4];
    handles.KreisRadius = [handles.KreisRadius ; rn4];
%     set(gca,'ytick',[]);
%     set(gca, 'Visible', 'off');
    %hold on;
    handles.rn4=rn4;%merken der Variablen
    handles.xn4=xn4;
    handles.yn4=yn4;
    handles.object4=object4;
    x_kreiss = xn4;
    y_kreiss = yn4;
    Kreis_Info(4,:)=[xn4 , yn4 , rn4 , 2 , 0 , 0];
    handles.Kreis_Info=Kreis_Info;
    %Abrollbedingung
    [o4]=0; %Vektor gibt an an welchen Oberflächen Kreisscheibe 1 Kontakt hat.
    tol=0.0001*a;
    n=1;
    handles.h=h;
    guidata(hObject, handles);
    set(handles.panel_kreis,'Visible','off');
    currentCounterValue
    for g=1:currentCounterValue
              
          
              
        if( X(n)<=xn4 && xn4<=X(n+1)) || (X(n)==X(n+1) && X(n)>=xn4-tol-rn4 && X(n)<=xn4+tol+rn4)
            
            n=n+4;
            u=0;
            m(g);
            for e=xn4-rn4:0.01:xn4+rn4
                handles.g=g;
                if m(g)==inf
                  
                    nv=X(4*g-3);
                    
                    if (xn4-rn4-tol)<=nv && nv<=(xn4+rn4+tol) && u==0
                    [o4]=[o4;g]
                        u=1;
                        set(handles.abrollbedingung,'Visible','on');
                        set(handles.oberflaechenbedingung, 'String', g);
                        handles.o4=o4;
                        guidata(hObject,handles);
                        uiwait()
                        handles=guidata(hObject);
                    end
                else   
                    
                    navy=m(g)*e+b(g);
                    abs=sqrt((xn4-e)^2+(yn4-navy)^2);
                
                    if (rn4-tol)<=abs && abs<=(rn4+tol) && u==0
                        [o4]=[o4; g]
                        u=1;
                        handles.o4=o4;
                       guidata(hObject,handles);
                        set(handles.abrollbedingung,'Visible','on');
                        set(handles.oberflaechenbedingung, 'String', g);
                        uiwait()
                        handles=guidata(hObject);
                        
                    end
            end
        end
        end 
    end
set(handles.panel_kreis,'Visible','off');
guidata(hObject, handles);
counter5=str2double(get(handles.counter5,'string'));
%%% MAtrix der Positionen zu t=0
ges_counter=counter2+counter5
POS_Koerper_t0=handles.POS_Koerper_t0;
end

% for nn_r_Koerper=1:10
%     
%     if nn_r_Koerper==ges_counter
%         
%         POS_Koerper_t0(nn_r_Koerper,:)=[1 x_kreiss y_kreiss];
%         
%     end
%     
%     
%     
% end

%handles.POS_Koerper_t0=POS_Koerper_t0;

guidata(hObject, handles);













% --- Executes on button press in rollen.
function rollen_Callback(hObject, eventdata, handles)
% hObject    handle to rollen (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of rollen
%liest aus ob kreis rollt
guidata(hObject, handles);
counter2=str2double(get(handles.counter2,'string'));
here=handles.here;
% if counter2==1 && here==0
%     abroll1=0;
%     here=1;
% end
% here2=handles.here2;
% if counter2==2 && here2==0
%     abroll2=0;
%     here2=1;
% end
abroll1=handles.abroll1;
abroll2=handles.abroll2;
abroll3=handles.abroll3;
abroll4=handles.abroll4;
Kreis_Info=handles.Kreis_Info;
if counter2==1
   
    [abroll1]=[abroll1;0]
    handles.abroll1=abroll1; 
     Kreis_Info(1,4)= [0];
    handles.Kreis_Info=Kreis_Info;
    guidata(hObject, handles);
    set(handles.abrollbedingung,'Visible','off');
   
    uiresume();
    
elseif counter2==2
    %abroll2=handles.abroll2;
    [abroll2]=[abroll2;0]
    handles.abroll2=abroll2;
     Kreis_Info(2,4)= [0];
    handles.Kreis_Info=Kreis_Info;
    set(handles.abrollbedingung,'Visible','off');
    guidata(hObject, handles);
    uiresume();
    
elseif counter2==3
    abroll3=handles.abroll3;
    [abroll3]=[abroll3;0]
    handles.abroll3=abroll3;
    Kreis_Info(3,4)= [0];
    handles.Kreis_Info=Kreis_Info;
    set(handles.abrollbedingung,'Visible','off');
    guidata(hObject, handles);
    uiresume();
    
elseif counter2==4
    abroll4=handles.abroll4;
    [abroll4]=[abroll4;0]
    handles.abroll4=abroll4;
    Kreis_Info(4,4)= [0];
    handles.Kreis_Info=Kreis_Info;
    set(handles.abrollbedingung,'Visible','off');
    guidata(hObject, handles);
    uiresume();
end
guidata(hObject, handles);
% --- Executes on button press in gleiten.
function gleiten_Callback(hObject, eventdata, handles)
% hObject    handle to gleiten (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of gleiten
guidata(hObject, handles);
counter2=str2double(get(handles.counter2,'string'));
% if counter2==1 && here==0
%     abroll1=0;
%     here=1;
% end
% 
% if counter2==2 && here2==0
%     abroll2=0;
%     here2=1;
% end
abroll1=handles.abroll1;
abroll2=handles.abroll2;
abroll3=handles.abroll3;
abroll4=handles.abroll4;
Kreis_Info=handles.Kreis_Info;
if counter2==1
    
    [abroll1]=[abroll1;1]
    handles.abroll1=abroll1;
    set(handles.abrollbedingung,'Visible','off');
    Kreis_Info(1,4)= [1];
    handles.Kreis_Info=Kreis_Info;
    guidata(hObject, handles);
    uiresume();
    
elseif counter2==2
    abroll2=handles.abroll2;
    [abroll2]=[abroll2;1]
    handles.abroll2=abroll2;
    set(handles.abrollbedingung,'Visible','off');
    Kreis_Info(2,4)= [1];
    handles.Kreis_Info=Kreis_Info;
    guidata(hObject, handles);
    uiresume();
    
elseif counter2==3
    abroll3=handles.abroll3;
    [abroll3]=[abroll3;1]
    handles.abroll3=abroll3;
    set(handles.abrollbedingung,'Visible','off');
    Kreis_Info(3,4)= 1;
    handles.Kreis_Info=Kreis_Info;
    guidata(hObject, handles);
    uiresume();
    
elseif counter2==4
    abroll4=handles.abroll4;
    [abroll4]=[abroll4;1]
    handles.abroll4=abroll4;
    set(handles.abrollbedingung,'Visible','off');
    Kreis_Info(4,4)= 1;
    handles.Kreis_Info=Kreis_Info;
    guidata(hObject, handles);
    uiresume();
end
















function edit13_Callback(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit13 as text
%        str2double(get(hObject,'String')) returns contents of edit13 as a double


% --- Executes during object creation, after setting all properties.
function edit13_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function t1_Callback(hObject, eventdata, handles)
% hObject    handle to t1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of t1 as text
%        str2double(get(hObject,'String')) returns contents of t1 as a double


% --- Executes during object creation, after setting all properties.
function t1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to t1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function t4_Callback(hObject, eventdata, handles)
% hObject    handle to t4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of t4 as text
%        str2double(get(hObject,'String')) returns contents of t4 as a double


% --- Executes during object creation, after setting all properties.
function t4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to t4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function t3_Callback(hObject, eventdata, handles)
% hObject    handle to t3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of t3 as text
%        str2double(get(hObject,'String')) returns contents of t3 as a double


% --- Executes during object creation, after setting all properties.
function t3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to t3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function t2_Callback(hObject, eventdata, handles)
% hObject    handle to t2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of t2 as text
%        str2double(get(hObject,'String')) returns contents of t2 as a double


% --- Executes during object creation, after setting all properties.
function t2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to t2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit18_Callback(hObject, eventdata, handles)
% hObject    handle to edit18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit18 as text
%        str2double(get(hObject,'String')) returns contents of edit18 as a double


% --- Executes during object creation, after setting all properties.
function edit18_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit19_Callback(hObject, eventdata, handles)
% hObject    handle to edit19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit19 as text
%        str2double(get(hObject,'String')) returns contents of edit19 as a double


% --- Executes during object creation, after setting all properties.
function edit19_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit20_Callback(hObject, eventdata, handles)
% hObject    handle to edit20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit20 as text
%        str2double(get(hObject,'String')) returns contents of edit20 as a double


% --- Executes during object creation, after setting all properties.
function edit20_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit21_Callback(hObject, eventdata, handles)
% hObject    handle to edit21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit21 as text
%        str2double(get(hObject,'String')) returns contents of edit21 as a double


% --- Executes during object creation, after setting all properties.
function edit21_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit22_Callback(hObject, eventdata, handles)
% hObject    handle to edit22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit22 as text
%        str2double(get(hObject,'String')) returns contents of edit22 as a double


% --- Executes during object creation, after setting all properties.
function edit22_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit23_Callback(hObject, eventdata, handles)
% hObject    handle to edit23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit23 as text
%        str2double(get(hObject,'String')) returns contents of edit23 as a double


% --- Executes during object creation, after setting all properties.
function edit23_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit24_Callback(hObject, eventdata, handles)
% hObject    handle to edit24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit24 as text
%        str2double(get(hObject,'String')) returns contents of edit24 as a double


% --- Executes during object creation, after setting all properties.
function edit24_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit25_Callback(hObject, eventdata, handles)
% hObject    handle to edit25 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit25 as text
%        str2double(get(hObject,'String')) returns contents of edit25 as a double


% --- Executes during object creation, after setting all properties.
function edit25_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit25 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit26_Callback(hObject, eventdata, handles)
% hObject    handle to edit26 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit26 as text
%        str2double(get(hObject,'String')) returns contents of edit26 as a double


% --- Executes during object creation, after setting all properties.
function edit26_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit26 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function t5_Callback(hObject, eventdata, handles)
% hObject    handle to t5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of t5 as text
%        str2double(get(hObject,'String')) returns contents of t5 as a double


% --- Executes during object creation, after setting all properties.
function t5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to t5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function t8_Callback(hObject, eventdata, handles)
% hObject    handle to t8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of t8 as text
%        str2double(get(hObject,'String')) returns contents of t8 as a double


% --- Executes during object creation, after setting all properties.
function t8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to t8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function t7_Callback(hObject, eventdata, handles)
% hObject    handle to t7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of t7 as text
%        str2double(get(hObject,'String')) returns contents of t7 as a double


% --- Executes during object creation, after setting all properties.
function t7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to t7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function t6_Callback(hObject, eventdata, handles)
% hObject    handle to t6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of t6 as text
%        str2double(get(hObject,'String')) returns contents of t6 as a double


% --- Executes during object creation, after setting all properties.
function t6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to t6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function t9_Callback(hObject, eventdata, handles)
% hObject    handle to t9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of t9 as text
%        str2double(get(hObject,'String')) returns contents of t9 as a double


% --- Executes during object creation, after setting all properties.
function t9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to t9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function t12_Callback(hObject, eventdata, handles)
% hObject    handle to t12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of t12 as text
%        str2double(get(hObject,'String')) returns contents of t12 as a double


% --- Executes during object creation, after setting all properties.
function t12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to t12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function t11_Callback(hObject, eventdata, handles)
% hObject    handle to t11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of t11 as text
%        str2double(get(hObject,'String')) returns contents of t11 as a double


% --- Executes during object creation, after setting all properties.
function t11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to t11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function t10_Callback(hObject, eventdata, handles)
% hObject    handle to t10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of t10 as text
%        str2double(get(hObject,'String')) returns contents of t10 as a double


% --- Executes during object creation, after setting all properties.
function t10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to t10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function t13_Callback(hObject, eventdata, handles)
% hObject    handle to t13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of t13 as text
%        str2double(get(hObject,'String')) returns contents of t13 as a double


% --- Executes during object creation, after setting all properties.
function t13_CreateFcn(hObject, eventdata, handles)
% hObject    handle to t13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function t14_Callback(hObject, eventdata, handles)
% hObject    handle to t14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of t14 as text
%        str2double(get(hObject,'String')) returns contents of t14 as a double


% --- Executes during object creation, after setting all properties.
function t14_CreateFcn(hObject, eventdata, handles)
% hObject    handle to t14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function nnvx_Callback(hObject, eventdata, handles)
% hObject    handle to nnvx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of nnvx as text
%        str2double(get(hObject,'String')) returns contents of nnvx as a double


% --- Executes during object creation, after setting all properties.
function nnvx_CreateFcn(hObject, eventdata, handles)
% hObject    handle to nnvx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function nnvdx_Callback(hObject, eventdata, handles)
% hObject    handle to nnvdx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of nnvdx as text
%        str2double(get(hObject,'String')) returns contents of nnvdx as a double


% --- Executes during object creation, after setting all properties.
function nnvdx_CreateFcn(hObject, eventdata, handles)
% hObject    handle to nnvdx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function nnvdy_Callback(hObject, eventdata, handles)
% hObject    handle to nnvdy (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of nnvdy as text
%        str2double(get(hObject,'String')) returns contents of nnvdy as a double


% --- Executes during object creation, after setting all properties.
function nnvdy_CreateFcn(hObject, eventdata, handles)
% hObject    handle to nnvdy (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function nnvy_Callback(hObject, eventdata, handles)
% hObject    handle to nnvy (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of nnvy as text
%        str2double(get(hObject,'String')) returns contents of nnvy as a double


% --- Executes during object creation, after setting all properties.
function nnvy_CreateFcn(hObject, eventdata, handles)
% hObject    handle to nnvy (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over t1.
function t1_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to t1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(hObject, 'String', '', 'Enable', 'on');
uicontrol(hObject);


% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over t2.
function t2_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to t2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(hObject, 'String', '', 'Enable', 'on');
uicontrol(hObject);


% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over t3.
function t3_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to t3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(hObject, 'String', '', 'Enable', 'on');
uicontrol(hObject);

% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over t3.
function t4_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to t3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(hObject, 'String', '', 'Enable', 'on');
uicontrol(hObject);

% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over t3.
function t5_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to t3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(hObject, 'String', '', 'Enable', 'on');
uicontrol(hObject);
% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over t3.

function t6_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to t3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(hObject, 'String', '', 'Enable', 'on');
uicontrol(hObject);

% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over t3.
function t7_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to t3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(hObject, 'String', '', 'Enable', 'on');
uicontrol(hObject);

% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over t3.
function t8_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to t3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(hObject, 'String', '', 'Enable', 'on');
uicontrol(hObject);

% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over t3.
function t9_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to t3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(hObject, 'String', '', 'Enable', 'on');
uicontrol(hObject);

% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over t3.
function t10_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to t3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(hObject, 'String', '', 'Enable', 'on');
uicontrol(hObject);

% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over t3.
function t11_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to t3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(hObject, 'String', '', 'Enable', 'on');
uicontrol(hObject);

% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over t3.
function t12_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to t3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(hObject, 'String', '', 'Enable', 'on');
uicontrol(hObject);

% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over t3.
function t13_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to t3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(hObject, 'String', '', 'Enable', 'on');
uicontrol(hObject);

% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over t3.
function t14_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to t3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(hObject, 'String', '', 'Enable', 'on');
uicontrol(hObject);

% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over t3.
function nnvx_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to t3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(hObject, 'String', '', 'Enable', 'on');
uicontrol(hObject);

% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over t3.
function nnvdx_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to t3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(hObject, 'String', '', 'Enable', 'on');
uicontrol(hObject);

% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over t3.
function nnvy_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to t3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(hObject, 'String', '', 'Enable', 'on');
uicontrol(hObject);

% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over t3.
function nnvdy_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to t3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(hObject, 'String', '', 'Enable', 'on');
uicontrol(hObject);


% --- Executes on button press in v1.
function v1_Callback(hObject, eventdata, handles)
% hObject    handle to v1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on mouse press over axes background.
function kosy_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to kosy (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

 set(findobj(handles.kosy,'Type','axes'), 'ButtonDownFcn',{@kosy_ButtonDownFcn,handles});   
 Koordinaten_ist = get(handles.kosy,'CurrentPoint')
 

% --- Executes on button press in festlager.
function festlager_Callback(hObject, eventdata, handles)
% hObject    handle to festlager (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.auflager_fest,'Visible','on');
%Counter
  % Read current text and convert it to a number.
currentCounterValue = str2double(get(handles.counter4, 'String'));

% Create a new string with the number being 1 more than the current number.
newString = sprintf('%d', int32(currentCounterValue +1));

% Send the new string to the text control.
set(handles.counter4, 'String', newString );
data = str2double(get(handles.punkte, 'data'));
set(handles.fest_x,'String','1');
set(handles.fest_y,'String','1');
set(handles.fest_winkel,'String','0');



function fest_x_Callback(hObject, eventdata, handles)
% hObject    handle to fest_x (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of fest_x as text
%        str2double(get(hObject,'String')) returns contents of fest_x as a double


% --- Executes during object creation, after setting all properties.
function fest_x_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fest_x (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function fest_y_Callback(hObject, eventdata, handles)
% hObject    handle to fest_y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of fest_y as text
%        str2double(get(hObject,'String')) returns contents of fest_y as a double


% --- Executes during object creation, after setting all properties.
function fest_y_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fest_y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in fest_ok.
function fest_ok_Callback(hObject, eventdata, handles)
% hObject    handle to fest_ok (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
cCV = str2double(get(handles.counter4, 'String'));
hold on;
a=handles.a;
axes(handles.kosy);
r=(a+a/10+1)/125;

Lager_Info=handles.Lager_Info;
if cCV==1
    x_pos1=str2double(get(handles.fest_x,'string'));
    y_pos1=str2double(get(handles.fest_y,'string'));
    w1=str2double(get(handles.fest_winkel,'string'))/360*2*pi;
    handles.LagerPos=[x_pos1 y_pos1];
    Lager_Info(1,:)=[ x_pos1 , y_pos1 , w1 , 1 ];
    handles.Lager_Info=Lager_Info;
    guidata(hObject,handles);

    % draw the FL

    phi=0:0.1:2*pi;
    plot(x_pos1+r*sin(w1)+r*cos(phi),y_pos1-r*cos(w1)+r*sin(phi),'b'); hold on;   % Beginn des FL
    plot([x_pos1+2*r*sin(w1),x_pos1+4*r*sin(w1)-2*r*cos(w1)],[y_pos1-2*r*cos(w1),y_pos1-4*r*cos(w1)-2*r*sin(w1)],'b'); hold on;
    plot([x_pos1+2*r*cos(w1)+4*r*sin(w1),x_pos1+2*r*sin(w1)],[y_pos1-4*r*cos(w1)+2*r*sin(w1),y_pos1-2*r*cos(w1)],'b'); hold on;
    plot([x_pos1-3*r*cos(w1)+4*r*sin(w1),x_pos1+3*r*cos(w1)+4*r*sin(w1)],[y_pos1-4*r*cos(w1)-3*r*sin(w1),y_pos1-4*r*cos(w1)+3*r*sin(w1)],'b'); hold on;
        for i=0:2
            plot([x_pos1-1.5*r*cos(w1)+4*r*sin(w1)+2*r*cos(w1)*i,x_pos1-2.5*r*cos(w1)+2*r*cos(w1)*i+5*r*sin(w1)],[y_pos1-4*r*cos(w1)-1.5*r*sin(w1)+2*r*sin(w1)*i,y_pos1-5*r*cos(w1)-2.5*r*sin(w1)+2*r*sin(w1)*i],'b'); hold on;
        end
    xlim([0 a+a/10+1]);% Korrektur des Limits
    ylim([0 a+a/10+1]);
    % Ende des FL
    set(handles.auflager_fest,'Visible','off');
 
elseif cCV==2
    x_pos2=str2double(get(handles.fest_x,'string'));
    y_pos2=str2double(get(handles.fest_y,'string'));
    w2=str2double(get(handles.fest_winkel,'string'))/360*2*pi;
    handles.LagerPos=[handles.LagerPos ; x_pos2 y_pos2];
    Lager_Info(2,:)=[ x_pos2 , y_pos2 , w2 , 1 ];
    handles.Lager_Info=Lager_Info;
    guidata(hObject,handles);

    % draw the FL

    phi=0:0.1:2*pi;
    plot(x_pos2+r*sin(w2)+r*cos(phi),y_pos2-r*cos(w2)+r*sin(phi),'b'); hold on;   % Beginn des FL
    plot([x_pos2+2*r*sin(w2),x_pos2+4*r*sin(w2)-2*r*cos(w2)],[y_pos2-2*r*cos(w2),y_pos2-4*r*cos(w2)-2*r*sin(w2)],'b'); hold on;
    plot([x_pos2+2*r*cos(w2)+4*r*sin(w2),x_pos2+2*r*sin(w2)],[y_pos2-4*r*cos(w2)+2*r*sin(w2),y_pos2-2*r*cos(w2)],'b'); hold on;
    plot([x_pos2-3*r*cos(w2)+4*r*sin(w2),x_pos2+3*r*cos(w2)+4*r*sin(w2)],[y_pos2-4*r*cos(w2)-3*r*sin(w2),y_pos2-4*r*cos(w2)+3*r*sin(w2)],'b'); hold on;
        for i=0:2
            plot([x_pos2-1.5*r*cos(w2)+4*r*sin(w2)+2*r*cos(w2)*i,x_pos2-2.5*r*cos(w2)+2*r*cos(w2)*i+5*r*sin(w2)],[y_pos2-4*r*cos(w2)-1.5*r*sin(w2)+2*r*sin(w2)*i,y_pos2-5*r*cos(w2)-2.5*r*sin(w2)+2*r*sin(w2)*i],'b'); hold on;
        end
    xlim([0 a+a/10+1]);% Korrektur des Limits
    ylim([0 a+a/10+1]);
    % Ende des FL
     set(handles.auflager_fest,'Visible','off');
     
elseif cCV==3
    x_pos3=str2double(get(handles.fest_x,'string'));
    y_pos3=str2double(get(handles.fest_y,'string'));
    w3=str2double(get(handles.fest_winkel,'string'))/360*2*pi;
    handles.LagerPos=[handles.LagerPos ; x_pos3 y_pos3];
    Lager_Info(3,:)=[ x_pos3 , y_pos3 , w3 , 1 ];
    handles.Lager_Info=Lager_Info;
    guidata(hObject,handles);

    % draw the FL

    phi=0:0.1:2*pi;
    plot(x_pos3+r*sin(w3)+r*cos(phi),y_pos3-r*cos(w3)+r*sin(phi),'b'); hold on;   % Beginn des FL
    plot([x_pos3+2*r*sin(w3),x_pos3+4*r*sin(w3)-2*r*cos(w3)],[y_pos3-2*r*cos(w3),y_pos3-4*r*cos(w3)-2*r*sin(w3)],'b'); hold on;
    plot([x_pos3+2*r*cos(w3)+4*r*sin(w3),x_pos3+2*r*sin(w3)],[y_pos3-4*r*cos(w3)+2*r*sin(w3),y_pos3-2*r*cos(w3)],'b'); hold on;
    plot([x_pos3-3*r*cos(w3)+4*r*sin(w3),x_pos3+3*r*cos(w3)+4*r*sin(w3)],[y_pos3-4*r*cos(w3)-3*r*sin(w3),y_pos3-4*r*cos(w3)+3*r*sin(w3)],'b'); hold on;
        for i=0:2
            plot([x_pos3-1.5*r*cos(w3)+4*r*sin(w3)+2*r*cos(w3)*i,x_pos3-2.5*r*cos(w3)+2*r*cos(w3)*i+5*r*sin(w3)],[y_pos3-4*r*cos(w3)-1.5*r*sin(w3)+2*r*sin(w3)*i,y_pos3-5*r*cos(w3)-2.5*r*sin(w3)+2*r*sin(w3)*i],'b'); hold on;
        end
    xlim([0 a+a/10+1]);% Korrektur des Limits
    ylim([0 a+a/10+1]);
    % Ende des FL
     set(handles.auflager_fest,'Visible','off');
     
     elseif cCV==4
    x_pos4=str2double(get(handles.fest_x,'string'));
    y_pos4=str2double(get(handles.fest_y,'string'));
    w4=str2double(get(handles.fest_winkel,'string'))/360*2*pi;
    handles.LagerPos=[handles.LagerPos ; x_pos4 y_pos4];
    handles.LagerPos=[handles.LagerPos ; x_pos4 y_pos4];
    Lager_Info(4,:)=[ x_pos4 , y_pos4 , w4 , 1 ];
    handles.Lager_Info=Lager_Info;
    guidata(hObject,handles);

    % draw the FL

    phi=0:0.1:2*pi;
    plot(x_pos4+r*sin(w4)+r*cos(phi),y_pos4-r*cos(w4)+r*sin(phi),'b'); hold on;   % Beginn des FL
    plot([x_pos4+2*r*sin(w4),x_pos4+4*r*sin(w4)-2*r*cos(w4)],[y_pos4-2*r*cos(w4),y_pos4-4*r*cos(w4)-2*r*sin(w4)],'b'); hold on;
    plot([x_pos4+2*r*cos(w4)+4*r*sin(w4),x_pos4+2*r*sin(w4)],[y_pos4-4*r*cos(w4)+2*r*sin(w4),y_pos4-2*r*cos(w4)],'b'); hold on;
    plot([x_pos4-3*r*cos(w4)+4*r*sin(w4),x_pos4+3*r*cos(w4)+4*r*sin(w4)],[y_pos4-4*r*cos(w4)-3*r*sin(w4),y_pos4-4*r*cos(w4)+3*r*sin(w4)],'b'); hold on;
        for i=0:2
            plot([x_pos4-1.5*r*cos(w4)+4*r*sin(w4)+2*r*cos(w4)*i,x_pos4-2.5*r*cos(w4)+2*r*cos(w4)*i+5*r*sin(w4)],[y_pos4-4*r*cos(w4)-1.5*r*sin(w4)+2*r*sin(w4)*i,y_pos4-5*r*cos(w4)-2.5*r*sin(w4)+2*r*sin(w4)*i],'b'); hold on;
        end
    xlim([0 a+a/10+1]);% Korrektur des Limits
    ylim([0 a+a/10+1]);
    % Ende des FL
     set(handles.auflager_fest,'Visible','off');
end


function fest_winkel_Callback(hObject, eventdata, handles)
% hObject    handle to fest_winkel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of fest_winkel as text
%        str2double(get(hObject,'String')) returns contents of fest_winkel as a double


% --- Executes during object creation, after setting all properties.
function fest_winkel_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fest_winkel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in push_seil.
function push_seil_Callback(hObject, eventdata, handles)
% hObject    handle to push_seil (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.Counter = 0;
handles.dete=[];
handles.Remem=[];
handles.SelectTemp = [];
handles.Iter=0;
handles.SelectType=[0 0];
handles.SelectKreis=[0 0];
handles.Counter_Point=0;
set(handles.figure1,'WindowButtonMotionFcn',@drawCircle);
set(handles.figure1,'WindowButtonDownFcn',@drawCircle);
set(handles.figure1, 'selectionType','open');
guidata(hObject,handles);

% --- Executes on button press in rotte.
function rotte_Callback(hObject, eventdata, handles)
% hObject    handle to rotte (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.rotate,'Visible','on');
set(handles.gen_koord,'Visible','off');
set(handles.rotate,'units','normalized','Position',[0.5 0.5 0.089 0.279])

% --- Executes on button press in transgender.
function transgender_Callback(hObject, eventdata, handles)
% hObject    handle to transgender (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.gen_co,'Visible','on');
set(handles.gen_koord,'Visible','off');


% --- Executes on button press in positive.
function positive_Callback(hObject, eventdata, handles)
% hObject    handle to positive (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=handles.a;
currentCounterValue3=handles.currentCounterValue3;
Koordinate_Info=handles.Koordinate_Info;
if currentCounterValue3==0
    bez_koerper1=str2double(get(handles.bz_koerper,'string'));% Auslesen des Bezugskörpers
    pos_rx=str2double(get(handles.rot_x,'string'));
    pos_ry=str2double(get(handles.rot_y,'string'));
    phi=str2double(get(handles.verdrehung,'string'))/360*2*pi+pi/2;
    bz_k=str2double(get(handles.bz_koerper,'string'));
    handles.bz_k1=bz_k; guidata(hObject,handles);

    wink=(phi:0.01:phi+pi/2);
    [x]=cos(wink)*a/15+pos_rx;
    [y]=sin(wink)*a/15+pos_ry;
    plot(x,y,'k','LineWidth',2);
    phi=phi+pi/2;
    [z]=[pos_rx+cos(phi)*a/15+a/30*cos((phi-pi/2)-pi*8/24),pos_rx+cos(phi)*a/15,pos_rx+cos(phi)*a/15+a/30*cos((phi-pi/2)+pi*4/24)];
    [f]=[pos_ry+sin(phi)*a/15+a/30*sin((phi-pi/2)-pi*8/24),pos_ry+sin(phi)*a/15,pos_ry+sin(phi)*a/15+a/30*sin((phi-pi/2)+pi*4/24)];
    plot(z,f,'k','LineWidth',2);
    xlim([0 a+a/10+1]);% Korrektur des Limits
    ylim([0 a+a/10+1]);
    %Festlegen wie die Rottation wirkt
    groesse_festlager=size(handles.LagerPos);
    groesse_fest=groesse_festlager(1,1);
    for groesse_f=1:groesse_fest
        
        if handles.LagerPos(groesse_f, 1)==pos_rx && handles.LagerPos(groesse_f,2)==pos_ry
           
                    rot_um_fest1=1;
                    handles.rot_um_fest1=rot_um_fest1;
                    guidata(hObject, handles);
        else 
    
                    rot_um_fest1=0;
                    handles.rot_um_fest1=rot_um_fest1;
                    guidata(hObject, handles);
        end
    end
    set(handles.nnvx,'String','phi');
    set(handles.nnvdx,'String','dphi');
    richtungssinn=1;
    Koordinate_Info(1,:)=[pos_rx,pos_ry,0,0,1,0];
    handles.richtungssinn1=richtungssinn;
    handles.drehung1=1;
elseif currentCounterValue3==1
    bez_koerper2=str2double(get(handles.bz_koerper,'string'));% Auslesen des Bezugskörpers
 pos_rx=str2double(get(handles.rot_x,'string'));
    pos_ry=str2double(get(handles.rot_y,'string'));
    phi=str2double(get(handles.verdrehung,'string'))/360*2*pi+pi/2;
    bz_k=str2double(get(handles.bz_koerper,'string'));
    handles.bez_koerper2=bez_koerper2;
    handles.bz_k2=bz_k; guidata(hObject,handles);

    wink=(phi:0.01:phi+pi/2);
    [x]=cos(wink)*a/15+pos_rx;
    [y]=sin(wink)*a/15+pos_ry;
    plot(x,y,'k','LineWidth',2);
    phi=phi+pi/2;
    [z]=[pos_rx+cos(phi)*a/15+a/30*cos((phi-pi/2)-pi*8/24),pos_rx+cos(phi)*a/15,pos_rx+cos(phi)*a/15+a/30*cos((phi-pi/2)+pi*4/24)];
    [f]=[pos_ry+sin(phi)*a/15+a/30*sin((phi-pi/2)-pi*8/24),pos_ry+sin(phi)*a/15,pos_ry+sin(phi)*a/15+a/30*sin((phi-pi/2)+pi*4/24)];
    plot(z,f,'k','LineWidth',2);
    xlim([0 a+a/10+1]);% Korrektur des Limits
    ylim([0 a+a/10+1]);
    richtungssinn2=1;
    handles.richtungssinn2=richtungssinn2;
    Koordinate_Info(2,:)=[pos_rx,pos_ry,0,0,1,0];
     for groesse_f=1:groesse_fest
        
        if handles.LagerPos(groesse_f, 1)==pos_rx
            if handles.LagerPos(groesse_f,2)==pos_ry
                rot_um_fest2=1;
                handles.rot_um_fest2=rot_um_fest2;
                 guidata(hObject, handles);
            end
        end
    end
end
handles.Koordinate_Info=koordinate_Info;
  handles.drehung1=1;
   guidata(hObject, handles);
   
   
   
% --- Executes on button press in negative.
function negative_Callback(hObject, eventdata, handles)
% hObject    handle to negative (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=handles.a;
Koordinate_Info=handles.Koordinate_Info;
pos_rx=str2double(get(handles.rot_x,'string'));
pos_ry=str2double(get(handles.rot_y,'string'));
phi=str2double(get(handles.verdrehung,'string'))/360*2*pi+pi/2;
bz_k=str2double(get(handles.bz_koerper,'string'));
handles.bz_k1=bz_k; guidata(hObject,handles);

wink=(phi:0.01:phi+pi/2);
[x]=-cos(wink)*a/15+pos_rx;
[y]=sin(wink)*a/15+pos_ry;
plot(x,y,'k','LineWidth',2);
phi=phi+pi/2;
[z]=[pos_rx-cos(phi)*a/15-a/30*cos((phi-pi/2)-pi/3),pos_rx-cos(phi)*a/15,pos_rx-cos(phi)*a/15-a/30*cos((phi-pi/2)+pi/6)];
[f]=[pos_ry+sin(phi)*a/15+a/30*sin((phi-pi/2)-pi/3),pos_ry+sin(phi)*a/15,pos_ry+sin(phi)*a/15+a/30*sin((phi-pi/2)+pi/6)];
plot(z,f,'k','LineWidth',2);
xlim([0 a+a/10+1]);% Korrektur des Limits
ylim([0 a+a/10+1]);




function rot_x_Callback(hObject, eventdata, handles)
% hObject    handle to rot_x (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of rot_x as text
%        str2double(get(hObject,'String')) returns contents of rot_x as a double


% --- Executes during object creation, after setting all properties.
function rot_x_CreateFcn(hObject, eventdata, handles)
% hObject    handle to rot_x (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function rot_y_Callback(hObject, eventdata, handles)
% hObject    handle to rot_y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of rot_y as text
%        str2double(get(hObject,'String')) returns contents of rot_y as a double


% --- Executes during object creation, after setting all properties.
function rot_y_CreateFcn(hObject, eventdata, handles)
% hObject    handle to rot_y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function bz_koerper_Callback(hObject, eventdata, handles)
% hObject    handle to bz_koerper (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of bz_koerper as text
%        str2double(get(hObject,'String')) returns contents of bz_koerper as a double


% --- Executes during object creation, after setting all properties.
function bz_koerper_CreateFcn(hObject, eventdata, handles)
% hObject    handle to bz_koerper (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function verdrehung_Callback(hObject, eventdata, handles)
% hObject    handle to verdrehung (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of verdrehung as text
%        str2double(get(hObject,'String')) returns contents of verdrehung as a double


% --- Executes during object creation, after setting all properties.
function verdrehung_CreateFcn(hObject, eventdata, handles)
% hObject    handle to verdrehung (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



%
%
%Seil FKT
%
%
%
function drawCircle(hObject,eventdata)
%input:Counter =
%0;dete=[];Kreis_Info[x,y,r,ko,];Lager_Info[];RechteckPosi;Iter
%output:dete;nukber(Template);figSeil2;figSeil3;Remem;SelectType;SelectKreis;Remem3;SelectTemp
%Counter for mouse, Iter for points;
%handles.Counter_Point = 0;
handles = guidata(hObject);
handles.FederIsOn = 2;
m_type = get(hObject, 'selectionType');
if strcmp(m_type, 'normal')
    handles.Counter = handles.Counter+1;%+handles.Iter
    handles.Counter_Point = handles.Counter_Point + handles.Iter;
    handles.SelectType(1) = handles.SelectType(2);
    handles.SelectType(2) = 0;
    handles.SelectKreis(1) = handles.SelectKreis(2);
    handles.SelectKreis(2) = 0;
    if handles.Counter == 1
        handles.figSeil2 = [];
    elseif handles.Counter == 2
        delete(handles.dete(1));%detekt punkte
        if ~handles.SelectType(1) %exit
            set(hObject,'WindowButtonMotionFcn','');
            set(handles.figure1,'WindowButtonDownFcn','');
            handles.figSeil(handles.Counter - 1,:) = handles.figSeil2(1);%problem
            handles.Remem3 = [handles.Remem3 ; handles.RememTemp];
            handles.Selected = [handles.Selected ; handles.SelectTemp(1,:)];
            jshjkhsk = handles.Selected
            handles.Counter = 0;
            guidata(hObject,handles);
            return;
        end
    %     handles.SelectKreis = 0; 
        handles.figSeil(1,:) = handles.figSeil2;
        handles.figSeil2 = [];
        handles.figSeil3 = [];
        handles.Iter = 0;
        %handles.RememTemp = 0;
        Temp = handles.SelectTemp;%#OK
        
    elseif handles.Counter >= 2
        delete(handles.dete);
        if handles.SelectType(1) == 0 %exit
            set(hObject,'WindowButtonMotionFcn','');
            set(handles.figure1,'WindowButtonDownFcn','');
            handles.figSeil(handles.Counter - 1,:) = handles.figSeil3(1);%problem
            handles.Remem3 = [handles.Remem3 ; handles.RememTemp];
            handles.Selected = [handles.Selected ; handles.SelectTemp];
            fdfadf = handles.Remem3
            jshjkhsk = handles.Selected
            handles.Counter = 0;
            guidata(hObject,handles);
            return;
        else
            %handles.Remem3 = [handles.Remem3 ; handles.RememTemp];
            %handles.Selected = [handles.Selected ; handles.SelectTemp];
            handles.figSeil(handles.Counter - 1,:) = handles.figSeil3(1);
            handles.figSeil3 = [];
            handles.Iter = 0;
            %handles.RememTemp = 0;
            %handles.SelectTemp = 0;
        end
        %&/rememTemp initialisieren
    end
    handles.nukber = 0;

    set(handles.figure1, 'selectionType','open');
end
pos = get(handles.kosy, 'currentpoint'); %%%
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
                handles.RememTemp(handles.Counter+1+handles.Counter_Point,:) = [pos(1) pos(2)];
                handles.SelectTemp(handles.Counter+1,1) = 0;
            end
            handles.nukber = handles.nukber + 1;
        elseif norm(pos - handles.KreisPosi(i,:))< handles.KreisRadius(i)*1
            handles.dete(handles.Counter+1) = plot(handles.KreisPosi(i,1) , handles.KreisPosi(i,2),'bo');
            handles.RememTemp(handles.Counter+1+handles.Counter_Point,:) = [handles.KreisPosi(i,1) handles.KreisPosi(i,2)];
            handles.SelectTemp(1,1) = i;
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
    if handles.Iter
        handles.RememTemp(handles.Counter+1+handles.Counter_Point,:) = [];
        handles.SelectTemp(handles.Counter+1,:) = [];
        handles.Iter = 0;
    end
    handles.SelectType(2) = 0;%init
    handles.SelectKreis(2) = 0;%init
    dim = size(handles.KreisPosi);
    handles.nukber = 0;
    for i=1:dim(1)
        
        
        if norm(pos - handles.KreisPosi(i,:))> handles.KreisRadius(i)
            if handles.nukber == dim(1) - 1
                 handles.dete(1) = plot(handles.RememTemp(1,1),handles.RememTemp(1,2),'bo');
                handles.figSeil2(1) = drawSpring(pos(1),pos(2),handles.RememTemp(1,1)...
                    ,handles.RememTemp(1,2),handles,0,handles.FederIsOn,handles.kosy);
                handles.dete(2) = plot(pos(1),pos(2),'bo');
                handles.RememTemp(handles.Counter+1+handles.Counter_Point,:) = [pos(1),pos(2)];
                handles.SelectTemp(1,2) = 0;
            end
            handles.nukber = handles.nukber + 1;
        elseif norm(pos - handles.KreisPosi(i,:))> handles.KreisRadius(i)*0.618 && i~=handles.SelectKreis1
            r = handles.KreisRadius(i);
            vec = handles.KreisPosi(i,:)-handles.RememTemp(1,:);
            beta = asin(vec(2)/norm(vec));
            if vec(1)>0
                beta = pi - beta;
            end
            alpha = acos(r/norm(vec));
            punkt(1,:) = handles.KreisPosi(i,:)+[r*cos(alpha) r*sin(alpha)]*[cos(beta) -sin(beta) ;-sin(beta) -cos(beta) ];
            punkt(2,:) = handles.KreisPosi(i,:)+[r*cos(alpha) r*sin(alpha)]*[cos(beta) -sin(beta) ;sin(beta) cos(beta) ];
            if norm(pos-punkt(1,:))<norm(pos-punkt(2,:))
                handles.dete(1) = plot(punkt(1,1),punkt(1,2),'bo');
%                 handles.figSeil2(2) = plot([punkt(1,1) handles.RememTemp(1,1)],[punkt(1,2) handles.RememTemp(1,2)],'b');
                if ~handles.FederIsOn 
                    handles.figSeil2(1:2) = drawSpring(handles.RememTemp(1,1)...
                    ,handles.RememTemp(1,2),punkt(1,1),punkt(1,2),handles,0,1,handles.kosy);
                else
                        handles.figSeil2(1) = drawSpring(handles.RememTemp(1,1)...
                        ,handles.RememTemp(1,2),punkt(1,1),punkt(1,2),handles,0,2,handles.kosy);
                end
                handles.RememTemp(handles.Counter+1+handles.Counter_Point,:) = [punkt(1,1),punkt(1,2)];
                handles.SelectTemp(1,2) = -i;
                handles.SelectTemp(2,1) = -i;
                handles.SelectType(2) = 2;
                handles.SelectKreis(2) = i;
                handles.Iter = 1;
            else
                handles.dete(1) = plot(punkt(2,1),punkt(2,2),'bo');
%                 handles.figSeil2(2) = plot([punkt(2,1) handles.RememTemp(1,1)],[punkt(2,2) handles.RememTemp(1,2)],'b');
                if ~handles.FederIsOn 
                    handles.figSeil2(1:2) = drawSpring(handles.RememTemp(1,1)...
                    ,handles.RememTemp(1,2),punkt(2,1),punkt(2,2),handles,0,1,handles.kosy);
                else
                    handles.figSeil2(1) = drawSpring(handles.RememTemp(1,1)...
                    ,handles.RememTemp(1,2),punkt(2,1),punkt(2,2),handles,0,2,handles.kosy);
                end
                handles.RememTemp(handles.Counter+1+handles.Counter_Point,:) = [punkt(2,1),punkt(2,2)];
                handles.SelectTemp(1,2) = -i;
                handles.SelectTemp(2,1) = -i;
                handles.SelectType(2) = 1;
                handles.SelectKreis(2) = i;
                handles.Iter = 1;
            end

        elseif (norm(pos - handles.KreisPosi(i,:)) < handles.KreisRadius(i)*0.618) && i~=handles.SelectKreis1
            handles.dete(1) = plot(handles.KreisPosi(i,1) , handles.KreisPosi(i,2),'bo');
%             handles.figSeil2(2) = plot([handles.KreisPosi(i,1) handles.RememTemp(1,1)],[handles.KreisPosi(i,2) handles.RememTemp(1,2)],'b');
            handles.figSeil2(1) = drawSpring(handles.KreisPosi(i,1),handles.KreisPosi(i,2),handles.RememTemp(1,1)...
                    ,handles.RememTemp(1,2),handles,0,handles.FederIsOn,handles.kosy);
            handles.RememTemp(handles.Counter+1+handles.Counter_Point,:) = [handles.KreisPosi(i,1) , handles.KreisPosi(i,2)];
            handles.SelectTemp(1,2) = i; %SelectKreis
        end
    end
elseif handles.Counter >= 2
    delete(handles.dete);
    if ~isempty(handles.figSeil3)
%             delete(handles.Seil(handles.Counter));
        delete(handles.figSeil3);
        handles.figSeil3 = [];
    end
    if handles.Iter
        handles.RememTemp(handles.Counter+1+handles.Counter_Point,:) = [];
        handles.SelectTemp(handles.Counter+1,:) = [];
    end
    handles.Iter = 0;
%     if handles.SelectType && handles.SelectKreis && norm(pos - handles.KreisPosi(handles.SelectKreis,:))> handles.KreisRadius(handles.SelectKreis)
%         i = handles.SelectKreis;
%         r = handles.KreisRadius(handles.SelectKreis);
%         vec = handles.KreisPosi(i,:)-pos;
%         beta = asin(vec(2)/norm(vec));
%         if vec(1)>0
%             beta = pi - beta;
%         end
%         alpha = acos(r/norm(vec));
%         punkt(1,:) = handles.KreisPosi(i,:)+[r*cos(alpha) r*sin(alpha)]*[cos(beta) -sin(beta) ;-sin(beta) -cos(beta) ];
%         punkt(2,:) = handles.KreisPosi(i,:)+[r*cos(alpha) r*sin(alpha)]*[cos(beta) -sin(beta) ;sin(beta) cos(beta) ];
%         handles.figSeil3(1) = plot(pos(1),pos(2),'bo');
% %         handles.figSeil3(2) = plot([punkt(handles.SelectType,1) pos(1)],[punkt(handles.SelectType,2) pos(2)],'b');
%         [handles.figSeil3(2)] = drawSpring(punkt(handles.SelectType,1),punkt(handles.SelectType,2),...
%             pos(1),pos(2),handles,0,2,handles.kosy);%%%
%         handles.figSeil3(3) = plot(punkt(handles.SelectType,1),punkt(handles.SelectType,2),'bo');
%         handles.RememTemp(handles.Counter+1,:) = [punkt(handles.SelectType,1) punkt(handles.SelectType,2)];
%         handles.RememTemp(handles.Counter+2+handles.Counter_Point,:) = [pos(1) pos(2)];
%         handles.SelectTemp(2,2) = 0;
    dim = size(handles.KreisPosi);
    handles.nukber = 0;
    for i=1:dim(1)
        if i ~= handles.SelectKreis(1)  &&  norm(pos - handles.KreisPosi(handles.SelectKreis(1),:))> handles.KreisRadius(handles.SelectKreis(1))
            if norm(pos - handles.KreisPosi(i,:))> handles.KreisRadius(i)
                if handles.nukber == dim(1) - 2 %why -2
                    r = handles.KreisRadius(handles.SelectKreis(1));
                    vec = handles.KreisPosi(handles.SelectKreis(1),:)-pos;
                    beta = asin(vec(2)/norm(vec));
                    if vec(1)>0
                        beta = pi - beta;
                    end
                    alpha = acos(r/norm(vec));
                    punkt(1,:) = handles.KreisPosi(handles.SelectKreis(1),:)+[r*cos(alpha) r*sin(alpha)]*[cos(beta) -sin(beta) ;-sin(beta) -cos(beta) ];
                    punkt(2,:) = handles.KreisPosi(handles.SelectKreis(1),:)+[r*cos(alpha) r*sin(alpha)]*[cos(beta) -sin(beta) ;sin(beta) cos(beta) ];
                    handles.dete(1) = plot(pos(1),pos(2),'bo');
                    [handles.figSeil3(1)] = drawSpring(punkt(handles.SelectType(1),1),punkt(handles.SelectType(1),2),pos(1),pos(2),handles,0,handles.FederIsOn,handles.kosy);%%%
                    handles.dete(2) = plot(punkt(handles.SelectType(1),1),punkt(handles.SelectType(1),2),'bo');
                    handles.RememTemp(handles.Counter+handles.Counter_Point,:) = [punkt(handles.SelectType(1),1),punkt(handles.SelectType(1),2)];
                    handles.RememTemp(handles.Counter+1+handles.Counter_Point,:) = [pos(1),pos(2)];%&/
                    handles.SelectTemp(handles.Counter,2) = 0;%&/
                    handles.SelectType(2) = 0;
                end
                handles.nukber = handles.nukber + 1;
            elseif norm(pos - handles.KreisPosi(i,:))> handles.KreisRadius(i)*0.618 %&& i~=handles.SelectKreis1
                r = handles.KreisRadius(i);
                vec = -handles.KreisPosi(i,:)+handles.KreisPosi(handles.SelectKreis(1),:);
                beta = asin(vec(2)/norm(vec));
                if vec(1)>0
                    beta = pi - beta;
                end
%                     if vec(2)<0
%                         beta = beta + pi;
%                     end
                alpha = (-1)^(handles.SelectType(1))*acos((-r+handles.KreisRadius(handles.SelectKreis(1)))/norm(vec));
                gamma = (-1)^(handles.SelectType(1))*acos((+r+handles.KreisRadius(handles.SelectKreis(1)))/norm(vec));
                punkt(1,:) = handles.KreisPosi(handles.SelectKreis(1),:)+[handles.KreisRadius(handles.SelectKreis(1))*cos(alpha) handles.KreisRadius(handles.SelectKreis(1))*sin(alpha)]*[-cos(beta) +sin(beta) ;+sin(beta) +cos(beta) ];
                punkt(2,:) = handles.KreisPosi(handles.SelectKreis(1),:)+[handles.KreisRadius(handles.SelectKreis(1))*cos(gamma) handles.KreisRadius(handles.SelectKreis(1))*sin(gamma)]*[cos(beta) -sin(beta) ;+sin(beta) +cos(beta) ];
                punkt(4,:) = handles.KreisPosi(i,:)+[r*cos(alpha) r*sin(alpha)]*[cos(beta) -sin(beta) ;sin(beta) cos(beta) ];
                punkt(3,:) = handles.KreisPosi(i,:)+[r*cos(gamma) r*sin(gamma)]*[-cos(beta) sin(beta) ;-sin(beta) -cos(beta) ];
                if norm(pos-punkt(3,:))<norm(pos-punkt(4,:))
                    handles.SelectType(2) = 2;
                    handles.SelectKreis(2) = i;
                    if handles.SelectType(2) == handles.SelectType(1)
                        alpha = acos((-r+handles.KreisRadius(handles.SelectKreis(1)))/norm(vec));
%                             if vec(2)<0
%                                 alpha = alpha + pi;
%                             end
                        punkt(2,:) = handles.KreisPosi(handles.SelectKreis(1),:)+[handles.KreisRadius(handles.SelectKreis(1))*cos(alpha) ...
                            handles.KreisRadius(handles.SelectKreis(1))*sin(alpha)]*[cos(beta) -sin(beta) ;+sin(beta) +cos(beta) ];
                        punkt(3,:) = handles.KreisPosi(i,:)+[r*cos(alpha) r*sin(alpha)]*[cos(beta) -sin(beta) ;sin(beta) cos(beta) ];
                        handles.dete(1) = plot(punkt(3,1),punkt(3,2),'bo');
                        handles.figSeil3(1) = plot([punkt(3,1) punkt(handles.SelectType(1),1)],[punkt(3,2) punkt(handles.SelectType(1),2)],'b');
                        handles.dete(2) = plot(punkt(handles.SelectType(1),1),punkt(handles.SelectType(1),2),'bo');
                        handles.RememTemp(handles.Counter+handles.Counter_Point,:) = [punkt(handles.SelectType(1),1),punkt(handles.SelectType(1),2)];
                        handles.RememTemp(handles.Counter+1+handles.Counter_Point,:) = [punkt(3,1),punkt(3,2)];%&/
                        handles.SelectTemp(handles.Counter,2) = -i;%&/
                        handles.SelectTemp(handles.Counter+1,1) = -i;
                        handles.Iter = 1;
                    else
                        alpha = acos((+r+handles.KreisRadius(handles.SelectKreis(1)))/norm(vec));
%                             if vec(2)<0
%                                 alpha = alpha + pi;
%                             end
                        punkt(1,:) = handles.KreisPosi(handles.SelectKreis(1),:)+[handles.KreisRadius(handles.SelectKreis(1))*cos(alpha)...
                            handles.KreisRadius(handles.SelectKreis(1))*sin(alpha)]*[cos(beta) -sin(beta) ;-sin(beta) -cos(beta) ];
                        punkt(3,:) = handles.KreisPosi(i,:)+[r*cos(alpha) r*sin(alpha)]*[-cos(beta) sin(beta) ;sin(beta) cos(beta) ];
                        handles.dete(1) = plot(punkt(3,1),punkt(3,2),'bo');
                        handles.figSeil3(1) = plot([punkt(3,1) punkt(handles.SelectType(1),1)],[punkt(3,2) punkt(handles.SelectType(1),2)],'b');
                        handles.dete(2) = plot(punkt(handles.SelectType(1),1),punkt(handles.SelectType(1),2),'bo');
                        handles.RememTemp(handles.Counter+handles.Counter_Point,:) = [punkt(handles.SelectType(1),1),punkt(handles.SelectType(1),2)];
                        handles.RememTemp(handles.Counter+1+handles.Counter_Point,:) = [punkt(3,1),punkt(3,2)];%&/
                        handles.SelectTemp(handles.Counter,2) = -i;%&/
                        handles.SelectTemp(handles.Counter+1,1) = -i;
                        handles.Iter = 1;
                    end

                else
                    handles.SelectType(2) = 1;
                    handles.SelectKreis(2) = i;
                    if handles.SelectType(2) == handles.SelectType(1)
                        alpha = acos((-r+handles.KreisRadius(handles.SelectKreis(1)))/norm(vec));
%                             if vec(2)<0
%                                 alpha = pi + alpha;
%                             end
                        punkt(1,:) = handles.KreisPosi(handles.SelectKreis(1),:)+[handles.KreisRadius(handles.SelectKreis(1))*cos(alpha) ...
                            handles.KreisRadius(handles.SelectKreis(1))*sin(alpha)]*[cos(beta) -sin(beta) ;-sin(beta) -cos(beta) ];
                        punkt(4,:) = handles.KreisPosi(i,:)+[r*cos(alpha) r*sin(alpha)]*[cos(beta) -sin(beta) ;-sin(beta) -cos(beta) ];
                        handles.dete(1) = plot(punkt(4,1),punkt(4,2),'bo');
                        handles.figSeil3(1) = plot([punkt(4,1) punkt(handles.SelectType(1),1)],[punkt(4,2) punkt(handles.SelectType(1),2)],'b');
                        handles.dete(2) = plot(punkt(handles.SelectType(1),1),punkt(handles.SelectType(1),2),'bo');
                        handles.RememTemp(handles.Counter+handles.Counter_Point,:) = [punkt(handles.SelectType(1),1),punkt(handles.SelectType(1),2)];
                        handles.RememTemp(handles.Counter+1+handles.Counter_Point,:) = [punkt(4,1),punkt(4,2)];%&/
                        handles.SelectTemp(handles.Counter,2) = -i;%&/
                        handles.SelectTemp(handles.Counter+1,1) = -i;
                        handles.Iter = 1;
                    else
                        alpha = acos((+r+handles.KreisRadius(handles.SelectKreis(1)))/norm(vec));
%                             if vec(2)<0
%                                 alpha = pi + alpha;
%                             end
                        punkt(2,:) = handles.KreisPosi(handles.SelectKreis(1),:)+[handles.KreisRadius(handles.SelectKreis(1))*cos(alpha) ...
                            handles.KreisRadius(handles.SelectKreis(1))*sin(alpha)]*[cos(beta) -sin(beta) ;+sin(beta) +cos(beta) ];
                        punkt(4,:) = handles.KreisPosi(i,:)+[r*cos(alpha) r*sin(alpha)]*[-cos(beta) sin(beta) ;-sin(beta) -cos(beta) ];
                        handles.dete(1) = plot(punkt(4,1),punkt(4,2),'bo');
                        handles.figSeil3(1) = plot([punkt(4,1) punkt(handles.SelectType(1),1)],[punkt(4,2) punkt(handles.SelectType(1),2)],'b');
                        handles.dete(2) = plot(punkt(handles.SelectType(1),1),punkt(handles.SelectType(1),2),'bo');
                        handles.RememTemp(handles.Counter+handles.Counter_Point,:) = [punkt(handles.SelectType(1),1),punkt(handles.SelectType(1),2)];
                        handles.RememTemp(handles.Counter+1+handles.Counter_Point,:) = [punkt(4,1),punkt(4,2)];%&/
                        handles.SelectTemp(handles.Counter,2) = -i;%&/
                        handles.SelectTemp(handles.Counter+1,1) = -i;
                        handles.Iter = 1;
                    end

                end
            else %if (norm(pos - handles.KreisPosi(i,:)) < handles.KreisRadius(i)*0.618) %&& i~=handles.SelectKreis1
                r = handles.KreisRadius(handles.SelectKreis(1));
                vec = handles.KreisPosi(handles.SelectKreis(1),:)-handles.KreisPosi(i,:);
                beta = asin(vec(2)/norm(vec));
                if vec(1)>0
                    beta = pi - beta;
                end
                alpha = acos(r/norm(vec));
                punkt(1,:) = handles.KreisPosi(handles.SelectKreis(1),:)+[r*cos(alpha) r*sin(alpha)]*[cos(beta) -sin(beta) ;-sin(beta) -cos(beta) ];
                punkt(2,:) = handles.KreisPosi(handles.SelectKreis(1),:)+[r*cos(alpha) r*sin(alpha)]*[cos(beta) -sin(beta) ;sin(beta) cos(beta) ];
                handles.dete(1) = plot(handles.KreisPosi(i,1) , handles.KreisPosi(i,2),'bo');
                handles.figSeil3(1) = plot([handles.KreisPosi(i,1) punkt(handles.SelectType(1),1)],[handles.KreisPosi(i,2) punkt(handles.SelectType(1),2)],'b');
                handles.RememTemp(handles.Counter+handles.Counter_Point,:) = [punkt(handles.SelectType(1),1) , punkt(handles.SelectType(1),2)];
                handles.RememTemp(handles.Counter+1+handles.Counter_Point,:) = [handles.KreisPosi(i,1) , handles.KreisPosi(i,2)];
                handles.SelectTemp(handles.Counter,2) = i;
                handles.SelectType(2) = 0;
            end
        end
    end
end
dimLager = size(handles.LagerPos);
for i = 1:dimLager(1)
    if norm(pos - handles.LagerPos(i,:))<0.2

        delete(handles.dete);
        handles.dete(handles.Counter+1) = plot(handles.LagerPos(i,1),handles.LagerPos(i,2),'bo');
        handles.RememTemp(handles.Counter+1+handles.Counter_Point,:) = handles.LagerPos(i,:);
        if handles.Counter == 1
            delete(handles.figSeil2);
            handles.figSeil2 = plot([handles.LagerPos(i,1) handles.RememTemp(1,1)],[handles.LagerPos(i,2) handles.RememTemp(1,2)],'b');
            handles.RememTemp(handles.Counter+1+handles.Counter_Point,:) = handles.LagerPos(i,:);
            handles.SelectTemp(handles.Counter,2) = 0;
        elseif handles.Counter >= 2 && handles.SelectType(1)
            if ~isempty(handles.figSeil3)
%             delete(handles.Seil(handles.Counter));
                delete(handles.figSeil3);
                handles.figSeil3 = [];
            end
           vec = handles.KreisPosi(handles.SelectKreis(1),:)-handles.LagerPos(i,:);
            beta = asin(vec(2)/norm(vec));
            if vec(1)>0
                beta = pi - beta;
            end
            alpha = acos(r/norm(vec));
             punkt(1,:) = handles.KreisPosi(handles.SelectKreis(1),:)+[r*cos(alpha) r*sin(alpha)]*[cos(beta) -sin(beta) ;-sin(beta) -cos(beta) ];
            punkt(2,:) = handles.KreisPosi(handles.SelectKreis(1),:)+[r*cos(alpha) r*sin(alpha)]*[cos(beta) -sin(beta) ;sin(beta) cos(beta) ];
%             handles.figSeil3(1) = [];
%             handles.figSeil3(2) = plot([punkt(handles.SelectType,1) handles.LagerPos(i,1)],[punkt(handles.SelectType,2) handles.LagerPos(i,2)],'b');
            handles.figSeil3(1) = drawSpring(punkt(handles.SelectType(1),1),punkt(handles.SelectType(1),2),handles.LagerPos(i,1),handles.LagerPos(i,2),handles,0,handles.FederIsOn, handles.kosy);
            handles.dete(1) = plot(punkt(handles.SelectType(1),1),punkt(handles.SelectType(1),2),'bo');
            handles.SelectType(2) = 0;
            handles.RememTemp(handles.Counter+1+handles.Counter_Point,:) = handles.LagerPos(i,:);
            handles.SelectTemp(handles.Counter,2) = 0;
        end

    end
end
% RememTemp = handles.RememTemp
% SelectedTemp = handles.SelectTemp
guidata(hObject,handles);

% --- Executes on button press in loslager.
function loslager_Callback(hObject, eventdata, handles)
% hObject    handle to loslager (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
hold off;
r=str2num(get(handles.edit9,'string'));
x=str2num(get(handles.edit6,'string'));
y=str2num(get(handles.edit7,'string'));
w=str2num(get(handles.edit8,'string'))/180*pi;


% draw the FL
axes(handles.axes4);  
phi=0:0.1:2*pi;
plot(25+r*sin(w)+r*cos(phi),50-r*cos(w)+r*sin(phi),'b'); hold on;   % Beginn des FL
plot([25+2*r*sin(w),25+4*r*sin(w)-2*r*cos(w)],[50-2*r*cos(w),50-4*r*cos(w)-2*r*sin(w)],'b'); hold on;
plot([25+2*r*cos(w)+4*r*sin(w),25+2*r*sin(w)],[50-4*r*cos(w)+2*r*sin(w),50-2*r*cos(w)],'b'); hold on;
plot([25+4*r*sin(w)-2*r*cos(w),25+2*r*cos(w)+4*r*sin(w)],[50-4*r*cos(w)-2*r*sin(w),50-4*r*cos(w)+2*r*sin(w)],'b'); hold on;
plot([25-3*r*cos(w)+5*r*sin(w),25+3*r*cos(w)+5*r*sin(w)],[50-5*r*cos(w)-3*r*sin(w),50-5*r*cos(w)+3*r*sin(w)],'b'); hold on;
for i=0:2
plot([25-1.5*r*cos(w)+5*r*sin(w)+2*r*cos(w)*i,25-2.5*r*cos(w)+2*r*cos(w)*i+6*r*sin(w)],[50-5*r*cos(w)-1.5*r*sin(w)+2*r*sin(w)*i,50-6*r*cos(w)-2.5*r*sin(w)+2*r*sin(w)*i],'b'); hold on;
end                                             % Ende des FL



function los_x_Callback(hObject, eventdata, handles)
% hObject    handle to los_x (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of los_x as text
%        str2double(get(hObject,'String')) returns contents of los_x as a double


% --- Executes during object creation, after setting all properties.
function los_x_CreateFcn(hObject, eventdata, handles)
% hObject    handle to los_x (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function los_y_Callback(hObject, eventdata, handles)
% hObject    handle to los_y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of los_y as text
%        str2double(get(hObject,'String')) returns contents of los_y as a double


% --- Executes during object creation, after setting all properties.
function los_y_CreateFcn(hObject, eventdata, handles)
% hObject    handle to los_y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function los_winkel_Callback(hObject, eventdata, handles)
% hObject    handle to los_winkel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of los_winkel as text
%        str2double(get(hObject,'String')) returns contents of los_winkel as a double


% --- Executes during object creation, after setting all properties.
function los_winkel_CreateFcn(hObject, eventdata, handles)
% hObject    handle to los_winkel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in ok_loslager.
function ok_loslager_Callback(hObject, eventdata, handles)
% hObject    handle to ok_loslager (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

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
%     vec(2,:) = linspace(0,x0+phi,17);
    h(1)=plot(gca,x0+0.5*vec(2,:),y0+0.5*vec(1,:),'k-');
    h(2)=plot(gca,[(x0+x)/2 x],[(y0+y)/2 y],'b-');
elseif item == 2
    h=plot(gca,[x0 x],[y0 y],'b-');
end




