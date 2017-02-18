%-------------------------------------------------------------------
%------- IPD + TFT
% Analisis de las ultimas 10 sesiones
clear all;
close all;

_experimento="";%  T=3 ; T=5;
_experimento="";
if (strcmp(_experimento,"T=3"))
  load "iPD_1_3_9s_13s/datosCargadosWorkspace_3_1_9_13_fecha_20160914";
else
  load "iPD_1_5_9s_13s_y_2_3_9s_13s/datosCargadosWorkspace_1_5_9_13_y_2_3_9_13_fecha_20160915";
endif  

indice=["exp00";"exp01";"exp02";"exp03";"exp04";"exp05";
        "exp06";"exp07";"exp08";"exp09";"exp10";"exp11";
        "exp12";"exp13";"exp14";"exp15";"exp16";"exp17";
        "exp18";"exp19";"exp20";"exp21";"exp22";"exp23";
				"exp24";"exp25";"exp26";"exp27";"exp28";"exp29";
				"exp30";"exp31";"exp32";"exp33";"exp34";"exp35";
				"exp36";"exp37";"exp38";"exp39";"exp40";"exp41";
        "exp42";"exp43";"exp44";"exp45";"exp46";"exp47";
        "exp48";"exp49";"exp50";"exp51";"exp52";"exp53";
        "exp54";"exp55";"exp56";"exp57";"exp58"];
%%%%%%%todo.exp00=exp00;
todo.exp01=exp01;todo.exp02=exp02;todo.exp03=exp03;todo.exp04=exp04;todo.exp05=exp05;
todo.exp06=exp06;todo.exp07=exp07;todo.exp08=exp08;todo.exp09=exp09;todo.exp10=exp10;
todo.exp11=exp11;todo.exp12=exp12;todo.exp13=exp13;todo.exp14=exp14;todo.exp15=exp15;
todo.exp16=exp16;todo.exp17=exp17;
if (strcmp(_experimento,"T=3"))
  todo.exp18=exp18;todo.exp19=exp19,todo.exp20=exp20;
  todo.exp21=exp21;todo.exp22=exp22;todo.exp23=exp23;todo.exp24=exp24;todo.exp25=exp25;
  todo.exp26=exp26;todo.exp27=exp27;
endif
%todo.exp28=exp28;todo.exp29=exp29;
%todo.exp30=exp30;todo.exp31=exp31;
%todo.exp32=exp32;todo.exp33=exp33;
%todo.exp34=exp34;todo.exp35=exp35;
%todo.exp36=exp36;todo.exp37=exp37;
%todo.exp38=exp38;todo.exp39=exp39;
%todo.exp40=exp40;todo.exp41=exp41;
%todo.exp42=exp42;todo.exp43=exp43;
%todo.exp44=exp44;todo.exp45=exp45;
%todo.exp46=exp46;todo.exp47=exp47;
%todo.exp48=exp48;todo.exp49=exp49;
%todo.exp50=exp50;todo.exp51=exp51;%todo.exp=exp;
%todo.exp52=exp52;todo.exp53=exp53;
%todo.exp54=exp54;todo.exp55=exp55;
%todo.exp56=exp56;todo.exp57=exp57;
%todo.exp58=exp58;

_txtSujetos=["1S";"2S";"1M";"2M";"1T";"2T"];

% PORCENTAJE DE COOPERACION
_nSujetos=6;
_vSujetosNull=[];
_vSujetos1=[1 2 3 4 5 6 7 8 9 10 11 12];% desde exp01
_vSujetos2=[2 6 8 9 10 11];% a partir del exp24
_vSujetos3=[2 6 8 9 11]; % a partir del exp30
_vSujetos4=[2 8 11]; % a partir del exp32
_vSujetos5=[8]; % a partir del exp34
_vSujetos=_vSujetos1;
_finAnalisis1=23;% valor inclusive de experimento  (1 3 4 5 7 12)
_finAnalisis2=29;%(10)
_finAnalisis3=31;%(6 9)
_finAnalisis4=33;%(2 11)
_finAnalisis5=50;%(9)
_iniAnalisis1=1;
_iniAnalisis2=1;
_iniAnalisis3=1;
_iniAnalisis4=1;
_iniAnalisis5=1;
_coop=zeros(1,_nSujetos);
_cooperacion=[];
_nada=[];
_nadaAux=zeros(1,_nSujetos);
_trialIni=1;
_trialFin=30;
inicio=01;
fin=0;
datos=zeros(2,fin);

_criterio=.7;
% Testeo ------------------------------
%--------------------------------------

indiceSujeto=[];
%for i=1:_nSujetos
%  indiceSujeto=[indiceSujeto;strcat("Q",mat2str(i))];
%endfor
indiceSujeto=["Q01";"Q02";"Q03";"Q04";"Q05";"Q06";"Q07";"Q08";"Q09";"Q10";"Q11";"Q12"];
% Probabilidades de transicion de estados
%matricesQ1.Q1=[];matricesQ2.Q2=[];matricesQ3.Q3=[];matricesQ4.Q4=[];matricesQ5.Q5=[];matricesQ6.Q6=[];
%matricesQ7.Q7=[];matricesQ8.Q8=[];matricesQ9.Q9=[];matricesQ10.Q10=[];matricesQ11.Q11=[];matricesQ12.Q12=[];
matricesQxExp=[];
matricesQaux=[];
Q = zeros(4,4); % [T C P S]'                %agregar matrices Q para cada sujeto en estructura
fallasXexp=[];
%matricesQ.Q1=[];matricesQ.Q2=[];matricesQ.Q3=[];matricesQ.Q4=[];matricesQ.Q5=[];matricesQ.Q6=[];matricesQ.Q7=[];matricesQ.Q8=[];matricesQ.Q9=[];matricesQ.Q10=[];matricesQ.Q11=[];matricesQ.Q12=[];
for i=1:_nSujetos
  matricesQ.(indiceSujeto(i,:)) = zeros(4,4); % [T C P S]'                %agregar matrices Q para cada sujeto en estructura
  matricesQaux.(indiceSujeto(i,:)) = zeros(4,4);
endfor

% Experimentos por sujetos
expXsuj=zeros(1,_nSujetos);
for j=inicio:(nfields(todo))
  for i=1:length(todo.(indice(j+1,:)))
    if length(todo.(indice(j+1,:))(i)._groupStr)!=0
      expXsuj(i)++;
    endif
  endfor
endfor
fin=max(expXsuj);
% 
% Brief: Carga las matrices de transicion de estado de cada sujeto.
%        Es un promedio total 
%        Acumula las veces que aparece la transicion durante los 29 trials a lo
%        largo los inicio:fin de experimentos.
T=zeros(_nSujetos,length(inicio:fin));C=zeros(_nSujetos,length(inicio:fin));
P=zeros(_nSujetos,length(inicio:fin));S=zeros(_nSujetos,length(inicio:fin));
controlFallas=zeros(1,_nSujetos);
auxFallas=1;

_ultimosX=7;
for i=1:_nSujetos
  ultimo=expXsuj(i);
  primero=1;
  for j=primero:ultimo %Experimentos
    for k=_trialIni:_trialFin  % nºtrials x Exp.  TRAICIONAR DADO QUE
      if ((todo.(indice(j+1,:))(i)._respuestasEXP(k)==0)||(todo.(indice(j+1,:))(i)._respuestasOPO(k)==0))
        if (k==1)
          ++controlFallas(i);%%%
          ++controlFallas(i);
        elseif (k==2) 
          if (todo.(indice(j+1,:))(i)._respuestasEXP(k-1)!=0)% k=1 y K=2 son ceros no se cuenta una falla auxiluar
            auxFallas+=1;  
          endif
          ++controlFallas(i);%%%
        elseif (k==3)
          if (todo.(indice(j+1,:))(i)._respuestasEXP(k-2)==0)&&(todo.(indice(j+1,:))(i)._respuestasEXP(k-1)==0)
            % nada
          elseif (todo.(indice(j+1,:))(i)._respuestasEXP(k-1)!=0)
            auxFallas+=1;
          else
            a="MIERDA!!!"
          endif
          ++controlFallas(i);%%%
        else
          auxFallas+=1;
          ++controlFallas(i);
        endif
      elseif (todo.(indice(j+1,:))(i)._respuestasEXP(k)==1)&&(todo.(indice(j+1,:))(i)._respuestasOPO(k)==2)
        T(i,j-inicio+1)++; %TRAICIONAR DADO :
        if (k>1) 
          if (todo.(indice(j+1,:))(i)._respuestasEXP(k-auxFallas)==1)&&(todo.(indice(j+1,:))(i)._respuestasOPO(k-auxFallas)==2)%que Traiciono (imposible x TFT)%
            ++matricesQ.(indiceSujeto(i,:))(1,1);
            ++matricesQaux.(indiceSujeto(i,:))(1,1); 
          elseif (todo.(indice(j+1,:))(i)._respuestasEXP(k-auxFallas)==2)&&(todo.(indice(j+1,:))(i)._respuestasOPO(k-auxFallas)==2) %Cooperacion mutua%
            ++matricesQ.(indiceSujeto(i,:))(2,1);
            ++matricesQaux.(indiceSujeto(i,:))(2,1); 
          elseif (todo.(indice(j+1,:))(i)._respuestasEXP(k-auxFallas)==1)&&(todo.(indice(j+1,:))(i)._respuestasOPO(k-auxFallas)=1) %Nocooperacion mutua %
            ++matricesQ.(indiceSujeto(i,:))(3,1);
            ++matricesQaux.(indiceSujeto(i,:))(3,1);
          elseif (todo.(indice(j+1,:))(i)._respuestasEXP(k-auxFallas)==2)&&(todo.(indice(j+1,:))(i)._respuestasOPO(k-auxFallas)==1)%fue estafado%
            ++matricesQ.(indiceSujeto(i,:))(4,1);
            ++matricesQaux.(indiceSujeto(i,:))(4,1); 
          endif  
        endif
        auxFallas=1;
      elseif (todo.(indice(j+1,:))(i)._respuestasEXP(k)==2)&&(todo.(indice(j+1,:))(i)._respuestasOPO(k)==2)
        C(i,j-inicio+1)++; % COOPERACION MUTUA DADO :
        if (k>1) 
          if (todo.(indice(j+1,:))(i)._respuestasEXP(k-auxFallas)==1)&&(todo.(indice(j+1,:))(i)._respuestasOPO(k-auxFallas)==2)%que Traiciono (imposible x TFT)%
            ++matricesQ.(indiceSujeto(i,:))(1,2); 
            ++matricesQaux.(indiceSujeto(i,:))(1,2);
          elseif (todo.(indice(j+1,:))(i)._respuestasEXP(k-auxFallas)==2)&&(todo.(indice(j+1,:))(i)._respuestasOPO(k-auxFallas)==2) %Cooperacion mutua%
            ++matricesQ.(indiceSujeto(i,:))(2,2);
            ++matricesQaux.(indiceSujeto(i,:))(2,2);
          elseif (todo.(indice(j+1,:))(i)._respuestasEXP(k-auxFallas)==1)&&(todo.(indice(j+1,:))(i)._respuestasOPO(k-auxFallas)=1)%Nocooperacion mutua %
            ++matricesQ.(indiceSujeto(i,:))(3,2);
            ++matricesQaux.(indiceSujeto(i,:))(3,2);
          elseif (todo.(indice(j+1,:))(i)._respuestasEXP(k-auxFallas)==2)&&(todo.(indice(j+1,:))(i)._respuestasOPO(k-auxFallas)==1)%fue estafado%
            ++matricesQ.(indiceSujeto(i,:))(4,2);
            ++matricesQaux.(indiceSujeto(i,:))(4,2); 
          endif
        endif
        auxFallas=1;
      elseif (todo.(indice(j+1,:))(i)._respuestasEXP(k)==1)&&(todo.(indice(j+1,:))(i)._respuestasOPO(k)=1)
        P(i,j-inicio+1)++; % NO COOPERACION MUTUA DADO :
        if (k>1) 
          if (todo.(indice(j+1,:))(i)._respuestasEXP(k-auxFallas)==1)&&(todo.(indice(j+1,:))(i)._respuestasOPO(k-auxFallas)==2) %que Traiciono (imposible x TFT)%
            ++matricesQ.(indiceSujeto(i,:))(1,3);
            ++matricesQaux.(indiceSujeto(i,:))(1,3); 
          elseif (todo.(indice(j+1,:))(i)._respuestasEXP(k-auxFallas)==2)&&(todo.(indice(j+1,:))(i)._respuestasOPO(k-auxFallas)==2)%Cooperacion mutua%
            ++matricesQ.(indiceSujeto(i,:))(2,3);
            ++matricesQaux.(indiceSujeto(i,:))(2,3); 
          elseif (todo.(indice(j+1,:))(i)._respuestasEXP(k-auxFallas)==1)&&(todo.(indice(j+1,:))(i)._respuestasOPO(k-auxFallas)=1) %Nocooperacion mutua %
            ++matricesQ.(indiceSujeto(i,:))(3,3);
            ++matricesQaux.(indiceSujeto(i,:))(3,3);            
          elseif (todo.(indice(j+1,:))(i)._respuestasEXP(k-auxFallas)==2)&&(todo.(indice(j+1,:))(i)._respuestasOPO(k-auxFallas)==1)%fue estafado%
            ++matricesQ.(indiceSujeto(i,:))(4,3);
            ++matricesQaux.(indiceSujeto(i,:))(4,3);             
          endif
        endif
        auxFallas=1;
      elseif (todo.(indice(j+1,:))(i)._respuestasEXP(k)==2)&&(todo.(indice(j+1,:))(i)._respuestasOPO(k)==1)
        S(i,j-inicio+1)++; % ESTAFAR DADO :
        if (k>1) 
          if (todo.(indice(j+1,:))(i)._respuestasEXP(k-auxFallas)==1)&&(todo.(indice(j+1,:))(i)._respuestasOPO(k-auxFallas)==2)%que Traiciono (imposible x TFT)%
            ++matricesQ.(indiceSujeto(i,:))(1,4);
            ++matricesQaux.(indiceSujeto(i,:))(1,4);             
          elseif (todo.(indice(j+1,:))(i)._respuestasEXP(k-auxFallas)==2)&&(todo.(indice(j+1,:))(i)._respuestasOPO(k-auxFallas)==2)%Cooperacion mutua%
            ++matricesQ.(indiceSujeto(i,:))(2,4);
            ++matricesQaux.(indiceSujeto(i,:))(2,4);             
          elseif (todo.(indice(j+1,:))(i)._respuestasEXP(k-auxFallas)==1)&&(todo.(indice(j+1,:))(i)._respuestasOPO(k-auxFallas)=1)%Nocooperacion mutua %
            ++matricesQ.(indiceSujeto(i,:))(3,4);
            ++matricesQaux.(indiceSujeto(i,:))(3,4);            
          elseif (todo.(indice(j+1,:))(i)._respuestasEXP(k-auxFallas)==2)&&(todo.(indice(j+1,:))(i)._respuestasOPO(k-auxFallas)==1)%fue estafado%
            ++matricesQ.(indiceSujeto(i,:))(4,4);
            ++matricesQaux.(indiceSujeto(i,:))(4,4);             
          endif
        endif
        auxFallas=1;
      endif
    endfor
    auxFallas=1;
    matricesQxExp.(indiceSujeto(i,:)).(indice(j+1,:))=matricesQaux.(indiceSujeto(i,:));
    
    matricesQaux.(indiceSujeto(i,:)) = zeros(4,4);
  endfor
  for i=1:_nSujetos
    matricesQaux.(indiceSujeto(i,:)) = zeros(4,4);
  endfor
endfor
TT=T;CC=C;
PP=P;SS=S;

%
% Analizando las ultimas X sesiones
_ultimosX=7;
%   Normalizacion para todos los sujetos en todos los experimentos
Q_antes=matricesQ;
for i=1:_nSujetos % Ceros para todos
  matricesQ.(indiceSujeto(i,:)) = zeros(4,4); % [T C P S]'                %agregar matrices Q para cada sujeto en estructura
endfor
%   Promedio total --------------------------------------
for i=1:_nSujetos
  ultimo=nfields(matricesQxExp.(indiceSujeto(i,:)));
  primero=ultimo-_ultimosX+1;
  for v=primero:ultimo % matricesQ borrada arriba
        matricesQ.(indiceSujeto(i,:))=matricesQ.(indiceSujeto(i,:))+matricesQxExp.(indiceSujeto(i,:)).(indice(v+1,:));
  endfor
endfor 
%     Normalizacion
for i=1:_nSujetos
  for j=1:4
    if sum(matricesQ.(indiceSujeto(i,:))(j,:))!=0
      Q(j,:,i)=matricesQ.(indiceSujeto(i,:))(j,:)/sum(matricesQ.(indiceSujeto(i,:))(j,:));
      %Q(j,:,i)=matricesQ.(indiceSujeto(i,:))(j,:);%/sum(matricesQ.(indiceSujeto(i,:))(j,:));
    endif
  endfor
endfor
% matriz para inkscape
QQTotmarkovInk=zeros(4,4,_nSujetos);
for i=1:_nSujetos
  QQTotmarkovInk(:,:,i)=30*Q(:,:,i);
%   QQTotmarkovInk(1,1,i)=30*Q(1,1,i)+0;
%   QQTotmarkovInk(1,2,i)=30*Q(1,2,i)+0;
%   QQTotmarkovInk(2,1,i)=30*Q(2,1,i)+0;
%   QQTotmarkovInk(2,2,i)=30*Q(2,2,i)+0;
endfor

% ESTADOS ESTACIONARIOS
%_estadoEstacionario4=zeros(4,_nSujetos);
%
%for i=1:_nSujetos
%  _estadoEstacionario4(:,i) = dtmc(Q(:,:,i));
%endfor


%-------------------------------------------------------
%   Normalización Individual --------------------------
QxExp_ante=matricesQxExp;
indQ=[];
for i=1:_nSujetos
  for v=1:nfields(matricesQxExp.(indiceSujeto(i,:))) % experimentos
    for j=1:4 %Estados TRPS
      if sum(matricesQxExp.(indiceSujeto(i,:)).(indice(v+1,:))(j,:))!=0
         matricesQxExp.(indiceSujeto(i,:)).(indice(v+1,:))(j,:)=matricesQxExp.(indiceSujeto(i,:)).(indice(v+1,:))(j,:)/sum(matricesQxExp.(indiceSujeto(i,:)).(indice(v+1,:))(j,:));
         %matricesQxExp.(indiceSujeto(i,:)).(indice(v+1,:))(j,:)=matricesQxExp.(indiceSujeto(i,:)).(indice(v+1,:))(j,:);%/sum(matricesQxExp.(indiceSujeto(i,:)).(indice(v+1,:))(j,:));
      endif
    endfor
  endfor  
endfor
Q2=zeros(4,4,_nSujetos);
for i=1:_nSujetos
  ultimo=nfields(matricesQxExp.(indiceSujeto(i,:)));
  primero=ultimo-_ultimosX+1;
  for v=primero:ultimo % matricesQ borrada arriba
        Q2(:,:,i)=Q2(:,:,i)+(matricesQxExp.(indiceSujeto(i,:)).(indice(v+1,:))/length(primero:ultimo));
        %Q2(:,:,i)=Q2(:,:,i)+(matricesQxExp.(indiceSujeto(i,:)).(indice(v+1,:)));%/length(primero:ultimo));
  endfor
endfor
%     Normalizacion
%for i=1:_nSujetos
%  for j=1:4
%    if sum(Q(j,:,i))!=0
%      Q2(j,:,i)=Q2(j,:,i)/sum(Q2(j,:,i));
%    endif
%  endfor
%endfor
%-------------------------------------------------------
%--- Desviacion estandar de Q---------------------------
stdQ=[];
for i=1:_nSujetos
  aux=[];
  ultimo=nfields(matricesQxExp.(indiceSujeto(i,:)));
  primero=ultimo-_ultimosX+1;
  for j=primero:ultimo % experimentos
    aux=[aux;vec(matricesQxExp.(indiceSujeto(i,:)).(indice(j+1,:))')'];
  endfor
  v_std=std(aux,0);%std (x) = sqrt ( 1/(N-1) SUM_i (x(i) - mean(x))^2 )
  stdQ.(indiceSujeto(i,:))=reshape(v_std,4,4)';
  %plot(median(aux(:,6)))
  %hist (aux(:,6), 15, "facecolor", "r", "edgecolor", "b");
endfor




T2(:,:)=T(:,:)/length(_trialIni:_trialFin);R2(:,:)=C(:,:)/length(_trialIni:_trialFin);P2(:,:)=P(:,:)/length(_trialIni:_trialFin);S2(:,:)=S(:,:)/length(_trialIni:_trialFin);
%%%%%%%%%%%%%%%%%%%%%%%%% 
%% Frecuencia de ESTADOS ULTIMOS 10 SESIONES - POR SUJETOS
%for i=1:_nSujetos
%  ultimo=nfields(matricesQxExp.(indiceSujeto(i,:)));
%  primero=ultimo-_ultimosX+1;
%  figure()
%  plot([primero:ultimo],T2(i,primero:ultimo),'--ob',[primero:ultimo],R2(i,primero:ultimo),'--or',[primero:ultimo],P2(i,primero:ultimo),'-->k',[primero:ultimo],S2(i,primero:ultimo),'--.m');
%  xlabel(strcat("n de sesiones - Ultimas ",_ultimosX));
%  ylabel("% Proporcion entre estados");
%  title(strcat("Estrategias probabilistica en iPD: ",_txtSujetos(i,:)));
%  legend("T=D-C","R=C-C","P=D-D","S=C-D");
%  grid on;
%endfor
%%%%%%%%%%%%%%%%%%%%%%%%%
%% Frecuencia de estados - PROMEDIOS DE LAS ULTIMAS 10 SESIONES
T_mean=zeros(1,_nSujetos);R_mean=zeros(1,_nSujetos);P_mean=zeros(1,_nSujetos);S_mean=zeros(1,_nSujetos);
T_median=zeros(1,_nSujetos);R_median=zeros(1,_nSujetos);P_median=zeros(1,_nSujetos);S_median=zeros(1,_nSujetos);
T_sem=zeros(1,_nSujetos);R_sem=zeros(1,_nSujetos);P_sem=zeros(1,_nSujetos);S_sem=zeros(1,_nSujetos);
for i=1:_nSujetos
  ultimo=nfields(matricesQxExp.(indiceSujeto(i,:)));
  primero=ultimo-_ultimosX+1;
  T_mean(i)=mean(T2(i,primero:ultimo));R_mean(i)=mean(R2(i,primero:ultimo));P_mean(i)=mean(P2(i,primero:ultimo));S_mean(i)=mean(S2(i,primero:ultimo));
  T_median(i)=median(T2(i,primero:ultimo));R_median(i)=median(R2(i,primero:ultimo));P_median(i)=median(P2(i,primero:ultimo));S_median(i)=median(S2(i,primero:ultimo));
  T_sem(i)=std(T2(i,primero:ultimo));R_sem(i)=std(R2(i,primero:ultimo));P_sem(i)=std(P2(i,primero:ultimo));S_sem(i)=std(S2(i,primero:ultimo));
  hhh=figure;
  %plot(1,T_mean(i), 2,R_mean(i) ,3, P_mean(i),4,S_mean(i));
  h=errorbar(1,T_mean(i), T_sem(i),'*r', 2,R_mean(i),R_sem(i),'*b', 3,P_mean(i), P_sem(i),'*m', 4,S_mean(i), S_sem(i),'*c');
  set (h, "linewidth", 3);
  t=text([1:4], -.04*ones(1,4), {"T"; "R";"P";"S"},"fontsize",14);
  ylabel("% outcome rate","fontsize",14);
  title(strcat("Tasa de ocurrencia de cada estado en iPD: ",_txtSujetos(i,:)));
  legend("T=D-C","R=C-C","P=D-D","S=C-D");
  hold on
  bar(1:4,[T_mean(i),R_mean(i),P_mean(i),S_mean(i)])
  axis([0 5 0 1])
  hold off
  if (strcmp(_experimento,"T=3"))
    name=strcat("figuras/outcomeRate_overLevel_",_txtSujetos(i,:));
    name=strcat(name,".png");
    print(hhh, name);
  else
    name=strcat("figuras/iPD2/outcomeRate_overLevel_",_txtSujetos(i,:));
    name=strcat(name,".png");
    print(hhh, name);
  endif
endfor
%%%%%%%%%%%%%%%%%%%%%%%%%

graficos_iPD_1_2_9s_13s_12Ratas_medias_y_medianas % se obtienen los sujetos que superan el .75 porciento de cooperación
%_sujetosCooperadores=find(_mediaXsujeto>_criterio); % indice de sujetos que pasaron el criterios 
_sujetosCooperadores=find(_mediaXsujeto>_criterio); % indice de sujetos que pasaron el criterios 
_sujetosNocooperadores=complemento(_sujetosCooperadores,[1:_nSujetos]);
QmediaC=zeros(4,4);
QmediaD=zeros(4,4);
for i=_sujetosCooperadores
  QmediaC=QmediaC+Q(:,:,i);
endfor
QmediaC=QmediaC./sum(QmediaC,2);

for i=_sujetosNocooperadores
  QmediaD=QmediaD+Q(:,:,i);
endfor
QmediaD=QmediaD./sum(QmediaD,2);

% Test Friedman's Anova (Ho: todas los estados son igualmente probables)
% asignar rangos a los promedios de cada estado - ranks 
vals=[(T_mean(_sujetosCooperadores));
      (R_mean(_sujetosCooperadores));
      (P_mean(_sujetosCooperadores));
      (S_mean(_sujetosCooperadores))];
           
vals_std=[(T_sem(_sujetosCooperadores));
          (R_sem(_sujetosCooperadores));
          (P_sem(_sujetosCooperadores));
          (S_sem(_sujetosCooperadores))];
      
%rangos=ranks(vals,1)';

vals2=[(T_mean(_sujetosNocooperadores));
      (R_mean(_sujetosNocooperadores));
      (P_mean(_sujetosNocooperadores));
      (S_mean(_sujetosNocooperadores))];
           
vals_std2=[(T_sem(_sujetosNocooperadores));
          (R_sem(_sujetosNocooperadores));
          (P_sem(_sujetosNocooperadores));
          (S_sem(_sujetosNocooperadores))];

%vals2=30.*[(T_mean(_sujetosCooperadores));(R_mean(_sujetosCooperadores));(P_mean(_sujetosCooperadores));(S_mean(_sujetosCooperadores))]
%myfriedman(vals2')
if (length(vals(1,:))>1)
  dd=friedmanGuille(vals,0.05,1);
  dd.diff
endif
if (length(vals2(1,:))>1)
  ff=friedmanGuille(vals2,0.05,1);
  %ff.diff
endif

%ff.diff
% promediar las tasas de cooperacion y tasas de estados de los animales que superaron el criterio
_mediaT=mean(T_mean(_sujetosCooperadores));
_mediaR=mean(R_mean(_sujetosCooperadores));
_mediaP=mean(P_mean(_sujetosCooperadores));
_mediaS=mean(S_mean(_sujetosCooperadores));
_semT=sem(T_mean(_sujetosCooperadores));
_semR=sem(R_mean(_sujetosCooperadores));
_semP=sem(P_mean(_sujetosCooperadores));
_semS=sem(S_mean(_sujetosCooperadores));
hhh=figure;
h=errorbar(1,_mediaT, _semT,'*r', 2,_mediaR,_semR,'*b', 3,_mediaP, _semP,'*m', 4,_mediaS, _semS,'*k');
%h=errorbar(1,_mediaT, _semT, 2,_mediaR,_semR, 3,_mediaP, _semP, 4,_mediaS, _semS,'*k');
set (h, "linewidth", 3);
%hh=xlabel("Estados");set(hh, "fontsize", 14);
hh=ylabel("% outcome rate","fontsize",14);
hh=title(strcat("Incidence Rate of all outcome. Over level C: ",num2str(_criterio*100),"% de C"));
set(hh, "fontsize", 14);
legend("T=D-C","R=C-C","P=D-D","S=C-D");set(hh, "fontsize", 14);
hold on
bar(1:4,[_mediaT,_mediaR,_mediaP,_mediaS],'facecolor', 'g','edgecolor','b', "linewidth", 2);
set(hh, "fontsize", 14);
axis ("tic[yz]", "labely[xyz]");
h=plot([0.5:4.5 ],[0.25 .25 .25 .25 .25],"--r");
set(h, "linewidth", 2);  
%t=text(-0.3+[1:4], -1.03+ones(1,4), {"P(c|T)"; "P(c|R)";"P(c|P)";"P(c|S)"},"fontsize",14);
t=text([1:4], -.04*ones(1,4), {"T"; "R";"P";"S"},"fontsize",14);
if length(_sujetosCooperadores)>1
  t=text([1:(4-1)/(length(_sujetosCooperadores)-1):4], -.08*ones(1,length(_sujetosCooperadores)), _txtSujetos(_sujetosCooperadores,:),"fontsize",13);
else
  t=text([2], -.08*ones(1,length(_sujetosCooperadores)), _txtSujetos(_sujetosCooperadores,:),"fontsize",13);
endif
axis([0 5 0 1]);
t=text(0.5, 0.95, {"Ho=outcomes rates have the same frequency"},"fontsize",14);
t=text(3, 0.29, {"Ho is rejected"},"fontsize",14);
hold off
if (strcmp(_experimento,"T=3"))
  name=strcat("figuras/outcomeRate_overLevel",".png");
  print(hhh, name);
else
  name=strcat("figuras/iPD2/outcomeRate_overLevel",".png");
  print(hhh, name);
endif


_mediaT=mean(T_mean(_sujetosNocooperadores));
_mediaR=mean(R_mean(_sujetosNocooperadores));
_mediaP=mean(P_mean(_sujetosNocooperadores));
_mediaS=mean(S_mean(_sujetosNocooperadores));
_semT=sem(T_mean(_sujetosNocooperadores));
_semR=sem(R_mean(_sujetosNocooperadores));
_semP=sem(P_mean(_sujetosNocooperadores));
_semS=sem(S_mean(_sujetosNocooperadores));
hh=figure;
h=errorbar(1,_mediaT, _semT,'*r', 2,_mediaR,_semR,'*b', 3,_mediaP, _semP,'*m', 4,_mediaS, _semS,'*c');
set (h, "linewidth", 3);
%xlabel("Estados");
ylabel("% outcome rate","fontsize", 14);
title(strcat("Incidence Rate of all outcome. Down level C: ",num2str(_criterio*100),"% de C"),"fontsize", 14);
h=legend("T=D-C","R=C-C","P=D-D","S=C-D");set(h, "fontsize", 14);
hold on;
bar(1:4,[_mediaT,_mediaR,_mediaP,_mediaS]);
axis ("tic[yz]", "labely[xyz]");
t=text([1:4], -.04*ones(1,4), {"T"; "R";"P";"S"},"fontsize",14);
t=text([1:(4-1)/(length(_sujetosNocooperadores)-1):4], -.08*ones(1,length(_sujetosNocooperadores)), _txtSujetos(_sujetosNocooperadores,:),"fontsize",13);
axis([0 5 0 1]);
hold off;
if (strcmp(_experimento,"T=3"))
  name=strcat("figuras/outcomeRate_downLevel",".png");
  print(hhh, name);
else
  name=strcat("figuras/iPD2/outcomeRate_downLevel",".png");
  print(hhh, name);
endif

_mediaT=mean(T_mean(_sujetosCooperadores));
_mediaR=mean(R_mean(_sujetosCooperadores));
_mediaP=mean(P_mean(_sujetosCooperadores));
_mediaS=mean(S_mean(_sujetosCooperadores));
_medianaT=mean(T_median(_sujetosCooperadores));
_medianaR=mean(R_median(_sujetosCooperadores));
_medianaP=mean(P_median(_sujetosCooperadores));
_medianaS=mean(S_median(_sujetosCooperadores));
_stdT=std(T_mean(_sujetosCooperadores));
_stdR=std(R_mean(_sujetosCooperadores));
_stdP=std(P_mean(_sujetosCooperadores));
_stdS=std(S_mean(_sujetosCooperadores));

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%&%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ------------------ Test CHI_2 de bondad de ajuste---------------------------
% respecto de la Ho (poblacion de preferencia uniforme entre C y D) 
% Se utiliza la distribucion chi 2 para comparar los valores criticos 
% se testea la desviación de las probabilidad de eleccion dado un estado respecto a un ditribucion uniforme
% REQUIERE LAS PROB de COOPERAR DADO LOS DIFERENTES ESTADOS
probEleccionXestadoPrimeroUltimo;
% Se testea que las probabilidades indiciduales sobre cada sujeto es diferente del azar
% Prob. P(c|X) -> teorica = n_total_en_X / 2. La Frec Teoria se calcula como la suma de los casos de elección de C y D cuando caen 
% en un determinado X.  
% Entre sujetos Cooperadores 
% Entre sujetos Cooperadores
% P(c|X) probsbilidad de elección dado los Diferentes estados
% -- Graficos de P(C|X) ------------------------------------
probEleccion=zeros(size(probxExpTotal));
for i=1:_nSujetos
  for j=1:4
    if sum(probxExpTotal(j,:,i),2)!=0
      probEleccion(j,:,i)=probxExpTotal(j,:,i)./sum(probxExpTotal(j,:,i),2);
    endif
  endfor
endfor

_colores=["-+k";"-om";"-*g";"-.r";"-xb";"-sc";"-^m";"-vg";"->b";"-<k";"-pk";"-hr"];
_colores2=["+k";"om";"*g";".r";"xb";"sc";"^m";"vg";">b";"<k";"pk";"hr"];

figure;hold on;
for i=_sujetosCooperadores
  h=plot(probEleccion(:,1,i),_colores2(i,:), "markersize",12,"markerfacecolor",'none', "linewidth", 2);
endfor
plot([.5 .5 .5 .5],"--r");
set(h, "linewidth", 2);  
hh=legend(_txtSujetos(_sujetosCooperadores,:), 4);set(hh,"fontsize",12);
%xlabel("T=1 --- R=2 --- P=3 --- S=4");
axis ("tic[yz]", "labely[xyz]");
ylabel("P(C|X)", "fontsize", 13);
title("Probability of Cooperation after outcome - Over Level", "fontsize", 14);
t=text([1:4], -.04*ones(1,4), {"T"; "R";"P";"S"},"fontsize",14);
hold off;
axis([0 5 0 1]);

figure;
for i=_sujetosNocooperadores
  hold on;
  h=plot(probEleccion(:,1,i),_colores2(i,:), "markersize",12,"markerfacecolor",'none', "linewidth", 2);
  set(h, "linewidth", 2);       
endfor
plot([.5 .5 .5 .5],"--r");
set(h, "linewidth", 2);  
hh=legend(_txtSujetos(_sujetosNocooperadores,:));set(hh,"fontsize",12);
%xlabel("T=1 --- R=2 --- P=3 --- S=4");
axis ("tic[yz]", "labely[xyz]");
hh=ylabel("P(C|X)", "fontsize", 13);
title("Probability of Cooperation after outcome - Down Level", "fontsize", 14);
t=text([1:4], -.04*ones(1,4), {"T"; "R";"P";"S"},"fontsize",14);
axis([0 5 0 1]);
hold off;
% -- end ------------------------------------

% PROBABILIDAD DE COOPERAR DADO CADA ESTADOS
probEleccionC=zeros(4,_nSujetos);
probEleccionD=zeros(4,_nSujetos);
for i=1:_nSujetos
  probEleccionC(:,i)=probEleccion(:,1,i);
  probEleccionD(:,i)=probEleccion(:,2,i);
endfor
%for i=1:_nSujetos
%figure;
%  %h=errorbar([1:4],probEleccion(:,1,i),probEleccionSem(:,1,2),'*k');
%  hold on;%set(h, "linewidth", 2);     
%  h=bar([1:4],probEleccion(:,1,i),'facecolor', 'g', 'edgecolor','b', "linewidth", 2);
%  h=plot([0:5],[.5 .5 .5 .5 .5 .5],"--r");
%  axis ("tic[yz]", "labely[xyz]");
%  set(h, "linewidth", 2);  
%  legend("MEAN","Half prob");
%  %hh=xlabel("T=1 --- R=2 --- P=3 --- S=4");set(hh, "fontsize", 14);
%  hh=ylabel("P(C|X)");set(hh, "fontsize", 14);
%  hh=title(strcat("Probability of Cooperation after outcome: ",_txtSujetos(i,:)));
%  set(hh, "fontsize", 14);
%  axis ("tic[yz]", "labely[xyz]");
%  t=text([1:4], -.04*ones(1,4), {"T"; "R";"P";"S"},"fontsize",14);
%  axis([0 5 0 1]);
%  hold off;grid on;
%endfor

probEleccionMean=zeros(4,2,2);
probEleccionSem=zeros(4,2,2);
% mean of cooperation over cooperators
for i=_sujetosCooperadores
  probEleccionMean(:,:,1)+=probEleccion(:,:,i);
endfor
probEleccionMean(:,:,1)=probEleccionMean(:,:,1)./sum(probEleccionMean(:,:,1),2);
%       % se eliminan los NAN para calcular SEM
aux=[];
for j=1:4
  aux=[];
  for i=_sujetosCooperadores
    if probEleccion(j,1,i)!=0 || probEleccion(j,2,i)!=0
      aux=[aux; probEleccion(j,:,i)];
    endif
  endfor
  probEleccionSem(j,:,1)=sem(aux);
endfor

for i=_sujetosNocooperadores
  probEleccionMean(:,:,2)+=probEleccion(:,:,i);
endfor
probEleccionMean(:,:,2)=probEleccionMean(:,:,2)./sum(probEleccionMean(:,:,2),2);
aux=[];
for j=1:4
  aux=[];
  for i=_sujetosNocooperadores
    if probEleccion(j,1,i)!=0 || probEleccion(j,2,i)!=0
      aux=[aux; probEleccion(j,:,i)];
    endif
  endfor
  probEleccionSem(j,:,2)=sem(aux);
endfor

%% CHI 2 %%%%%%%%%%%%%%%%%%%%%%
frec_teo=100*[.5];%                   |-> 1=cooperadores y 2=No_cooperadores
chi_2_coop= (100.*probEleccionMean(:,1,1)-frec_teo).^2./frec_teo + (100.*probEleccionMean(:,2,1)-frec_teo).^2./frec_teo
chi_2_nocoop=(100.*probEleccionMean(:,1,2)-frec_teo).^2./frec_teo + (100.*probEleccionMean(:,2,2)-frec_teo).^2./frec_teo
% VER Y COMPLETAR
%pasan=zeros(1,_nSujetos);
%pasanBon=zeros(1,_nSujetos);
%freedom=1;
%% Sin correccion de Bonferroni
%for i=1:_nSujetos
%  (1-chi2cdf(chi_2_xSujetos(i),freedom))
%  if (1-chi2cdf(chi_2_xSujetos(i),freedom))<0.05 %Si es menor significa que las muestras no provienen de una población aleatoria
%    pasan(i)=1;% Se rechaza la HIP NULA
%  endif
%endfor
%% Con Correccion de Bonferroni
%for i=1:_nSujetos
%  if (1-chi2cdf(chi_2_xSujetos(i),freedom))<(0.05/(freedom+1)) %Si es menor significa que las muestras no provienen de una población aleatoria
%    pasanBon(i)=1;% Se rechaza la HIP NULA
%  endif
%endfor
%
%pasan
%pasanBon
%aa=[1:_nSujetos];
%aa(pasan==1)
%%%%%%%%%%%%%%%%%%%%%%%%


figure;
h=errorbar([1:4],probEleccionMean(:,1,2),probEleccionSem(:,1,2),'*k');
hold on;set(h, "linewidth", 2);     
h=bar([1:4],probEleccionMean(:,1,2),'facecolor', 'g', 'edgecolor','b', "linewidth", 2);
h=plot([0:5],[.5 .5 .5 .5 .5 .5],"--r");
axis ("tic[yz]", "labely[xyz]");
set(h, "linewidth", 2);  
legend("SEM","MEAN","Half prob");
%hh=xlabel("T=1 --- R=2 --- P=3 --- S=4");set(hh, "fontsize", 14);
hh=ylabel("P(C|X)");set(hh, "fontsize", 14);
hh=title("Probability of Cooperation after outcome - Down Level");set(hh, "fontsize", 14);
axis ("tic[yz]", "labely[xyz]");
t=text([1:4], -.04*ones(1,4), {"T"; "R";"P";"S"},"fontsize",14);
t=text([1:4/(length(_sujetosNocooperadores)+1):4], -.08*ones(1,length(_sujetosNocooperadores)), _txtSujetos(_sujetosNocooperadores,:),"fontsize",14);
axis([0 5 0 1]);
hold off;grid on;

figure;
h=errorbar([1:4],probEleccionMean(:,1,1),probEleccionSem(:,1,1),'*k');
hold on;set(h, "linewidth", 2);     
h=bar([1:4],probEleccionMean(:,1,1),'facecolor', 'g', 'edgecolor','b', "linewidth", 2);
h=plot([0:5],[.5 .5 .5 .5 .5 .5],"--r");
axis ("tic[yz]", "labely[xyz]");
set(h, "linewidth", 2);  
hh=legend("SEM","MEAN","Half prob",4);set(hh, "fontsize", 14);
%hh=xlabel("T=1 --- R=2 --- P=3 --- S=4");set(hh, "fontsize", 14);
hh=ylabel("P(C|X)");set(hh, "fontsize", 14);
hh=title("Probability of Cooperation after outcome - Over Level");set(hh, "fontsize", 14);
axis ("tic[yz]", "labely[xyz]");
t=text([1:4], -.04*ones(1,4), {"T"; "R";"P";"S"},"fontsize",14);
aux22=probEleccionMean(:,1,1)+probEleccionSem(:,1,1)+0.01;
t=text(-0.06+[1:4], aux22, {"* "; "* ";"* ";"* "},"fontsize",25);
t=text([1:(4-1)/(length(_sujetosCooperadores)-1):4], -.08*ones(1,length(_sujetosCooperadores)), _txtSujetos(_sujetosCooperadores,:),"fontsize",14);
axis([0 5 0 1]);
hold off;grid on;
% ------------------------
% ------------------------
figure;
media1=mean( _mediaXsujeto([1 3 7 8 9 10 11 12]) );
sem1=sem(_mediaXsujeto([1 3 7 8 9 10 11 12]));
hold on;
h=errorbar([1:5],[media1 probEleccionMean(:,1,1)'],[ sem1 probEleccionSem(:,1,1)'],'*k');
hold on;set(h, "linewidth", 2);     
h=bar([2:5],[probEleccionMean(:,1,1)'],'facecolor', 'g', 'edgecolor','b', "linewidth", 2,'barwidth',0.65);
h=bar([1],[media1],'facecolor', 'm', 'edgecolor','b', "linewidth", 2,'barwidth',0.35);
%h=bar([2:5],[probEleccionMean(:,1,1)'],'facecolor', 'g', 'edgecolor','b', "linewidth", 2);
h=plot([0:6],[.5 .5 .5 .5 .5 .5 .5],"--r");
axis ("tic[yz]", "labely[xyz]");
set(h, "linewidth", 2);  
hh=legend("SEM","STRATEGY MEAN","COOP. MEAN","Half prob",4);set(hh, "fontsize", 14);
%hh=xlabel("T=1 --- R=2 --- P=3 --- S=4");set(hh, "fontsize", 14);
hh=ylabel("probability");set(hh, "fontsize", 14);
%hh=title("");set(hh, "fontsize", 14);
axis ("tic[yz]", "labely[xyz]");
%t=text([0.55 1.7 2.7 3.7 4.7], -.1*ones(1,5), {"C choice";"P(c|T)"; "p(c|R)";"P(c|P)";"p(c|S)"},"fontsize",14);
t=text([0.6 1.7 2.7 3.7 4.7], -1.03+ones(1,5), {"C choice";"P(c|T)"; "p(c|R)";"P(c|P)";"p(c|S)"},"fontsize",14);
aux22=probEleccionMean(:,1,1)+probEleccionSem(:,1,1)+0.01;
t=text(-0.08+[1:5],[media1 aux22'], {"  ";"* "; "* ";"* ";"* "},"fontsize",25);
%t=text([1:(4-1)/(length(_sujetosCooperadores)-1):4], -.08*ones(1,length(_sujetosCooperadores)), _txtSujetos(_sujetosCooperadores,:),"fontsize",14);
axis([0 6 0 1]);
hold off;grid on;
% ------------------------% ------------------------
% ------------------------% ------------------------


% ERRORES en matriz
% fila T 
err= [];
for j=1:_nSujetos
  for i=1:nfields(matricesQxExp.(indiceSujeto(j,:)))
    if length(find(QxExp_ante.(indiceSujeto(j,:)).(indice(i+1,:))(1,1:2)>0))!=0
      err=[err; j i find(QxExp_ante.(indiceSujeto(j,:)).(indice(i+1,:))(1,1:2)>0) 1];
    endif
  endfor
endfor
% fila R 

for j=1:_nSujetos
  for i=1:nfields(matricesQxExp.(indiceSujeto(j,:)))
    if length(find(QxExp_ante.(indiceSujeto(j,:)).(indice(i+1,:))(2,3:4)>0))!=0
      err=[err; j i find(QxExp_ante.(indiceSujeto(j,:)).(indice(i+1,:))(2,3:4)>0) 2];
    endif
  endfor
endfor
% fila P 

for j=1:_nSujetos
  for i=1:nfields(matricesQxExp.(indiceSujeto(j,:)))
    if length(find(QxExp_ante.(indiceSujeto(j,:)).(indice(i+1,:))(3,1:2)>0))!=0
      err=[err; j i find(QxExp_ante.(indiceSujeto(j,:)).(indice(i+1,:))(3,1:2)>0) 3];
    endif
  endfor
endfor
% fila S 

for j=1:_nSujetos
  for i=1:nfields(matricesQxExp.(indiceSujeto(j,:)))
    if length(find(QxExp_ante.(indiceSujeto(j,:)).(indice(i+1,:))(4,3:4)>0))!=0
      err=[err; j i find(QxExp_ante.(indiceSujeto(j,:)).(indice(i+1,:))(4,3:4)>0) 4];
    endif
  endfor
endfor


% Trials fallados por el experimental, no palanqueo
errores=zeros(length(1:_nSujetos),_ultimosX);
abscisa=zeros(length(1:_nSujetos),_ultimosX);
for i=1:_nSujetos
  ultimo=nfields(matricesQxExp.(indiceSujeto(i,:)));
  primero=ultimo-_ultimosX+1;
  abscisa(i,:)=primero:ultimo;
  k=0;
  for j=primero:ultimo
    k++;
    errores(i,k)=fallasxExp.(indiceSujeto(i,:)).(indice(j+1,:));
  endfor
endfor

figure;
plot(errores');

















