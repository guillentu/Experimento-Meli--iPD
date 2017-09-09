%-------------------------------------------------------------------
%------- 


%_txtSujetos=["1A";"2A";"3A";"4A";"5A";"6A";"7A";"8A";"9A";"10A";"3B";"4B"];
_txtSujetos=["1S";"2S";"1M";"2M";"1T";"2T"];
% PORCENTAJE DE COOPERACION
_nSujetos=6;

_coop=zeros(1,_nSujetos);
_cooperacion=[];
_nada=[];
_nadaAux=zeros(1,_nSujetos);
_trialIni=1;
_trialFin=30;
inicio=1;
fin=0;
datos=zeros(2,fin);

expXsuj=zeros(1,_nSujetos);
for j=inicio:(numfields(todo))
  for i=1:length(todo.(indice(j+1,:)))
    if length(todo.(indice(j+1,:))(i)._groupStr)!=0
      expXsuj(i)++;
    endif
  endfor
endfor

% se promedia solo los que siguen con IPD
fin=max(expXsuj);
for j=inicio:fin
  _coop=zeros(1,_nSujetos);
  _nadaAux=zeros(1,_nSujetos); 
  for i=1:_nSujetos
    if expXsuj(i)>=j
      _coop(i)=length(find(todo.(indice(j+1,:))(i)._respuestasEXP(_trialIni:_trialFin)==2));
    endif
  endfor
  _cooperacion=[_cooperacion; _coop];
  for i=_nSujetos
    if expXsuj(i)>=j
      _nadaAux(i)=length(find(todo.(indice(j+1,:))(i)._respuestasEXP(_trialIni:_trialFin)==0));
    endif
  endfor
  _nada=[_nada; _nadaAux];
endfor

%_cooperacion=_cooperacion';
_trialsOK=30*ones(length([inicio:fin]),_nSujetos);
_promediosC=zeros(length([inicio:fin]),_nSujetos);

_promediosC=_cooperacion./(_trialsOK-_nada);

_media=sum(_promediosC');%/_nSujetos; % CHEQUEAR MEDIA con menos sujetos

inicioAux=inicio;
finAux=fin;
for j=inicio:fin
  _media(j)=_media(j)/length(find(expXsuj>=j));
endfor


%   Promedio total de las ultimas 10 sesiones --------------------------------------
_mediaXsujeto=zeros(1,_nSujetos);
_medianaXsujeto=zeros(1,_nSujetos);
_stdXsujeto=zeros(1,_nSujetos);
for i=1:_nSujetos
  ultimo=numfields(matricesQxExp.(indiceSujeto(i,:)));
  primero=ultimo-_ultimosX+1;
  _mediaXsujeto(i)=mean(_promediosC(primero:ultimo,i));
  _mediaFallasXsujeto(i)=mean(_nada(primero:ultimo,i));
  _medianaXsujeto(i)=median(_promediosC(primero:ultimo,i));
  _stdXsujeto(i)=sem(_promediosC(primero:ultimo,i));
endfor 
figure; 
txt_1="Sujetos 1S-2S-1M-2M-1T-2T";
h=errorbar([1:_nSujetos],_mediaXsujeto, _stdXsujeto,'*c');
set (h, "linewidth", 3);
hh=xlabel(txt_1);set(hh, "fontsize", 14);
hh=ylabel("% de palanca C");set(hh, "fontsize", 14);
hh=title("Media - Porcentaje de eleccion de palanca Cooperar");set(hh, "fontsize", 14);
hold on
bar([1:_nSujetos],_mediaXsujeto);
h2=plot([1:_nSujetos],_criterio*ones(1,_nSujetos),'--r');
set (h2, "linewidth", 3);
plot([1:_nSujetos],.5*ones(1,_nSujetos),'--k');
hold off

%figure; 
%txt_1="Sujetos 1S-1M-2M";
%h=errorbar([1 4],_mediaXsujeto([1 3 4]), _stdXsujeto([1 3 4]),'*c');
%set (h, "linewidth", 3);
%hh=xlabel(txt_1);set(hh, "fontsize", 14);
%hh=ylabel("% de palanca C");set(hh, "fontsize", 14);
%hh=title( strcat("Media - Porcentaje de eleccion de palanca Cooperar",num2str(_criterio)));set(hh, "fontsize", 14);
%hold on
%bar([1 3 4],_mediaXsujeto([1 3 4]));
%h2=plot([1 3 4],_criterio*ones(1,3),'--r');
%set (h2, "linewidth", 3);
%plot([1 3 4],.5*ones(1,3),'--k');
%hold off

figure; 
h=errorbar([1:_nSujetos],_medianaXsujeto, _stdXsujeto,'*c');
set (h, "linewidth", 3);
hh=xlabel(txt_1);set(hh, "fontsize", 14);
hh=ylabel("% de palanca C");set(hh, "fontsize", 14);
hh=title("Mediana - Porcentaje de eleccion de palanca Cooperar");set(hh, "fontsize", 14);
hold on
bar([1:_nSujetos],_medianaXsujeto);
h2=plot([1:_nSujetos],_criterio*ones(1,_nSujetos),'--r');
set (h2, "linewidth", 3);
plot([1:_nSujetos],.5*ones(1,_nSujetos),'--k');
hold off

