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
        if handles.SelectType(1) == 0 %exit
            set(hObject,'WindowButtonMotionFcn','');
            set(handles.figure1,'WindowButtonDownFcn','');
            handles.figSeil(handles.Counter - 1,:) = handles.figSeil3(2);%problem
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
            handles.figSeil(handles.Counter - 1,:) = handles.figSeil3(2);
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
if handles.Counter >= 2
    jsh = handles.RememTemp
end
    

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
%                 handles.figSeil2(1) = plot([pos(1) handles.RememTemp(1,1)],[pos(2) handles.RememTemp(1,2)],'b');
                handles.figSeil2(1) = drawSpring(pos(1),pos(2),handles.RememTemp(1,1)...
                    ,handles.RememTemp(1,2),handles,0,handles.FederIsOn,handles.kosy);
                handles.figSeil2(2) = plot(pos(1),pos(2),'bo');
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
                handles.figSeil2(1) = plot(punkt(1,1),punkt(1,2),'bo');
%                 handles.figSeil2(2) = plot([punkt(1,1) handles.RememTemp(1,1)],[punkt(1,2) handles.RememTemp(1,2)],'b');
                if ~handles.FederIsOn 
                    handles.figSeil2(2:3) = drawSpring(handles.RememTemp(1,1)...
                    ,handles.RememTemp(1,2),punkt(1,1),punkt(1,2),handles,0,1,handles.kosy);
                else
                        handles.figSeil2(2) = drawSpring(handles.RememTemp(1,1)...
                        ,handles.RememTemp(1,2),punkt(1,1),punkt(1,2),handles,0,2,handles.kosy);
                end
                handles.RememTemp(handles.Counter+1+handles.Counter_Point,:) = [punkt(1,1),punkt(1,2)];
                handles.SelectTemp(1,2) = -i;
                handles.SelectTemp(2,1) = -i;
                handles.SelectType(2) = 2;
                handles.SelectKreis(2) = i;
                handles.Iter = 1;
            else
                handles.figSeil2(1) = plot(punkt(2,1),punkt(2,2),'bo');
%                 handles.figSeil2(2) = plot([punkt(2,1) handles.RememTemp(1,1)],[punkt(2,2) handles.RememTemp(1,2)],'b');
                if ~handles.FederIsOn 
                    handles.figSeil2(2:3) = drawSpring(handles.RememTemp(1,1)...
                    ,handles.RememTemp(1,2),punkt(2,1),punkt(2,2),handles,0,1,handles.kosy);
                else
                    handles.figSeil2(2) = drawSpring(handles.RememTemp(1,1)...
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
            handles.figSeil2(1) = plot(handles.KreisPosi(i,1) , handles.KreisPosi(i,2),'bo');
%             handles.figSeil2(2) = plot([handles.KreisPosi(i,1) handles.RememTemp(1,1)],[handles.KreisPosi(i,2) handles.RememTemp(1,2)],'b');
            handles.figSeil2(2) = drawSpring(handles.KreisPosi(i,1),handles.KreisPosi(i,2),handles.RememTemp(1,1)...
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
                    handles.figSeil3(1) = plot(pos(1),pos(2),'bo');
                    [handles.figSeil3(2)] = drawSpring(punkt(handles.SelectType(1),1),punkt(handles.SelectType(1),2),pos(1),pos(2),handles,0,handles.FederIsOn,handles.kosy);%%%
                    handles.figSeil3(3) = plot(punkt(handles.SelectType(1),1),punkt(handles.SelectType(1),2),'bo');
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
                        handles.figSeil3(1) = plot(punkt(3,1),punkt(3,2),'bo');
                        handles.figSeil3(2) = plot([punkt(3,1) punkt(handles.SelectType(1),1)],[punkt(3,2) punkt(handles.SelectType(1),2)],'b');
                        handles.figSeil3(3) = plot(punkt(handles.SelectType(1),1),punkt(handles.SelectType(1),2),'bo');
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
                        handles.figSeil3(1) = plot(punkt(3,1),punkt(3,2),'bo');
                        handles.figSeil3(2) = plot([punkt(3,1) punkt(handles.SelectType(1),1)],[punkt(3,2) punkt(handles.SelectType(1),2)],'b');
                        handles.figSeil3(3) = plot(punkt(handles.SelectType(1),1),punkt(handles.SelectType(1),2),'bo');
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
                        handles.figSeil3(1) = plot(punkt(4,1),punkt(4,2),'bo');
                        handles.figSeil3(2) = plot([punkt(4,1) punkt(handles.SelectType(1),1)],[punkt(4,2) punkt(handles.SelectType(1),2)],'b');
                        handles.figSeil3(3) = plot(punkt(handles.SelectType(1),1),punkt(handles.SelectType(1),2),'bo');
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
                        handles.figSeil3(1) = plot(punkt(4,1),punkt(4,2),'bo');
                        handles.figSeil3(2) = plot([punkt(4,1) punkt(handles.SelectType(1),1)],[punkt(4,2) punkt(handles.SelectType(1),2)],'b');
                        handles.figSeil3(3) = plot(punkt(handles.SelectType(1),1),punkt(handles.SelectType(1),2),'bo');
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
                handles.figSeil3(1) = plot(handles.KreisPosi(i,1) , handles.KreisPosi(i,2),'bo');
                handles.figSeil3(2) = plot([handles.KreisPosi(i,1) punkt(handles.SelectType(1),1)],[handles.KreisPosi(i,2) punkt(handles.SelectType(1),2)],'b');
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
    if norm(pos - handles.LagerPos(i,:))<1 

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
            handles.figSeil3(2) = drawSpring(punkt(handles.SelectType(1),1),punkt(handles.SelectType(1),2),handles.LagerPos(i,1),handles.LagerPos(i,2),handles,0,handles.FederIsOn, handles.kosy);
            handles.figSeil3(1) = plot(punkt(handles.SelectType(1),1),punkt(handles.SelectType(1),2),'bo');
            handles.SelectType(2) = 0;
            handles.RememTemp(handles.Counter+1+handles.Counter_Point,:) = handles.LagerPos(i,:);
            handles.SelectTemp(handles.Counter,2) = 0;
        end

    end
end
% RememTemp = handles.RememTemp
% SelectedTemp = handles.SelectTemp
guidata(hObject,handles);