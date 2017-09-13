
load '/home/guille/Documents/github_Repository/experimento/Experimento---iPD/ExtraerDatos/datos_coop_reward_T2.mat';

load('/home/guille/Documents/github_Repository/experimento/Experimento-Meli--iPD/datos_coop_reward_T3.mat');

load('/home/guille/Documents/github_Repository/experimento/Experimento-Meli--iPD/datos_coop_reward_T4.mat');

%timeOut_T4(18,4)=timeOut_T4(15,4)+timeOut_T4(16,4)+timeOut_T4(17,4)/3;
ini=[];
fin=[21 33 23 23 23 31 23 50 31 29 33 23];
figure();
hold on;
foodMax=30;
%scatter(mediaXsujeto_T2([1 3 7 8 9 10 11 12]),foodMax*foodMedia_T2([1 3 7 8 9 10 11 12]),200,'r','filled','linewidth',3)
scatter(foodMax*foodMedia_T2([1 3 7 8 9 10 11 12]),mediaXsujeto_T2([1 3 7 8 9 10 11 12]),200,'r','filled','linewidth',3)
ylabel('Cooperation');
xlabel('Reward per session');
%scatter(mediaXsujeto_T2([2 4 5 6]),foodMax*foodMedia_T2([2 4 5 6]),200,'b','filled','linewidth',3)
% i=1;scatter(mediaXsujeto_T2,foodMedia_T2,200,'r','linewidth',3)
% i=2;scatter(mediaXsujeto_T2,foodMedia_T2,200,'b','fill','linewidth',3)
% i=3;scatter(mediaXsujeto_T2,foodMedia_T2,200,'r','linewidth',3)
% i=4;scatter(mediaXsujeto_T2,foodMedia_T2,200,'b','fill','linewidth',3)
% i=5;scatter(mediaXsujeto_T2,foodMedia_T2,200,'b','fill','linewidth',3)
% i=6;scatter(mediaXsujeto_T2,foodMedia_T2,200,'b','fill','linewidth',3)
% i=7;scatter(mediaXsujeto_T2,foodMedia_T2,200,'r','linewidth',3)
% i=8;scatter(mediaXsujeto_T2,foodMedia_T2,200,'r','linewidth',3)
% i=9;scatter(mediaXsujeto_T2,foodMedia_T2,200,'r','linewidth',3)
% i=10;scatter(mediaXsujeto_T2,foodMedia_T2,200,'r','linewidth',3)
% i=11;scatter(mediaXsujeto_T2,foodMedia_T2,200,'r','linewidth',3)
%i=12;scatter(mediaXsujeto_T2,foodMedia_T2,200,'r','linewidth',3)
% title('Solo experimento R1 T2 P4 S8');
% xlabel('Rojo=COOP Azul=NOCOOP');
% T=3
fin=[18 27 18 18 27 27];
timeoutMAX=270;
foodMax=45;
coopMAX=30;
i=1;scatter(mediaXsujeto_T3([1 3 4]),foodMedia_T3([1 3 4])*foodMax,200,'m','linewidth',3)
% T=4
fin=[17 27 17 17 27 27];
foodMax=60;
i=1;scatter(mediaXsujeto_T4([1 3 4]),foodMedia_T4([1 3 4])*foodMax,200,'m','fill','linewidth',3)

% title('Experimento T aumentado T=3 -> T=4');
% xlabel('vacio = T=3 llenos= T=4');
%plot([0 165],[25 35],'--k','linewidth',3)
hold off;