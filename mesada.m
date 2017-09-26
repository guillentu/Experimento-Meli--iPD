%%%%% Mesada %%%%%%%%%%%%%%%55
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%clear all;
%_experimento="";%  T=3 ; T=5;
%_experimento="";
%if (strcmp(_experimento,"T=3"))
%  load "iPD_1_3_9s_13s/datosCargadosWorkspace_3_1_9_13_fecha_20160914";
%else
%  load "iPD_1_5_9s_13s_y_2_3_9s_13s/datosCargadosWorkspace_1_5_9_13_y_2_3_9_13_fecha_20160915";
%endif  
%
%indice=["exp00";"exp01";"exp02";"exp03";"exp04";"exp05";
%        "exp06";"exp07";"exp08";"exp09";"exp10";"exp11";
%        "exp12";"exp13";"exp14";"exp15";"exp16";"exp17";
%        "exp18";"exp19";"exp20";"exp21";"exp22";"exp23";
%				"exp24";"exp25";"exp26";"exp27";"exp28";"exp29";
%				"exp30";"exp31";"exp32";"exp33";"exp34";"exp35";
%				"exp36";"exp37";"exp38";"exp39";"exp40";"exp41";
%        "exp42";"exp43";"exp44";"exp45";"exp46";"exp47";
%        "exp48";"exp49";"exp50";"exp51";"exp52";"exp53";
%        "exp54";"exp55";"exp56";"exp57";"exp58"];
%%%%%%%%todo.exp00=exp00;
%todo.exp01=exp01;todo.exp02=exp02;todo.exp03=exp03;todo.exp04=exp04;todo.exp05=exp05;
%todo.exp06=exp06;todo.exp07=exp07;todo.exp08=exp08;todo.exp09=exp09;todo.exp10=exp10;
%todo.exp11=exp11;todo.exp12=exp12;todo.exp13=exp13;todo.exp14=exp14;todo.exp15=exp15;
%todo.exp16=exp16;todo.exp17=exp17;
%if (strcmp(_experimento,"T=3"))
%  todo.exp18=exp18;todo.exp19=exp19,todo.exp20=exp20;
%  todo.exp21=exp21;todo.exp22=exp22;todo.exp23=exp23;todo.exp24=exp24;todo.exp25=exp25;
%  todo.exp26=exp26;todo.exp27=exp27;
%endif
%%todo.exp28=exp28;todo.exp29=exp29;
%%todo.exp30=exp30;todo.exp31=exp31;
%%todo.exp32=exp32;todo.exp33=exp33;
%%todo.exp34=exp34;todo.exp35=exp35;
%%todo.exp36=exp36;todo.exp37=exp37;
%%todo.exp38=exp38;todo.exp39=exp39;
%%todo.exp40=exp40;todo.exp41=exp41;
%%todo.exp42=exp42;todo.exp43=exp43;
%%todo.exp44=exp44;todo.exp45=exp45;
%%todo.exp46=exp46;todo.exp47=exp47;
%%todo.exp48=exp48;todo.exp49=exp49;
%%todo.exp50=exp50;todo.exp51=exp51;%todo.exp=exp;
%%todo.exp52=exp52;todo.exp53=exp53;
%%todo.exp54=exp54;todo.exp55=exp55;
%%todo.exp56=exp56;todo.exp57=exp57;
%%todo.exp58=exp58;
%
%_txtSujetos=["1S";"2S";"1M";"2M";"1T";"2T"];
%
%% PORCENTAJE DE COOPERACION
%_nSujetos=6;
%_vSujetosNull=[];
%_vSujetos1=[1 2 3 4 5 6 7 8 9 10 11 12];% desde exp01
%_vSujetos2=[2 6 8 9 10 11];% a partir del exp24
%_vSujetos3=[2 6 8 9 11]; % a partir del exp30
%_vSujetos4=[2 8 11]; % a partir del exp32
%_vSujetos5=[8]; % a partir del exp34
%_vSujetos=_vSujetos1;
%_finAnalisis1=23;% valor inclusive de experimento  (1 3 4 5 7 12)
%_finAnalisis2=29;%(10)
%_finAnalisis3=31;%(6 9)
%_finAnalisis4=33;%(2 11)
%_finAnalisis5=50;%(9)
%_iniAnalisis1=1;
%_iniAnalisis2=1;
%_iniAnalisis3=1;
%_iniAnalisis4=1;
%_iniAnalisis5=1;
%_coop=zeros(1,_nSujetos);
%_cooperacion=[];
%_nada=[];
%_nadaAux=zeros(1,_nSujetos);
%_trialIni=1;
%_trialFin=30;
%inicio=01;
%fin=0;
%datos=zeros(2,fin);
%
%% Testeo ------------------------------
%%--------------------------------------
%
%indiceSujeto=[];
%%for i=1:_nSujetos
%%  indiceSujeto=[indiceSujeto;strcat("Q",mat2str(i))];
%%endfor
%indiceSujeto=["Q01";"Q02";"Q03";"Q04";"Q05";"Q06";"Q07";"Q08";"Q09";"Q10";"Q11";"Q12"];
%% Probabilidades de transicion de estados
%%matricesQ1.Q1=[];matricesQ2.Q2=[];matricesQ3.Q3=[];matricesQ4.Q4=[];matricesQ5.Q5=[];matricesQ6.Q6=[];
%%matricesQ7.Q7=[];matricesQ8.Q8=[];matricesQ9.Q9=[];matricesQ10.Q10=[];matricesQ11.Q11=[];matricesQ12.Q12=[];
%matricesQxExp=[];
%matricesQaux=[];
%Q = zeros(4,4); % [T C P S]'                %agregar matrices Q para cada sujeto en estructura
%fallasXexp=[];
%%matricesQ.Q1=[];matricesQ.Q2=[];matricesQ.Q3=[];matricesQ.Q4=[];matricesQ.Q5=[];matricesQ.Q6=[];matricesQ.Q7=[];matricesQ.Q8=[];matricesQ.Q9=[];matricesQ.Q10=[];matricesQ.Q11=[];matricesQ.Q12=[];
%for i=1:_nSujetos
%  matricesQ.(indiceSujeto(i,:)) = zeros(4,4); % [T C P S]'                %agregar matrices Q para cada sujeto en estructura
%  matricesQaux.(indiceSujeto(i,:)) = zeros(4,4);
%endfor
%
%% Experimentos por sujetos
%expXsuj=zeros(1,_nSujetos);
%for j=inicio:(nfields(todo))
%  for i=1:length(todo.(indice(j+1,:)))
%    if length(todo.(indice(j+1,:))(i)._groupStr)!=0
%      expXsuj(i)++;
%    endif
%  endfor
%endfor
%fin=max(expXsuj);
%% 
%% Brief: Carga las matrices de transicion de estado de cada sujeto.
%%        Es un promedio total 
%%        Acumula las veces que aparece la transicion durante los 29 trials a lo
%%        largo los inicio:fin de experimentos.
%T=zeros(_nSujetos,length(inicio:fin));C=zeros(_nSujetos,length(inicio:fin));
%P=zeros(_nSujetos,length(inicio:fin));S=zeros(_nSujetos,length(inicio:fin));
%controlFallas=zeros(1,_nSujetos);
%auxFallas=1;
%
%_ultimosX=5;
%for i=1:_nSujetos
%  ultimo=expXsuj(i);
%  primero=1;
%  for j=primero:ultimo %Experimentos
%    for k=_trialIni:_trialFin  % nºtrials x Exp.  TRAICIONAR DADO QUE
%      if ((todo.(indice(j+1,:))(i)._respuestasEXP(k)==0)||(todo.(indice(j+1,:))(i)._respuestasOPO(k)==0))
%        if (k==1)
%          ++controlFallas(i);%%%
%          ++controlFallas(i);
%        elseif (k==2) 
%          if (todo.(indice(j+1,:))(i)._respuestasEXP(k-1)!=0)% k=1 y K=2 son ceros no se cuenta una falla auxiluar
%            auxFallas+=1;  
%          endif
%          ++controlFallas(i);%%%
%        elseif (k==3)
%          if (todo.(indice(j+1,:))(i)._respuestasEXP(k-2)==0)&&(todo.(indice(j+1,:))(i)._respuestasEXP(k-1)==0)
%            % nada
%          elseif (todo.(indice(j+1,:))(i)._respuestasEXP(k-1)!=0)
%            auxFallas+=1;
%          else
%            a="MIERDA!!!"
%          endif
%          ++controlFallas(i);%%%
%        else
%          auxFallas+=1;
%          ++controlFallas(i);
%        endif
%      elseif (todo.(indice(j+1,:))(i)._respuestasEXP(k)==1)&&(todo.(indice(j+1,:))(i)._respuestasOPO(k)==2)
%        T(i,j-inicio+1)++; %TRAICIONAR DADO :
%        if (k>1) 
%          if (todo.(indice(j+1,:))(i)._respuestasEXP(k-auxFallas)==1)&&(todo.(indice(j+1,:))(i)._respuestasOPO(k-auxFallas)==2)%que Traiciono (imposible x TFT)%
%            ++matricesQ.(indiceSujeto(i,:))(1,1);
%            ++matricesQaux.(indiceSujeto(i,:))(1,1); 
%          elseif (todo.(indice(j+1,:))(i)._respuestasEXP(k-auxFallas)==2)&&(todo.(indice(j+1,:))(i)._respuestasOPO(k-auxFallas)==2) %Cooperacion mutua%
%            ++matricesQ.(indiceSujeto(i,:))(2,1);
%            ++matricesQaux.(indiceSujeto(i,:))(2,1); 
%          elseif (todo.(indice(j+1,:))(i)._respuestasEXP(k-auxFallas)==1)&&(todo.(indice(j+1,:))(i)._respuestasOPO(k-auxFallas)=1) %Nocooperacion mutua %
%            ++matricesQ.(indiceSujeto(i,:))(3,1);
%            ++matricesQaux.(indiceSujeto(i,:))(3,1);
%          elseif (todo.(indice(j+1,:))(i)._respuestasEXP(k-auxFallas)==2)&&(todo.(indice(j+1,:))(i)._respuestasOPO(k-auxFallas)==1)%fue estafado%
%            ++matricesQ.(indiceSujeto(i,:))(4,1);
%            ++matricesQaux.(indiceSujeto(i,:))(4,1); 
%          endif  
%        endif
%        auxFallas=1;
%      elseif (todo.(indice(j+1,:))(i)._respuestasEXP(k)==2)&&(todo.(indice(j+1,:))(i)._respuestasOPO(k)==2)
%        C(i,j-inicio+1)++; % COOPERACION MUTUA DADO :
%        if (k>1) 
%          if (todo.(indice(j+1,:))(i)._respuestasEXP(k-auxFallas)==1)&&(todo.(indice(j+1,:))(i)._respuestasOPO(k-auxFallas)==2)%que Traiciono (imposible x TFT)%
%            ++matricesQ.(indiceSujeto(i,:))(1,2); 
%            ++matricesQaux.(indiceSujeto(i,:))(1,2);
%          elseif (todo.(indice(j+1,:))(i)._respuestasEXP(k-auxFallas)==2)&&(todo.(indice(j+1,:))(i)._respuestasOPO(k-auxFallas)==2) %Cooperacion mutua%
%            ++matricesQ.(indiceSujeto(i,:))(2,2);
%            ++matricesQaux.(indiceSujeto(i,:))(2,2);
%          elseif (todo.(indice(j+1,:))(i)._respuestasEXP(k-auxFallas)==1)&&(todo.(indice(j+1,:))(i)._respuestasOPO(k-auxFallas)=1)%Nocooperacion mutua %
%            ++matricesQ.(indiceSujeto(i,:))(3,2);
%            ++matricesQaux.(indiceSujeto(i,:))(3,2);
%          elseif (todo.(indice(j+1,:))(i)._respuestasEXP(k-auxFallas)==2)&&(todo.(indice(j+1,:))(i)._respuestasOPO(k-auxFallas)==1)%fue estafado%
%            ++matricesQ.(indiceSujeto(i,:))(4,2);
%            ++matricesQaux.(indiceSujeto(i,:))(4,2); 
%          endif
%        endif
%        auxFallas=1;
%      elseif (todo.(indice(j+1,:))(i)._respuestasEXP(k)==1)&&(todo.(indice(j+1,:))(i)._respuestasOPO(k)=1)
%        P(i,j-inicio+1)++; % NO COOPERACION MUTUA DADO :
%        if (k>1) 
%          if (todo.(indice(j+1,:))(i)._respuestasEXP(k-auxFallas)==1)&&(todo.(indice(j+1,:))(i)._respuestasOPO(k-auxFallas)==2) %que Traiciono (imposible x TFT)%
%            ++matricesQ.(indiceSujeto(i,:))(1,3);
%            ++matricesQaux.(indiceSujeto(i,:))(1,3); 
%          elseif (todo.(indice(j+1,:))(i)._respuestasEXP(k-auxFallas)==2)&&(todo.(indice(j+1,:))(i)._respuestasOPO(k-auxFallas)==2)%Cooperacion mutua%
%            ++matricesQ.(indiceSujeto(i,:))(2,3);
%            ++matricesQaux.(indiceSujeto(i,:))(2,3); 
%          elseif (todo.(indice(j+1,:))(i)._respuestasEXP(k-auxFallas)==1)&&(todo.(indice(j+1,:))(i)._respuestasOPO(k-auxFallas)=1) %Nocooperacion mutua %
%            ++matricesQ.(indiceSujeto(i,:))(3,3);
%            ++matricesQaux.(indiceSujeto(i,:))(3,3);            
%          elseif (todo.(indice(j+1,:))(i)._respuestasEXP(k-auxFallas)==2)&&(todo.(indice(j+1,:))(i)._respuestasOPO(k-auxFallas)==1)%fue estafado%
%            ++matricesQ.(indiceSujeto(i,:))(4,3);
%            ++matricesQaux.(indiceSujeto(i,:))(4,3);             
%          endif
%        endif
%        auxFallas=1;
%      elseif (todo.(indice(j+1,:))(i)._respuestasEXP(k)==2)&&(todo.(indice(j+1,:))(i)._respuestasOPO(k)==1)
%        S(i,j-inicio+1)++; % ESTAFAR DADO :
%        if (k>1) 
%          if (todo.(indice(j+1,:))(i)._respuestasEXP(k-auxFallas)==1)&&(todo.(indice(j+1,:))(i)._respuestasOPO(k-auxFallas)==2)%que Traiciono (imposible x TFT)%
%            ++matricesQ.(indiceSujeto(i,:))(1,4);
%            ++matricesQaux.(indiceSujeto(i,:))(1,4);             
%          elseif (todo.(indice(j+1,:))(i)._respuestasEXP(k-auxFallas)==2)&&(todo.(indice(j+1,:))(i)._respuestasOPO(k-auxFallas)==2)%Cooperacion mutua%
%            ++matricesQ.(indiceSujeto(i,:))(2,4);
%            ++matricesQaux.(indiceSujeto(i,:))(2,4);             
%          elseif (todo.(indice(j+1,:))(i)._respuestasEXP(k-auxFallas)==1)&&(todo.(indice(j+1,:))(i)._respuestasOPO(k-auxFallas)=1)%Nocooperacion mutua %
%            ++matricesQ.(indiceSujeto(i,:))(3,4);
%            ++matricesQaux.(indiceSujeto(i,:))(3,4);            
%          elseif (todo.(indice(j+1,:))(i)._respuestasEXP(k-auxFallas)==2)&&(todo.(indice(j+1,:))(i)._respuestasOPO(k-auxFallas)==1)%fue estafado%
%            ++matricesQ.(indiceSujeto(i,:))(4,4);
%            ++matricesQaux.(indiceSujeto(i,:))(4,4);             
%          endif
%        endif
%        auxFallas=1;
%      endif
%    endfor
%    auxFallas=1;
%    matricesQxExp.(indiceSujeto(i,:)).(indice(j+1,:))=matricesQaux.(indiceSujeto(i,:));
%    
%    matricesQaux.(indiceSujeto(i,:)) = zeros(4,4);
%  endfor
%  for i=1:_nSujetos
%    matricesQaux.(indiceSujeto(i,:)) = zeros(4,4);
%  endfor
%endfor
%TT=T;CC=C;
%PP=P;SS=S;
%
%%
%% Analizando las ultimas X sesiones
%
%%   Normalizacion para todos los sujetos en todos los experimentos
%Q_antes=matricesQ;
%for i=1:_nSujetos % Ceros para todos
%  matricesQ.(indiceSujeto(i,:)) = zeros(4,4); % [T C P S]'                %agregar matrices Q para cada sujeto en estructura
%endfor
%%   Promedio total --------------------------------------
%for i=1:_nSujetos
%  ultimo=nfields(matricesQxExp.(indiceSujeto(i,:)));
%  primero=ultimo-_ultimosX+1;
%  for v=primero:ultimo % matricesQ borrada arriba
%        matricesQ.(indiceSujeto(i,:))=matricesQ.(indiceSujeto(i,:))+matricesQxExp.(indiceSujeto(i,:)).(indice(v+1,:));
%  endfor
%endfor 
%%     Normalizacion
%for i=1:_nSujetos
%  for j=1:4
%    if sum(matricesQ.(indiceSujeto(i,:))(j,:))!=0
%      Q(j,:,i)=matricesQ.(indiceSujeto(i,:))(j,:)/sum(matricesQ.(indiceSujeto(i,:))(j,:));
%      %Q(j,:,i)=matricesQ.(indiceSujeto(i,:))(j,:);%/sum(matricesQ.(indiceSujeto(i,:))(j,:));
%    endif
%  endfor
%endfor
%% matriz para inkscape
%QQTotmarkovInk=zeros(4,4,_nSujetos);
%for i=1:_nSujetos
%  QQTotmarkovInk(:,:,i)=30*Q(:,:,i);
%%   QQTotmarkovInk(1,1,i)=30*Q(1,1,i)+0;
%%   QQTotmarkovInk(1,2,i)=30*Q(1,2,i)+0;
%%   QQTotmarkovInk(2,1,i)=30*Q(2,1,i)+0;
%%   QQTotmarkovInk(2,2,i)=30*Q(2,2,i)+0;
%endfor
%
%% ESTADOS ESTACIONARIOS
%%_estadoEstacionario4=zeros(4,_nSujetos);
%%
%%for i=1:_nSujetos
%%  _estadoEstacionario4(:,i) = dtmc(Q(:,:,i));
%%endfor
%
%
%%-------------------------------------------------------
%%   Normalización Individual --------------------------
%QxExp_ante=matricesQxExp;
%indQ=[];
%for i=1:_nSujetos
%  for v=1:nfields(matricesQxExp.(indiceSujeto(i,:))) % experimentos
%    for j=1:4 %Estados TRPS
%      if sum(matricesQxExp.(indiceSujeto(i,:)).(indice(v+1,:))(j,:))!=0
%         matricesQxExp.(indiceSujeto(i,:)).(indice(v+1,:))(j,:)=matricesQxExp.(indiceSujeto(i,:)).(indice(v+1,:))(j,:)/sum(matricesQxExp.(indiceSujeto(i,:)).(indice(v+1,:))(j,:));
%         %matricesQxExp.(indiceSujeto(i,:)).(indice(v+1,:))(j,:)=matricesQxExp.(indiceSujeto(i,:)).(indice(v+1,:))(j,:);%/sum(matricesQxExp.(indiceSujeto(i,:)).(indice(v+1,:))(j,:));
%      endif
%    endfor
%  endfor  
%endfor
%Q2=zeros(4,4,_nSujetos);
%for i=1:_nSujetos
%  ultimo=nfields(matricesQxExp.(indiceSujeto(i,:)));
%  primero=ultimo-_ultimosX+1;
%  for v=primero:ultimo % matricesQ borrada arriba
%        Q2(:,:,i)=Q2(:,:,i)+(matricesQxExp.(indiceSujeto(i,:)).(indice(v+1,:))/length(primero:ultimo));
%        %Q2(:,:,i)=Q2(:,:,i)+(matricesQxExp.(indiceSujeto(i,:)).(indice(v+1,:)));%/length(primero:ultimo));
%  endfor
%endfor
%%     Normalizacion
%%for i=1:_nSujetos
%%  for j=1:4
%%    if sum(Q(j,:,i))!=0
%%      Q2(j,:,i)=Q2(j,:,i)/sum(Q2(j,:,i));
%%    endif
%%  endfor
%%endfor
%%-------------------------------------------------------
%%--- Desviacion estandar de Q---------------------------
%stdQ=[];
%for i=1:_nSujetos
%  aux=[];
%  ultimo=nfields(matricesQxExp.(indiceSujeto(i,:)));
%  primero=ultimo-_ultimosX+1;
%  for j=primero:ultimo % experimentos
%    aux=[aux;vec(matricesQxExp.(indiceSujeto(i,:)).(indice(j+1,:))')'];
%  endfor
%  v_std=std(aux,0);%std (x) = sqrt ( 1/(N-1) SUM_i (x(i) - mean(x))^2 )
%  stdQ.(indiceSujeto(i,:))=reshape(v_std,4,4)';
%  %plot(median(aux(:,6)))
%  %hist (aux(:,6), 15, "facecolor", "r", "edgecolor", "b");
%endfor
%
%
%
%
%T2(:,:)=T(:,:)/length(_trialIni:_trialFin);R2(:,:)=C(:,:)/length(_trialIni:_trialFin);P2(:,:)=P(:,:)/length(_trialIni:_trialFin);S2(:,:)=S(:,:)/length(_trialIni:_trialFin);
%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%% Frecuencia de ESTADOS ULTIMOS 10 SESIONES - POR SUJETOS
%%for i=1:_nSujetos
%%  ultimo=nfields(matricesQxExp.(indiceSujeto(i,:)));
%%  primero=ultimo-_ultimosX+1;
%%  figure()
%%  plot([primero:ultimo],T2(i,primero:ultimo),'--ob',[primero:ultimo],R2(i,primero:ultimo),'--or',[primero:ultimo],P2(i,primero:ultimo),'-->k',[primero:ultimo],S2(i,primero:ultimo),'--.m');
%%  xlabel(strcat("n de sesiones - Ultimas ",_ultimosX));
%%  ylabel("% Proporcion entre estados");
%%  title(strcat("Estrategias probabilistica en iPD: ",_txtSujetos(i,:)));
%%  legend("T=D-C","R=C-C","P=D-D","S=C-D");
%%  grid on;
%%endfor
%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Frecuencia de estados - PROMEDIOS DE LAS ULTIMAS 10 SESIONES
%T_mean=zeros(1,_nSujetos);R_mean=zeros(1,_nSujetos);P_mean=zeros(1,_nSujetos);S_mean=zeros(1,_nSujetos);
%T_median=zeros(1,_nSujetos);R_median=zeros(1,_nSujetos);P_median=zeros(1,_nSujetos);S_median=zeros(1,_nSujetos);
%T_sem=zeros(1,_nSujetos);R_sem=zeros(1,_nSujetos);P_sem=zeros(1,_nSujetos);S_sem=zeros(1,_nSujetos);
%for i=1:_nSujetos
%  ultimo=nfields(matricesQxExp.(indiceSujeto(i,:)));
%  primero=ultimo-_ultimosX+1;
%  T_mean(i)=mean(T2(i,primero:ultimo));R_mean(i)=mean(R2(i,primero:ultimo));P_mean(i)=mean(P2(i,primero:ultimo));S_mean(i)=mean(S2(i,primero:ultimo));
%  T_median(i)=median(T2(i,primero:ultimo));R_median(i)=median(R2(i,primero:ultimo));P_median(i)=median(P2(i,primero:ultimo));S_median(i)=median(S2(i,primero:ultimo));
%  T_sem(i)=sem(T2(i,primero:ultimo));R_sem(i)=sem(R2(i,primero:ultimo));P_sem(i)=sem(P2(i,primero:ultimo));S_sem(i)=sem(S2(i,primero:ultimo));
%  hhh=figure;
%  %plot(1,T_mean(i), 2,R_mean(i) ,3, P_mean(i),4,S_mean(i));
%  h=errorbar(1,T_mean(i), T_sem(i),'*r', 2,R_mean(i),R_sem(i),'*b', 3,P_mean(i), P_sem(i),'*m', 4,S_mean(i), S_sem(i),'*c');
%  set (h, "linewidth", 3);
%  axis ("tic[yz]", "labely[xyz]");
%  t=text([1:4], -.04*ones(1,4), {"T"; "R";"P";"S"},"fontsize",14);
%  ylabel("% outcome rate","fontsize",14);
%  title(strcat("Tasa de ocurrencia de cada estado en iPD: ",_txtSujetos(i,:)),"fontsize",14);
%  hh=legend("T=D-C","R=C-C","P=D-D","S=C-D");set(hh, "fontsize", 14);
%  hold on
%  bar(1:4,[T_mean(i),R_mean(i),P_mean(i),S_mean(i)])
%  axis([0 5 0 1])
%  hold off
%  if (strcmp(_experimento,"T=3"))
%    name=strcat("figuras/outcomeRate_overLevel_",_txtSujetos(i,:));
%    name=strcat(name,".png");
%    print(hhh, name);
%  else
%    name=strcat("figuras/iPD2/outcomeRate_overLevel_",_txtSujetos(i,:));
%    name=strcat(name,".png");
%    print(hhh, name);
%  endif
%endfor
%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%_criterio=.7;
%graficos_iPD_1_2_9s_13s_12Ratas_medias_y_medianas % se obtienen los sujetos que superan el .75 porciento de cooperación
%%_sujetosCooperadores=find(_mediaXsujeto>_criterio); % indice de sujetos que pasaron el criterios 
%_sujetosCooperadores=find(_mediaXsujeto>_criterio); % indice de sujetos que pasaron el criterios 
%_sujetosNocooperadores=complemento(_sujetosCooperadores,[1:_nSujetos]);
%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%_timeOut=[];
%for i=1:_nSujetos
%  if (strcmp(_experimento,"T=3"))
%    _timeOut(:,i)=[TT(i,:).*_vDelay4eat(1) + CC(i,:).*_vDelay4eat(2)+ PP(i,:).*_vDelay4eat(3)+ SS(i,:).*_vDelay4eat(4)];
%  else
%    _timeOut(:,i)=[TT(i,:).*_vDelay4eat(1)+ CC(i,:).*_vDelay4eat(2)+ PP(i,:).*_vDelay4eat(3)+ SS(i,:).*_vDelay4eat(4)];
%  endif
%endfor
%
%_timeOutMedia=zeros(1,_nSujetos);
%_timeOutSem=zeros(1,_nSujetos);
%for i=1:_nSujetos
%  inicioAux=expXsuj(i)-_ultimosX+1;
%  finAux=expXsuj(i);
%  _timeOutMedia(i) = mean(_timeOut(inicioAux:finAux,i));
%  _timeOutSem(i) = sem(_timeOut(inicioAux:finAux,i));
%endfor
%
%_timeOutMedia
%
%_idealSujeto=zeros(2,length(probC));
%for i=1:length(probC)
%  _idealSujeto(1,i)=N*_vRefuerzos*(QQideales(:,i).*[probC(i);probC(i);probD(i);probD(i)]);
%endfor

%
%Q22=zeros(4,4,_nSujetos);
%for i=1:_nSujetos
%  ultimo=numfields(matricesQxExp.(indiceSujeto(i,:)));
%  primero=ultimo-_ultimosX+1;
%  for v=primero:ultimo % matricesQ borrada arriba
%        %Q2(:,:,i)=Q2(:,:,i)+(matricesQxExp.(indiceSujeto(i,:)).(indice(v+1,:))/length(primero:ultimo));
%        Q2(:,:,i)=Q2(:,:,i)+(matricesQxExp.(indiceSujeto(i,:)).(indice(v+1,:)));
%        %Q2(:,:,i)=Q2(:,:,i)+(matricesQxExp.(indiceSujeto(i,:)).(indice(v+1,:)));%/length(primero:ultimo));
%  endfor
%  for jj=1:4 
%    if sum(isnan(Q2(jj,:,i)))!=0
%      Q2(jj,:,i)=[0 0 0 0];
%    endif
%    if sum(Q2(jj,:,i))!=0
%      Q2(jj,:,i)=Q2(jj,:,i)./ sum(Q2(jj,:,i),2);
%    endif
%  endfor
%endfor


%expXsuj=zeros(1,_nSujetos);
%for j=inicio:(nfields(todo)-8)
%  for i=1:length(todo.(indice(j+1,:)))
%    if length(todo.(indice(j+1,:))(i)._groupStr)!=0
%      expXsuj(i)++;
%    endif
%  endfor
%endfor


%%% Experimento T=2
%expXsuj(1)--;
%expXsuj(1)--;
%_tracking=[];
%for i=[1 3 4]%1:_nSujetos
%  todo.(indice(2,:))(i)._groupStr
%  for j=expXsuj(i)-4:expXsuj(i)
%    num2str(todo.(indice(j+1,:))(i)._respuestasEXP(:)')
%  endfor
%endfor

%%%%%%%%%%% PARA OBTENER LAS SECUENCIAS DE CD DC CC DD  %%%%%%%%SAVE en secuencias_T3 y T4_5 %%%%%%%%%%%%%%%%%%%%%%%
%%%%% Experimento T=3
%_tracking_T3=zeros(4,5,3);
%for i=[1 3 4]%1:_nSujetos
%  todo.(indice(2,:))(i)._groupStr
%  for j=expXsuj(i)-4:expXsuj(i)  %cd - dc - cc - dd
%    %num2str(todo.(indice(j+1,:))(i)._respuestasEXP(:)')
%    _tracking_T3(1,j+5-expXsuj(i),i)=length(find(diff(todo.(indice(j+1,:))(i)._respuestasEXP(1:30))==-1));
%    _tracking_T3(2,j+5-expXsuj(i),i)=length(find(diff(todo.(indice(j+1,:))(i)._respuestasEXP(1:30))==1));
%    _tracking_T3(3,j+5-expXsuj(i),i)=length(find(todo.(indice(j+1,:))(i)._respuestasEXP(1:29)+todo.(indice(j+1,:))(i)._respuestasEXP(2:30)==4));
%    _tracking_T3(4,j+5-expXsuj(i),i)=length(find(todo.(indice(j+1,:))(i)._respuestasEXP(1:29)+todo.(indice(j+1,:))(i)._respuestasEXP(2:30)==2));
%  endfor
%endfor
%
%%%% Experimento T=4
%%_tracking=[];
%%for i=[1 3 4]%1:_nSujetos
%%  todo.(indice(2,:))(i)._groupStr
%%  for j=expXsuj(i)-4-9:expXsuj(i)-9
%%    num2str(todo.(indice(j+1,:))(i)._respuestasEXP(:)')
%%  endfor
%%endfor
%_tracking_T4=zeros(4,5,3);
%for i=[1 3 4]%1:_nSujetos
%  todo.(indice(2,:))(i)._groupStr
%  k=1;
%  for j=expXsuj(i)-4-9:expXsuj(i)-9  %cd - dc - cc - dd
%    %num2str(todo.(indice(j+1,:))(i)._respuestasEXP(:)')
%    _tracking_T4(1,k,i)=length(find(diff(todo.(indice(j+1,:))(i)._respuestasEXP(1:30))==-1));
%    _tracking_T4(2,k,i)=length(find(diff(todo.(indice(j+1,:))(i)._respuestasEXP(1:30))==1));
%    _tracking_T4(3,k,i)=length(find(todo.(indice(j+1,:))(i)._respuestasEXP(1:29)+todo.(indice(j+1,:))(i)._respuestasEXP(2:30)==4));
%    _tracking_T4(4,k,i)=length(find(todo.(indice(j+1,:))(i)._respuestasEXP(1:29)+todo.(indice(j+1,:))(i)._respuestasEXP(2:30)==2));
%    k++;
%  endfor
%endfor
%%%%% Experimento T=5
%_tracking_T5=zeros(4,5,3);
%for i=[1 3 4]%1:_nSujetos
%  todo.(indice(2,:))(i)._groupStr
%  for j=expXsuj(i)-4:expXsuj(i)  %cd - dc - cc - dd
%    %num2str(todo.(indice(j+1,:))(i)._respuestasEXP(:)')
%    _tracking_T5(1,j+5-expXsuj(i),i)=length(find(diff(todo.(indice(j+1,:))(i)._respuestasEXP(1:30))==-1));
%    _tracking_T5(2,j+5-expXsuj(i),i)=length(find(diff(todo.(indice(j+1,:))(i)._respuestasEXP(1:30))==1));
%    _tracking_T5(3,j+5-expXsuj(i),i)=length(find(todo.(indice(j+1,:))(i)._respuestasEXP(1:29)+todo.(indice(j+1,:))(i)._respuestasEXP(2:30)==4));
%    _tracking_T5(4,j+5-expXsuj(i),i)=length(find(todo.(indice(j+1,:))(i)._respuestasEXP(1:29)+todo.(indice(j+1,:))(i)._respuestasEXP(2:30)==2));
%  endfor
%endfor
%%_tracking=[];
%%for i=[1 3 4]%1:_nSujetos
%%  todo.(indice(2,:))(i)._groupStr
%%  for j=expXsuj(i)-4:expXsuj(i)
%%    num2str(todo.(indice(j+1,:))(i)._respuestasEXP(:)')
%%  endfor
%%endfor
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%todo.exp17(1)._respuestasEXP(1:29)'+todo.exp17(1)._respuestasEXP(2:30)'
%%diff(todo.exp17(1)._respuestasEXP(1:30))

%%%%%%%%%%%%5  PARA graficar las frecuencias de las secuencias  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%sum(squeeze(sum(_tracking_T3(:,:,[1 3 4]),2)),2)
%sum(squeeze(sum(_tracking_T4(:,:,[1 3 4]),2)),2)
%sum(squeeze(sum(_tracking_T5(:,:,[1 3 4]),2)),2)
clear all;close all;
load('secuencias_T3');
load('secuencias_T4_5');
load('secuencias_T3_ideales');
load('secuencias_T3');
load('secuencias_T5_ideales');
load('secuencias_T4_5');
exp_T3=squeeze(sum(_tracking_T3(:,:,[1 3 4]),2));
exp_T4=squeeze(sum(_tracking_T4(:,:,[1 3 4]),2));
exp_T5=squeeze(sum(_tracking_T5(:,:,[1 3 4]),2));

%squeeze(_tracking_T3(:,:,[1 3 4])(1,:))

cd_T3=jackknife(@sem_dep,squeeze((_tracking_T3(:,:,[1 3 4])/n(1))(1,:)));
dc_T3=jackknife(@sem_dep,squeeze((_tracking_T3(:,:,[1 3 4])/n(1))(2,:)));
cc_T3=jackknife(@sem_dep,squeeze((_tracking_T3(:,:,[1 3 4])/n(1))(3,:)));
dd_T3=jackknife(@sem_dep,squeeze((_tracking_T3(:,:,[1 3 4])/n(1))(4,:)));
cd_T5=jackknife(@sem_dep,squeeze((_tracking_T5(:,:,[1 3 4])/n(1))(1,:)));
dc_T5=jackknife(@sem_dep,squeeze((_tracking_T5(:,:,[1 3 4])/n(1))(2,:)));
cc_T5=jackknife(@sem_dep,squeeze((_tracking_T5(:,:,[1 3 4])/n(1))(3,:)));
dd_T5=jackknife(@sem_dep,squeeze((_tracking_T5(:,:,[1 3 4])/n(1))(4,:)));
figure;hold on;
plot(mean(exp_T3./n,2)','ok','linewidth',3,'MarkerSize',14,'MarkerFaceColor','k');
plot(mean(exp_T5./n,2),'ob','linewidth',3,'MarkerSize',14,'MarkerFaceColor','b');
H=errorbar(mean(exp_T3./n,2)',[mean(cd_T3) mean(dc_T3) mean(cc_T3) mean(dd_T3)],'.k')
set(H,'linewidth',3);
H=errorbar(mean(exp_T5./n,2)',[mean(cd_T5) mean(dc_T5) mean(cc_T5) mean(dd_T5)],'.b')
set(H,'linewidth',3);
%wilcoxon_test
%(_tracking_T3(:,:,[1 3 4])/n(1))(1,:)
%(_tracking_T5(:,:,[1 3 4])/n(1))(1,:)))
figure;hold on;
n=sum(exp_T3,1);
h=bar([mean(exp_T3./n,2), mean(exp_T5./n,2)])
legend("T3","T5")
H=errorbar([1:4]-0.18,mean(exp_T3./n,2)',[mean(cd_T3) mean(dc_T3) mean(cc_T3) mean(dd_T3)],'.k')
set(H,'linewidth',3);
H=errorbar([1:4]+0.18,mean(exp_T5./n,2)',[mean(cd_T5) mean(dc_T5) mean(cc_T5) mean(dd_T5)],'.b')
set(H,'linewidth',3);

% Plot CC vs DD
figure;hold on;
plot((exp_T3./n)(4,:)',(exp_T3./n)(3,:)','ok','MarkerFaceColor','k','MarkerSize',15)
plot((exp_T5./n)(4,:)',(exp_T5./n)(3,:)','ob','MarkerFaceColor','b','MarkerSize',15)
xlabel("DD");
ylabel("CC")

figure;hold on;
plot(exp_T3(3,:),exp_T3(1,:),'*ob','linewidth',3,'MarkerSize',15)
plot(exp_T5(3,:),exp_T5(1,:),'*or','linewidth',3,'MarkerSize',15)

h=plot(mean(exp_T3(3,:)),mean(exp_T3(1,:)),'*ok','linewidth',3,'MarkerSize',15,'MarkerEdgeColor','k','MarkerFaceColor','k')
h=plot(mean(exp_T5(3,:)),mean(exp_T5(1,:)),'*ok','linewidth',3,'MarkerSize',15,'MarkerEdgeColor','k','MarkerFaceColor','k')
h=errorbar(mean(exp_T3(3,:)),mean(exp_T3(1,:)),sem(exp_T3(3,:)),sem(exp_T3(1,:)),'~>k')
set(h,'linewidth',3);
h=errorbar(mean(exp_T5(3,:)),mean(exp_T5(1,:)),sem(exp_T5(3,:)),sem(exp_T5(1,:)),'~>k')
set(h,'linewidth',3);
h=plot(_idealSujeto_T3(3,1),_idealSujeto_T3(2,1),'*om','linewidth',3,'MarkerSize',15,'MarkerEdgeColor','k','MarkerFaceColor','k')
h=plot(mean(exp_T5(3,:)),mean(exp_T5(1,:)),'*ok','linewidth',3,'MarkerSize',15,'MarkerEdgeColor','k','MarkerFaceColor','k')



aux_T3=[_tracking_T3(:,:,[1]) _tracking_T3(:,:,[3]) _tracking_T3(:,:,[4])];
aux_T5=[_tracking_T5(:,:,[1]) _tracking_T5(:,:,[3]) _tracking_T5(:,:,[4])];
figure;hold on;
scatter(mean(aux_T3(3,:)),mean(aux_T3(1,:)),200,'*ob','filled','linewidth',3)
scatter(mean(aux_T5(3,:)),mean(aux_T5(1,:)),200,'*or','filled','linewidth',3)
scatter(aux_T3(3,:),aux_T3(1,:),200,'*ob','linewidth',2)
scatter(aux_T5(3,:),aux_T5(1,:),200,'*or','linewidth',2)

h=errorbar(mean(aux_T3(3,:)),mean(aux_T3(1,:)),sem(aux_T3(3,:)),sem(aux_T3(1,:)),'~>b')
set(h,'linewidth',3);
h=errorbar(mean(aux_T5(3,:)),mean(aux_T5(1,:)),sem(aux_T5(3,:)),sem(aux_T5(1,:)),'~>r')
set(h,'linewidth',3);

% T=3 
load('datos_indice_T3');
rw_T3=food; 
to_T3=_timeOut;
fin_T3=[18 27 18 18 27 27];foodMax_T3=45;

% T=4
load('datos_indice_T5');
rw_T5=food; 
to_T5=_timeOut;
fin_T5=[17 27 17 17 27 27];foodMax_T5=60;

I_T3= (rw_T3(fin_T3-4:fin_T3)-to_T3(fin_T3-4:fin_T3))/(rw_T3(fin_T3-4:fin_T3)+to_T3(fin_T3-4:fin_T3));
I_T5= (rw_T5(fin_T5-4:fin_T5)-to_T5(fin_T5-4:fin_T5))/(rw_T5(fin_T5-4:fin_T5)+to_T5(fin_T5-4:fin_T5));



aux_T3=reshape(_tracking_T3(4,:,[1 3 4]),1,15)
aux_T5=reshape(_tracking_T5(4,:,[1 3 4]),1,15)
t_test_2(aux_T3,aux_T5);
ranksum
