% Cargar datos de experimento R=1 T=3
%load datos_exp_R1T3;
%i=6;
figure;
sujetos=[1 3 4];
sujetos=[2 5 6];
_mediaTimeXsujetoEXP1=[];
_semTimeXsujetoEXP1=[];
_mediaTimeXsujetoEXP2=[];
_semTimeXsujetoEXP2=[];

for i=sujetos
  tiempos=[]
  for j=expXsuj(i)-4:expXsuj(i)
  %for j=1:5
    aux=mean(todo.(indice(j+1,:))(i)._reloj(2,1:15));
    aux2=mean(todo.(indice(j+1,:))(i)._reloj(2,16:30));
    tiempos=[tiempos [aux ; aux2]];
  endfor
  _mediaTimeXsujetoEXP1=[_mediaTimeXsujetoEXP1; tiempos(1,:)];
  _mediaTimeXsujetoEXP2=[_mediaTimeXsujetoEXP2; tiempos(2,:)];
%  _semTimeXsujeto=[ _semTimeXsujeto std(tiempos,2)./sqrt(5) ]
  %subplot(2,3,i);
  %scatter([ones(1,length(sujetos)) 2*ones(1,length(sujetos))], [tiempos(1,sujetos) tiempos(2,sujetos)],100,'linewidth',2) ;
  %axis([0.5 2.5 35 45])
endfor



figure;hold on;
for k=1:5
    plot([ones(1,1) 2*ones(1,1)], [tiempos(1,k) tiempos(2,k)],'-ok','linewidth',2,'MarkerSize',10)
    axis([0.5 2.5 35 45])
endfor

_semTimeXsujetoEXP1=std(_mediaTimeXsujetoEXP1')./length(5)
_meanTimeXsujetoEXP1=mean(_mediaTimeXsujetoEXP1,2);
_semTimeXsujetoEXP2=std(_mediaTimeXsujetoEXP2')./length(5)
_meanTimeXsujetoEXP2=mean(_mediaTimeXsujetoEXP2,2);
figure;hold on;
for i=1:length(sujetos)
  plot([ones(length(sujetos),1) 2*ones(length(sujetos),1)], [ _meanTimeXsujetoEXP1(i) _meanTimeXsujetoEXP2(i)],'-ob','linewidth',2,'MarkerSize',10);
  h=errorbar([ones(1,1) 2*ones(1,1)], [_meanTimeXsujetoEXP1(i) _meanTimeXsujetoEXP2(i)], [_semTimeXsujetoEXP1(i) _semTimeXsujetoEXP2(i)])
  set(h,'linewidth',2,'markerSize',10);
  axis([0.5 2.5 35 45])
endfor

