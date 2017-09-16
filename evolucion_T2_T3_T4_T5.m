load '/home/guille/Documents/github_Repository/experimento/Experimento---iPD/ExtraerDatos/datos_coop_reward_T2.mat';
load '/home/guille/Documents/github_Repository/experimento/Experimento---iPD/ExtraerDatos/datos_coopmutua_T2.mat';

load('/home/guille/Documents/github_Repository/experimento/Experimento-Meli--iPD/datos_coop_reward_T3.mat');
load('/home/guille/Documents/github_Repository/experimento/Experimento-Meli--iPD/datos_coopmutua_T3.mat');

load('/home/guille/Documents/github_Repository/experimento/Experimento-Meli--iPD/datos_coop_reward_T4.mat');
load('/home/guille/Documents/github_Repository/experimento/Experimento-Meli--iPD/datos_coopmutua_T4.mat');


fin=[21 33 23 23 23 31 23 50 31 29 33 23];
figure();
hold on;
foodMax=30;
% i=1;plot(promediosC_T2(fin(i)-9:fin(i),i),'r','linewidth',2)
% i=3;plot(promediosC_T2(fin(i)-9:fin(i),i),'r','linewidth',2)
% i=7;plot(promediosC_T2(fin(i)-9:fin(i),i),'r','linewidth',2)
% i=8;plot(promediosC_T2(fin(i)-9:fin(i),i),'r','linewidth',2)
% i=9;plot(promediosC_T2(fin(i)-9:fin(i),i),'r','linewidth',2)
% i=10;plot(promediosC_T2(fin(i)-9:fin(i),i),'r','linewidth',2)
% i=11;plot(promediosC_T2(fin(i)-9:fin(i),i),'r','linewidth',2)
% i=12;plot(promediosC_T2(fin(i)-9:fin(i),i),'r','linewidth',2)

% plot(mean(foodMax*foodMedia_T2([1 3 7 8 9 10 11 12])),mean(mediaXsujeto_T2([1 3 7 8 9 10 11 12])),200,'r','filled','linewidth',3)
% plot(mean(foodMax*foodMedia_T2([1 3 7 8 9 10 11 12])),mean(mediaXsujeto_T2([1 3 7 8 9 10 11 12])),220,'k','linewidth',1)
% ylabel('Cooperation Mutua');
% xlabel('Reward per session');

puntos=[];aux1=[];
puntosSem=[];
% T=3
fin=[18 27 18 18 27 27];foodMax=45;
i=1;aux1(1)=mean(promediosC_T3(1:4,i));
i=3;aux1(2)=mean(promediosC_T3(1:4,i));
i=4;aux1(3)=mean(promediosC_T3(1:4,i));
puntosSem(1)=std(aux1)/sqrt(length(aux1));
puntos(1)=mean(aux1);
i=1;aux1(1)=mean(promediosC_T3(fin(i)-4:fin(i),i))
i=3;aux1(2)=mean(promediosC_T3(fin(i)-4:fin(i),i))
i=4;aux1(3)=mean(promediosC_T3(fin(i)-4:fin(i),i))
puntos(2)=mean(aux1);
puntosSem(2)=std(aux1)/sqrt(length(aux1));
% T=4
fin=[17 27 17 17 27 27];foodMax=60;
i=1;aux1(1)=mean(promediosC_T4(11-4:11,i))
i=3;aux1(2)=mean(promediosC_T4(11-4:11,i))
i=4;aux1(3)=mean(promediosC_T4(11-4:11,i))
puntos(3)=mean(aux1);
puntosSem(3)=std(aux1)/sqrt(length(aux1));
i=1;aux1(1)=mean(promediosC_T4(fin(i)-4:fin(i),i))
i=3;aux1(2)=mean(promediosC_T4(fin(i)-4:fin(i),i))
i=4;aux1(3)=mean(promediosC_T4(fin(i)-4:fin(i),i))
puntos(4)=mean(aux1);
puntosSem(4)=std(aux1)/sqrt(length(aux1));

errorbar(puntos,puntosSem,'.k','Marker','o','MarkerSize',12,...
    'MarkerEdgeColor','k','MarkerFaceColor',[0.5,0.5,0.5],'linewidth',2)
plot(puntos,'--k');
axis([0.85 4.15 0.4 1]);
ylabel('Cooperation Mean','fontSize',20);
xlabel('T3 - T4 - T5');
hold off;
%%%%%%%%%%%%%
% fin=[21 33 23 23 23 31 23 50 31 29 33 23];
% %figure();
% hold on;
% puntos=[];aux1=[];
% puntosSem=[];
% % T=3
% fin=[18 27 18 18 27 27];foodMax=45;
% i=1;aux1(1)=mean(R2_T3(i,1:4));
% i=3;aux1(2)=mean(R2_T3(i,1:4));
% i=4;aux1(3)=mean(R2_T3(i,1:4));
% puntosSem(1)=std(aux1)/sqrt(length(aux1));
% puntos(1)=mean(aux1);
% i=1;aux1(1)=mean(R2_T3(i,fin(i)-4:fin(i)))
% i=3;aux1(2)=mean(R2_T3(i,fin(i)-4:fin(i)))
% i=4;aux1(3)=mean(R2_T3(i,fin(i)-4:fin(i)))
% puntos(2)=mean(aux1);
% puntosSem(2)=std(aux1)/sqrt(length(aux1));
% % T=4
% fin=[17 27 17 17 27 27];foodMax=60;
% i=1;aux1(1)=mean(R2_T4(i,11-4:11))
% i=3;aux1(2)=mean(R2_T4(i,11-4:11))
% i=4;aux1(3)=mean(R2_T4(i,11-4:11))
% puntos(3)=mean(aux1);
% puntosSem(3)=std(aux1)/sqrt(length(aux1));
% i=1;aux1(1)=mean(R2_T4(i,fin(i)-4:fin(i)))
% i=3;aux1(2)=mean(R2_T4(i,fin(i)-4:fin(i)))
% i=4;aux1(3)=mean(R2_T4(i,fin(i)-4:fin(i)))
% puntos(4)=mean(aux1);
% puntosSem(4)=std(aux1)/sqrt(length(aux1));
% 
% errorbar(puntos,puntosSem,'.b','Marker','o','MarkerSize',12,...
%     'MarkerEdgeColor','b','MarkerFaceColor',[0.5,0.5,0.5],'linewidth',2)
% plot(puntos,'--b');
% axis([0.85 4.15 0.4 1]);
% ylabel('Cooperation Mean','fontSize',20);
% xlabel('T3 - T4 - T5');
% hold off;

%%%%% SIGNIFICANCIA %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5
aux=[];
i=1;aux=[aux promediosC_T3(1:5,i)];
i=3;aux=[aux promediosC_T3(1:5,i)];
i=4;aux=[aux promediosC_T3(1:5,i)];
fin=[18 27 18 18 27 27];
aux1=[];
i=1;aux1=promediosC_T3(fin(i)-4:fin(i),i);
i=3;aux1=[aux1 promediosC_T3(fin(i)-4:fin(i),i)];
i=4;aux1=[aux1 promediosC_T3(fin(i)-4:fin(i),i)];
fin=[17 27 17 17 27 27];
aux2=[];
i=1;aux2=promediosC_T4(11-4:11,i);
i=3;aux2=[aux2 promediosC_T4(11-4:11,i)];
i=4;aux2=[aux2 promediosC_T4(11-4:11,i)]
aux3=[];
i=1;aux3=promediosC_T4(fin(i)-4:fin(i),i);
i=3;aux3=[aux3 promediosC_T4(fin(i)-4:fin(i),i)];
i=4;aux3=[aux3 promediosC_T4(fin(i)-4:fin(i),i)];

signtest([aux(1,:) aux(2,:) aux(3,:) aux(4,:) aux(5,:)],[aux1(1,:) aux1(2,:) aux1(3,:) aux1(4,:) aux1(5,:)])
signtest([aux1(1,:) aux1(2,:) aux1(3,:) aux1(4,:) aux1(5,:)],[aux2(1,:) aux2(2,:) aux2(3,:) aux2(4,:) aux2(5,:)])
signtest([aux2(1,:) aux2(2,:) aux2(3,:) aux2(4,:) aux2(5,:)],[aux3(1,:) aux3(2,:) aux3(3,:) aux3(4,:) aux3(5,:)])
signtest([aux1(1,:) aux1(2,:) aux1(3,:) aux1(4,:) aux1(5,:)],[aux3(1,:) aux3(2,:) aux3(3,:) aux3(4,:) aux3(5,:)])
