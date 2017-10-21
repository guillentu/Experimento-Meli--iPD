
load '/home/guille/Documents/github_Repository/experimento/Experimento---iPD/ExtraerDatos/datos_coop_reward_T2.mat';
load '/home/guille/Documents/github_Repository/experimento/Experimento---iPD/ExtraerDatos/datos_coopmutua_T2.mat';

load('/home/guille/Documents/github_Repository/experimento/Experimento-Meli--iPD/datos_coop_reward_T3.mat');
load('/home/guille/Documents/github_Repository/experimento/Experimento-Meli--iPD/datos_coopmutua_T3.mat');

load('/home/guille/Documents/github_Repository/experimento/Experimento-Meli--iPD/datos_coop_reward_T4.mat');
load('/home/guille/Documents/github_Repository/experimento/Experimento-Meli--iPD/datos_coopmutua_T4.mat');

%timeOut_T4(18,4)=timeOut_T4(15,4)+timeOut_T4(16,4)+timeOut_T4(17,4)/3;
ini=[];
fin=[21 33 23 23 23 31 23 50 31 29 33 23];
figure();
hold on;
R2_T2=R2_T2';
timeOutMedia_T2=timeOutMedia_T2';
foodMax=30;
%scatter(mediaXsujeto_T2([1 3 7 8 9 10 11 12]),foodMax*foodMedia_T2([1 3 7 8 9 10 11 12]),200,'r','filled','linewidth',3)
i=1;scatter(foodMax*food_T2(fin(i)-9:fin(i),i),R2_T2(fin(i)-9:fin(i),i),150,'r','linewidth',2)
%i=2;scatter(foodMax*food_T2(fin(i)-9:fin(i),i),R2_T2(fin(i)-9:fin(i),i),200,'b','fill','linewidth',3)
i=3;scatter(foodMax*food_T2(fin(i)-9:fin(i),i),R2_T2(fin(i)-9:fin(i),i),150,'r','linewidth',2)
%i=4;scatter(foodMax*food_T2(fin(i)-9:fin(i),i),R2_T2(fin(i)-9:fin(i),i),200,'b','fill','linewidth',3)
%i=5;scatter(foodMax*food_T2(fin(i)-9:fin(i),i),R2_T2(fin(i)-9:fin(i),i),200,'b','fill','linewidth',3)
%i=6;scatter(foodMax*food_T2(fin(i)-9:fin(i),i),R2_T2(fin(i)-9:fin(i),i),200,'b','fill','linewidth',3)
i=7;scatter(foodMax*food_T2(fin(i)-9:fin(i),i),R2_T2(fin(i)-9:fin(i),i),150,'r','linewidth',2)
i=8;scatter(foodMax*food_T2(fin(i)-9:fin(i),i),R2_T2(fin(i)-9:fin(i),i),150,'r','linewidth',2)
i=9;scatter(foodMax*food_T2(fin(i)-9:fin(i),i),R2_T2(fin(i)-9:fin(i),i),150,'r','linewidth',2)
i=10;scatter(foodMax*food_T2(fin(i)-9:fin(i),i),R2_T2(fin(i)-9:fin(i),i),150,'r','linewidth',2)
i=11;scatter(foodMax*food_T2(fin(i)-9:fin(i),i),R2_T2(fin(i)-9:fin(i),i),150,'r','linewidth',2)
i=12;scatter(foodMax*food_T2(fin(i)-9:fin(i),i),R2_T2(fin(i)-9:fin(i),i),150,'r','linewidth',2)

scatter(mean(foodMax*foodMedia_T2([1 3 7 8 9 10 11 12])),mean(R_mean_T2([1 3 7 8 9 10 11 12])),200,'r','filled','linewidth',3)
scatter(mean(foodMax*foodMedia_T2([1 3 7 8 9 10 11 12])),mean(R_mean_T2([1 3 7 8 9 10 11 12])),220,'k','linewidth',1)
ylabel('Cooperation Mutua');
xlabel('Reward per session');
%scatter(mediaXsujeto_T2([2 4 5 6]),foodMax*foodMedia_T2([2 4 5 6]),200,'b','filled','linewidth',3)



% title('Solo experimento R1 T2 P4 S8');
% xlabel('Rojo=COOP Azul=NOCOOP');
% T=3
fin=[18 27 18 18 27 27];
R2_T3=R2_T3';
timeoutMAX=270;
foodMax=45;
i=1;scatter(foodMax*food_T3(fin(i)-9:fin(i),i),R2_T3(fin(i)-9:fin(i),i),150,'g','linewidth',2)
i=3;scatter(foodMax*food_T3(fin(i)-9:fin(i),i),R2_T3(fin(i)-9:fin(i),i),150,'g','linewidth',2)
i=4;scatter(foodMax*food_T3(fin(i)-9:fin(i),i),R2_T3(fin(i)-9:fin(i),i),150,'g','linewidth',2)

scatter(mean(foodMedia_T3([1 3 4])*foodMax),mean(R_mean_T3([1 3 4])),200,'g','filled','linewidth',3);
scatter(mean(foodMedia_T3([1 3 4])*foodMax),mean(R_mean_T3([1 3 4])),220,'k','linewidth',1);
% T=4
fin=[17 27 17 17 27 27];
R2_T4=R2_T4';
foodMax=60;
i=1;scatter(foodMax*food_T4(fin(i)-9:fin(i),i),R2_T4(fin(i)-9:fin(i),i),150,'b','linewidth',2)
i=3;scatter(foodMax*food_T4(fin(i)-9:fin(i),i),R2_T4(fin(i)-9:fin(i),i),150,'b','linewidth',2)
i=4;scatter(foodMax*food_T4(fin(i)-9:fin(i),i),R2_T4(fin(i)-9:fin(i),i),150,'b','linewidth',2)

i=1;scatter(mean(foodMedia_T4([1 3 4])*foodMax),mean(R_mean_T4([1 3 4])),200,'b','fill','linewidth',3)
i=1;scatter(mean(foodMedia_T4([1 3 4])*foodMax),mean(R_mean_T4([1 3 4])),220,'k','linewidth',1)
% title('Experimento T aumentado T=3 -> T=4');
% xlabel('vacio = T=3 llenos= T=4');
%plot([0 165],[25 35],'--k','linewidth',3)
hold off;



fin=[21 33 23 23 23 31 23 50 31 29 33 23];
figure();
hold on;
foodMax=30;
i=1;scatter(mean(foodMax*food_T2(fin(i)-9:fin(i),i)),mean(R2_T2(fin(i)-9:fin(i),i)),150,'r','linewidth',2)
i=3;scatter(mean(foodMax*food_T2(fin(i)-9:fin(i),i)),mean(R2_T2(fin(i)-9:fin(i),i)),150,'r','linewidth',2)
i=7;scatter(mean(foodMax*food_T2(fin(i)-9:fin(i),i)),mean(R2_T2(fin(i)-9:fin(i),i)),150,'r','linewidth',2)
i=8;scatter(mean(foodMax*food_T2(fin(i)-9:fin(i),i)),mean(R2_T2(fin(i)-9:fin(i),i)),150,'r','linewidth',2)
i=9;scatter(mean(foodMax*food_T2(fin(i)-9:fin(i),i)),mean(R2_T2(fin(i)-9:fin(i),i)),150,'r','linewidth',2)
i=10;scatter(mean(foodMax*food_T2(fin(i)-9:fin(i),i)),mean(R2_T2(fin(i)-9:fin(i),i)),150,'r','linewidth',2)
i=11;scatter(mean(foodMax*food_T2(fin(i)-9:fin(i),i)),mean(R2_T2(fin(i)-9:fin(i),i)),150,'r','linewidth',2)
i=12;scatter(mean(foodMax*food_T2(fin(i)-9:fin(i),i)),mean(R2_T2(fin(i)-9:fin(i),i)),150,'r','linewidth',2)

scatter(mean(foodMax*foodMedia_T2([1 3 7 8 9 10 11 12])),mean(R_mean_T2([1 3 7 8 9 10 11 12])),200,'r','filled','linewidth',3)
scatter(mean(foodMax*foodMedia_T2([1 3 7 8 9 10 11 12])),mean(R_mean_T2([1 3 7 8 9 10 11 12])),220,'k','linewidth',1)
ylabel('Cooperation Mutua');
xlabel('Reward per session');

% T=3
fin=[18 27 18 18 27 27];
foodMax=45;
i=1;scatter(mean(foodMax*food_T3(fin(i)-9:fin(i),i)),mean(R2_T3(fin(i)-9:fin(i),i)),150,'g','linewidth',2)
i=3;scatter(mean(foodMax*food_T3(fin(i)-9:fin(i),i)),mean(R2_T3(fin(i)-9:fin(i),i)),150,'g','linewidth',2)
i=4;scatter(mean(foodMax*food_T3(fin(i)-9:fin(i),i)),mean(R2_T3(fin(i)-9:fin(i),i)),150,'g','linewidth',2)

scatter(mean(foodMedia_T3([1 3 4])*foodMax),mean(R_mean_T3([1 3 4])),200,'g','filled','linewidth',3);
scatter(mean(foodMedia_T3([1 3 4])*foodMax),mean(R_mean_T3([1 3 4])),220,'k','linewidth',1);
% T=4
fin=[17 27 17 17 27 27];
foodMax=60;
i=1;scatter(mean(foodMax*food_T4(fin(i)-9:fin(i),i)),mean(R2_T4(fin(i)-9:fin(i),i)),150,'b','linewidth',2)
i=3;scatter(mean(foodMax*food_T4(fin(i)-9:fin(i),i)),mean(R2_T4(fin(i)-9:fin(i),i)),150,'b','linewidth',2)
i=4;scatter(mean(foodMax*food_T4(fin(i)-9:fin(i),i)),mean(R2_T4(fin(i)-9:fin(i),i)),150,'b','linewidth',2)

i=1;scatter(mean(foodMedia_T4([1 3 4])*foodMax),mean(R_mean_T4([1 3 4])),200,'b','fill','linewidth',3)
i=1;scatter(mean(foodMedia_T4([1 3 4])*foodMax),mean(R_mean_T4([1 3 4])),220,'k','linewidth',1)
% title('Experimento T aumentado T=3 -> T=4');
% xlabel('vacio = T=3 llenos= T=4');
%plot([0 165],[25 35],'--k','linewidth',3)
hold off;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5
fin=[21 33 23 23 23 31 23 50 31 29 33 23];
figure();
hold on;
foodMax=30;
i=1;scatter(mean(foodMax*food_T2(fin(i)-9:fin(i),i)),mean(promediosC_T2(fin(i)-9:fin(i),i)),150,'r','linewidth',2)
i=3;scatter(mean(foodMax*food_T2(fin(i)-9:fin(i),i)),mean(promediosC_T2(fin(i)-9:fin(i),i)),150,'r','linewidth',2)
i=7;scatter(mean(foodMax*food_T2(fin(i)-9:fin(i),i)),mean(promediosC_T2(fin(i)-9:fin(i),i)),150,'r','linewidth',2)
i=8;scatter(mean(foodMax*food_T2(fin(i)-9:fin(i),i)),mean(promediosC_T2(fin(i)-9:fin(i),i)),150,'r','linewidth',2)
i=9;scatter(mean(foodMax*food_T2(fin(i)-9:fin(i),i)),mean(promediosC_T2(fin(i)-9:fin(i),i)),150,'r','linewidth',2)
i=10;scatter(mean(foodMax*food_T2(fin(i)-9:fin(i),i)),mean(promediosC_T2(fin(i)-9:fin(i),i)),150,'r','linewidth',2)
i=11;scatter(mean(foodMax*food_T2(fin(i)-9:fin(i),i)),mean(promediosC_T2(fin(i)-9:fin(i),i)),150,'r','linewidth',2)
i=12;scatter(mean(foodMax*food_T2(fin(i)-9:fin(i),i)),mean(promediosC_T2(fin(i)-9:fin(i),i)),150,'r','linewidth',2)

scatter(mean(foodMax*foodMedia_T2([1 3 7 8 9 10 11 12])),mean(mediaXsujeto_T2([1 3 7 8 9 10 11 12])),200,'r','filled','linewidth',3)
scatter(mean(foodMax*foodMedia_T2([1 3 7 8 9 10 11 12])),mean(mediaXsujeto_T2([1 3 7 8 9 10 11 12])),220,'k','linewidth',1)
ylabel('Cooperation Mutua');
xlabel('Reward per session');

% T=3
fin=[18 27 18 18 27 27];
foodMax=45;
i=1;scatter(mean(foodMax*food_T3(fin(i)-4:fin(i),i)),mean(promediosC_T3(fin(i)-4:fin(i),i)),150,'g','linewidth',2)
i=3;scatter(mean(foodMax*food_T3(fin(i)-4:fin(i),i)),mean(promediosC_T3(fin(i)-4:fin(i),i)),150,'g','linewidth',2)
i=4;scatter(mean(foodMax*food_T3(fin(i)-4:fin(i),i)),mean(promediosC_T3(fin(i)-4:fin(i),i)),150,'g','linewidth',2)

scatter(mean(foodMedia_T3([1 3 4])*foodMax),mean(mediaXsujeto_T3([1 3 4])),200,'g','filled','linewidth',3);
scatter(mean(foodMedia_T3([1 3 4])*foodMax),mean(mediaXsujeto_T3([1 3 4])),220,'k','linewidth',1);
% T=4
fin=[17 27 17 17 27 27];
foodMax=60;
i=1;scatter(mean(foodMax*food_T4(fin(i)-4:fin(i),i)),mean(promediosC_T4(fin(i)-4:fin(i),i)),150,'b','linewidth',2)
i=3;scatter(mean(foodMax*food_T4(fin(i)-4:fin(i),i)),mean(promediosC_T4(fin(i)-4:fin(i),i)),150,'b','linewidth',2)
i=4;scatter(mean(foodMax*food_T4(fin(i)-4:fin(i),i)),mean(promediosC_T4(fin(i)-4:fin(i),i)),150,'b','linewidth',2)

i=1;scatter(mean(foodMedia_T4([1 3 4])*foodMax),mean(mediaXsujeto_T4([1 3 4])),200,'b','fill','linewidth',3)
i=1;scatter(mean(foodMedia_T4([1 3 4])*foodMax),mean(mediaXsujeto_T4([1 3 4])),220,'k','linewidth',1)
% title('Experimento T aumentado T=3 -> T=4');
% xlabel('vacio = T=3 llenos= T=4');
%plot([0 165],[25 35],'--k','linewidth',3)
hold off;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5

fin=[21 33 23 23 23 31 23 50 31 29 33 23];
figure();
hold on;

foodMax=30;
i=1;scatter3(mean(foodMax*food_T2(fin(i)-9:fin(i),i)),mean(promediosC_T2(fin(i)-9:fin(i),i)),mean(timeOut_T2(fin(i)-9:fin(i),i)-150),150,'r','linewidth',2)
i=3;scatter3(mean(foodMax*food_T2(fin(i)-9:fin(i),i)),mean(promediosC_T2(fin(i)-9:fin(i),i)),mean(timeOut_T2(fin(i)-9:fin(i),i)-150),150,'r','linewidth',2)
i=7;scatter3(mean(foodMax*food_T2(fin(i)-9:fin(i),i)),mean(promediosC_T2(fin(i)-9:fin(i),i)),mean(timeOut_T2(fin(i)-9:fin(i),i)-150),150,'r','linewidth',2)
i=8;scatter3(mean(foodMax*food_T2(fin(i)-9:fin(i),i)),mean(promediosC_T2(fin(i)-9:fin(i),i)),mean(timeOut_T2(fin(i)-9:fin(i),i)-150),150,'r','linewidth',2)
i=9;scatter3(mean(foodMax*food_T2(fin(i)-9:fin(i),i)),mean(promediosC_T2(fin(i)-9:fin(i),i)),mean(timeOut_T2(fin(i)-9:fin(i),i)-150),150,'r','linewidth',2)
i=10;scatter3(mean(foodMax*food_T2(fin(i)-9:fin(i),i)),mean(promediosC_T2(fin(i)-9:fin(i),i)),mean(timeOut_T2(fin(i)-9:fin(i),i)-150),150,'r','linewidth',2)
i=11;scatter3(mean(foodMax*food_T2(fin(i)-9:fin(i),i)),mean(promediosC_T2(fin(i)-9:fin(i),i)),mean(timeOut_T2(fin(i)-9:fin(i),i)-150),150,'r','linewidth',2)
i=12;scatter3(mean(foodMax*food_T2(fin(i)-9:fin(i),i)),mean(promediosC_T2(fin(i)-9:fin(i),i)),mean(timeOut_T2(fin(i)-9:fin(i),i)-150),150,'r','linewidth',2)

scatter3(mean(foodMax*foodMedia_T2([1 3 7 8 9 10 11 12])),mean(mediaXsujeto_T2([1 3 7 8 9 10 11 12])),mean(timeOutMedia_T2([1 3 7 8 9 10  11 12])-150),200,'r','filled','linewidth',3)
scatter3(mean(foodMax*foodMedia_T2([1 3 7 8 9 10 11 12])),mean(mediaXsujeto_T2([1 3 7 8 9 10 11 12])),mean(timeOutMedia_T2([1 3 7 8 9 10  11 12])-150),220,'k','linewidth',1)
ylabel('Cooperation');
xlabel('Reward per session');
zlabel('Timeout');
% T=3
fin=[18 27 18 18 27 27];
foodMax=45;
i=1;scatter3(mean(foodMax*food_T3(fin(i)-9:fin(i),i)),mean(promediosC_T3(fin(i)-9:fin(i),i)),mean(270*timeOut_T3(fin(i)-9:fin(i),i)),150,'g','linewidth',2)
i=3;scatter3(mean(foodMax*food_T3(fin(i)-9:fin(i),i)),mean(promediosC_T3(fin(i)-9:fin(i),i)),mean(270*timeOut_T3(fin(i)-9:fin(i),i)),150,'g','linewidth',2)
i=4;scatter3(mean(foodMax*food_T3(fin(i)-9:fin(i),i)),mean(promediosC_T3(fin(i)-9:fin(i),i)),mean(270*timeOut_T3(fin(i)-9:fin(i),i)),150,'g','linewidth',2)

scatter3(mean(foodMedia_T3([1 3 4])*foodMax),mean(mediaXsujeto_T3([1 3 4])),mean(270*timeOutMedia_T3([1 3 4])),200,'g','filled','linewidth',3);
scatter3(mean(foodMedia_T3([1 3 4])*foodMax),mean(mediaXsujeto_T3([1 3 4])),mean(270*timeOutMedia_T3([1 3 4])),220,'k','linewidth',1);
% T=4
fin=[17 27 17 17 27 27];
foodMax=60;
i=1;scatter3(mean(foodMax*food_T4(fin(i)-9:fin(i),i)),mean(promediosC_T4(fin(i)-9:fin(i),i)),mean(270*timeOut_T4(fin(i)-9:fin(i),i)),150,'b','linewidth',2)
i=3;scatter3(mean(foodMax*food_T4(fin(i)-9:fin(i),i)),mean(promediosC_T4(fin(i)-9:fin(i),i)),mean(270*timeOut_T4(fin(i)-9:fin(i),i)),150,'b','linewidth',2)
i=4;scatter3(mean(foodMax*food_T4(fin(i)-9:fin(i),i)),mean(promediosC_T4(fin(i)-9:fin(i),i)),mean(270*timeOut_T4(fin(i)-9:fin(i),i)),150,'b','linewidth',2)

% i=1;scatter(mean(foodMax*food_T4(fin(i)-9:fin(i),i)),mean(promediosC_T4(fin(i)-9:fin(i),i)),150,'b','linewidth',2)
% i=3;scatter(mean(foodMax*food_T4(fin(i)-9:fin(i),i)),mean(promediosC_T4(fin(i)-9:fin(i),i)),150,'b','linewidth',2)
% i=4;scatter(mean(foodMax*food_T4(fin(i)-9:fin(i),i)),mean(promediosC_T4(fin(i)-9:fin(i),i)),150,'b','linewidth',2)
grid on;
i=1;scatter3(mean(foodMedia_T4([1 3 4])*foodMax),mean(mediaXsujeto_T4([1 3 4])),mean(270*timeOutMedia_T4([1 3 4])),200,'b','fill','linewidth',3)
i=1;scatter3(mean(foodMedia_T4([1 3 4])*foodMax),mean(mediaXsujeto_T4([1 3 4])),mean(270*timeOutMedia_T4([1 3 4])),220,'k','linewidth',1)
% title('Experimento T aumentado T=3 -> T=4');
% xlabel('vacio = T=3 llenos= T=4');
%plot([0 165],[25 35],'--k','linewidth',3)
hold off;

%%%% STEM 3 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5

fin=[21 33 23 23 23 31 23 50 31 29 33 23];
figure();
hold on;

foodMax=30;
i=1;stem3(mean(foodMax*food_T2(fin(i)-9:fin(i),i)),mean(promediosC_T2(fin(i)-9:fin(i),i)),mean(timeOut_T2(fin(i)-9:fin(i),i)-150),'r','linewidth',2)
i=3;stem3(mean(foodMax*food_T2(fin(i)-9:fin(i),i)),mean(promediosC_T2(fin(i)-9:fin(i),i)),mean(timeOut_T2(fin(i)-9:fin(i),i)-150),'r','linewidth',2)
i=7;stem3(mean(foodMax*food_T2(fin(i)-9:fin(i),i)),mean(promediosC_T2(fin(i)-9:fin(i),i)),mean(timeOut_T2(fin(i)-9:fin(i),i)-150),'r','linewidth',2)
i=8;stem3(mean(foodMax*food_T2(fin(i)-9:fin(i),i)),mean(promediosC_T2(fin(i)-9:fin(i),i)),mean(timeOut_T2(fin(i)-9:fin(i),i)-150),'r','linewidth',2)
i=9;stem3(mean(foodMax*food_T2(fin(i)-9:fin(i),i)),mean(promediosC_T2(fin(i)-9:fin(i),i)),mean(timeOut_T2(fin(i)-9:fin(i),i)-150),'r','linewidth',2)
i=10;stem3(mean(foodMax*food_T2(fin(i)-9:fin(i),i)),mean(promediosC_T2(fin(i)-9:fin(i),i)),mean(timeOut_T2(fin(i)-9:fin(i),i)-150),'r','linewidth',2)
i=11;stem3(mean(foodMax*food_T2(fin(i)-9:fin(i),i)),mean(promediosC_T2(fin(i)-9:fin(i),i)),mean(timeOut_T2(fin(i)-9:fin(i),i)-150),'r','linewidth',2)
i=12;stem3(mean(foodMax*food_T2(fin(i)-9:fin(i),i)),mean(promediosC_T2(fin(i)-9:fin(i),i)),mean(timeOut_T2(fin(i)-9:fin(i),i)-150),'r','linewidth',2)

i=1;scatter(foodMax*food_T2(fin(i)-9:fin(i),i),promediosC_T2(fin(i)-9:fin(i),i),50,'k','linewidth',2)
i=3;scatter(foodMax*food_T2(fin(i)-9:fin(i),i),promediosC_T2(fin(i)-9:fin(i),i),50,'k','linewidth',2)
i=7;scatter(foodMax*food_T2(fin(i)-9:fin(i),i),promediosC_T2(fin(i)-9:fin(i),i),50,'k','linewidth',2)
i=8;scatter(foodMax*food_T2(fin(i)-9:fin(i),i),promediosC_T2(fin(i)-9:fin(i),i),50,'k','linewidth',2)
i=9;scatter(foodMax*food_T2(fin(i)-9:fin(i),i),promediosC_T2(fin(i)-9:fin(i),i),50,'k','linewidth',2)
i=10;scatter(foodMax*food_T2(fin(i)-9:fin(i),i),promediosC_T2(fin(i)-9:fin(i),i),50,'k','linewidth',2)
i=11;scatter(foodMax*food_T2(fin(i)-9:fin(i),i),promediosC_T2(fin(i)-9:fin(i),i),50,'k','linewidth',2)
i=12;scatter(foodMax*food_T2(fin(i)-9:fin(i),i),promediosC_T2(fin(i)-9:fin(i),i),50,'k','linewidth',2)

%stem3(mean(foodMax*foodMedia_T2([1 3 7 8 9 10 11 12])),mean(mediaXsujeto_T2([1 3 7 8 9 10 11 12])),mean(timeOutMedia_T2([1 3 7 8 9 10  11 12])-150),'r','filled','linewidth',3)
%stem3(mean(foodMax*foodMedia_T2([1 3 7 8 9 10 11 12])),mean(mediaXsujeto_T2([1 3 7 8 9 10 11 12])),mean(timeOutMedia_T2([1 3 7 8 9 10  11 12])-150),'k','linewidth',1)
ylabel('Cooperation');
xlabel('Reward per session');
zlabel('Timeout');
% T=3
fin=[18 27 18 18 27 27];
foodMax=45;
i=1;stem3(mean(foodMax*food_T3(fin(i)-9:fin(i),i)),mean(promediosC_T3(fin(i)-9:fin(i),i)),mean(270*timeOut_T3(fin(i)-9:fin(i),i)),'g','linewidth',2)
i=3;stem3(mean(foodMax*food_T3(fin(i)-9:fin(i),i)),mean(promediosC_T3(fin(i)-9:fin(i),i)),mean(270*timeOut_T3(fin(i)-9:fin(i),i)),'g','linewidth',2)
i=4;stem3(mean(foodMax*food_T3(fin(i)-9:fin(i),i)),mean(promediosC_T3(fin(i)-9:fin(i),i)),mean(270*timeOut_T3(fin(i)-9:fin(i),i)),'g','linewidth',2)
i=2;stem3(mean(foodMax*food_T3(fin(i)-9:fin(i),i)),mean(promediosC_T3(fin(i)-9:fin(i),i)),mean(270*timeOut_T3(fin(i)-9:fin(i),i)),'g','linewidth',2)
i=5;stem3(mean(foodMax*food_T3(fin(i)-9:fin(i),i)),mean(promediosC_T3(fin(i)-9:fin(i),i)),mean(270*timeOut_T3(fin(i)-9:fin(i),i)),'g','linewidth',2)
i=6;stem3(mean(foodMax*food_T3(fin(i)-9:fin(i),i)),mean(promediosC_T3(fin(i)-9:fin(i),i)),mean(270*timeOut_T3(fin(i)-9:fin(i),i)),'g','linewidth',2)


i=1;scatter(foodMax*food_T3(fin(i)-9:fin(i),i),promediosC_T3(fin(i)-9:fin(i),i),50,'k','square','linewidth',2)
i=3;scatter(foodMax*food_T3(fin(i)-9:fin(i),i),promediosC_T3(fin(i)-9:fin(i),i),50,'k','square','linewidth',2)
i=4;scatter(foodMax*food_T3(fin(i)-9:fin(i),i),promediosC_T3(fin(i)-9:fin(i),i),50,'k','square','linewidth',2)
%stem3(mean(foodMedia_T3([1 3 4])*foodMax),mean(mediaXsujeto_T3([1 3 4])),mean(270*timeOutMedia_T3([1 3 4])),'g','filled','linewidth',3);
%stem3(mean(foodMedia_T3([1 3 4])*foodMax),mean(mediaXsujeto_T3([1 3 4])),mean(270*timeOutMedia_T3([1 3 4])),'k','linewidth',1);
% T=4
fin=[17 27 17 17 27 27];
foodMax=60;
i=1;stem3(mean(foodMax*food_T4(fin(i)-9:fin(i),i)),mean(promediosC_T4(fin(i)-9:fin(i),i)),mean(270*timeOut_T4(fin(i)-9:fin(i),i)),'b','linewidth',2)
i=3;stem3(mean(foodMax*food_T4(fin(i)-9:fin(i),i)),mean(promediosC_T4(fin(i)-9:fin(i),i)),mean(270*timeOut_T4(fin(i)-9:fin(i),i)),'b','linewidth',2)
i=4;stem3(mean(foodMax*food_T4(fin(i)-9:fin(i),i)),mean(promediosC_T4(fin(i)-9:fin(i),i)),mean(270*timeOut_T4(fin(i)-9:fin(i),i)),'b','linewidth',2)
%i=2;stem3(mean(foodMax*food_T4(fin(i)-9:fin(i),i)),mean(promediosC_T4(fin(i)-9:fin(i),i)),mean(270*timeOut_T4(fin(i)-9:fin(i),i)),'b','linewidth',2)
%i=5;stem3(mean(foodMax*food_T4(fin(i)-9:fin(i),i)),mean(promediosC_T4(fin(i)-9:fin(i),i)),mean(270*timeOut_T4(fin(i)-9:fin(i),i)),'b','linewidth',2)
%i=6;stem3(mean(foodMax*food_T4(fin(i)-9:fin(i),i)),mean(promediosC_T4(fin(i)-9:fin(i),i)),mean(270*timeOut_T4(fin(i)-9:fin(i),i)),'b','linewidth',2)
% i=1;scatter(mean(foodMax*food_T4(fin(i)-9:fin(i),i)),mean(promediosC_T4(fin(i)-9:fin(i),i)),'b','linewidth',2)
% i=3;scatter(mean(foodMax*food_T4(fin(i)-9:fin(i),i)),mean(promediosC_T4(fin(i)-9:fin(i),i)),'b','linewidth',2)
% i=4;scatter(mean(foodMax*food_T4(fin(i)-9:fin(i),i)),mean(promediosC_T4(fin(i)-9:fin(i),i)),'b','linewidth',2)

i=1;scatter(foodMax*food_T4(fin(i)-9:fin(i),i),promediosC_T4(fin(i)-9:fin(i),i),50,'k','linewidth',2)
i=3;scatter(foodMax*food_T4(fin(i)-9:fin(i),i),promediosC_T4(fin(i)-9:fin(i),i),50,'k','linewidth',2)
i=4;scatter(foodMax*food_T4(fin(i)-9:fin(i),i),promediosC_T4(fin(i)-9:fin(i),i),50,'k','linewidth',2)

grid on;
%i=1;stem3(mean(foodMedia_T4([1 3 4])*foodMax),mean(mediaXsujeto_T4([1 3 4])),mean(270*timeOutMedia_T4([1 3 4])),'b','fill','linewidth',3)
%i=1;stem3(mean(foodMedia_T4([1 3 4])*foodMax),mean(mediaXsujeto_T4([1 3 4])),mean(270*timeOutMedia_T4([1 3 4])),'k','linewidth',1)
% title('Experimento T aumentado T=3 -> T=4');
% xlabel('vacio = T=3 llenos= T=4');
%plot([0 165],[25 35],'--k','linewidth',3)
hold off;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5
fin=[21 33 23 23 23 31 23 50 31 29 33 23];
figure();
hold on;

foodMax=30;
i=1;stem(mean(foodMax*food_T2(fin(i)-9:fin(i),i)),mean(promediosC_T2(fin(i)-9:fin(i),i)),'k','filled','MarkerSize',15,'linestyle','none','linewidth',2)
i=3;stem(mean(foodMax*food_T2(fin(i)-9:fin(i),i)),mean(promediosC_T2(fin(i)-9:fin(i),i)),'k','filled','MarkerSize',15,'linestyle','none','linewidth',2)
i=7;stem(mean(foodMax*food_T2(fin(i)-9:fin(i),i)),mean(promediosC_T2(fin(i)-9:fin(i),i)),'k','filled','MarkerSize',15,'linestyle','none','linewidth',2)
i=8;stem(mean(foodMax*food_T2(fin(i)-9:fin(i),i)),mean(promediosC_T2(fin(i)-9:fin(i),i)),'k','filled','MarkerSize',15,'linestyle','none','linewidth',2)
i=9;stem(mean(foodMax*food_T2(fin(i)-9:fin(i),i)),mean(promediosC_T2(fin(i)-9:fin(i),i)),'k','filled','MarkerSize',15,'linestyle','none','linewidth',2)
i=10;stem(mean(foodMax*food_T2(fin(i)-9:fin(i),i)),mean(promediosC_T2(fin(i)-9:fin(i),i)),'k','filled','MarkerSize',15,'linestyle','none','linewidth',2)
i=11;stem(mean(foodMax*food_T2(fin(i)-9:fin(i),i)),mean(promediosC_T2(fin(i)-9:fin(i),i)),'k','filled','MarkerSize',15,'linestyle','none','linewidth',2)
i=12;stem(mean(foodMax*food_T2(fin(i)-9:fin(i),i)),mean(promediosC_T2(fin(i)-9:fin(i),i)),'k','filled','MarkerSize',15,'linestyle','none','linewidth',2)

i=1;stem3(mean(foodMax*food_T2(fin(i)-9:fin(i),i)),mean(promediosC_T2(fin(i)-9:fin(i),i)),mean(timeOut_T2(fin(i)-9:fin(i),i)-150),'r','MarkerFaceColor','r','MarkerSize',15,'linestyle',':','linewidth',2)
i=3;stem3(mean(foodMax*food_T2(fin(i)-9:fin(i),i)),mean(promediosC_T2(fin(i)-9:fin(i),i)),mean(timeOut_T2(fin(i)-9:fin(i),i)-150),'r','MarkerFaceColor','r','MarkerSize',15,'linestyle',':','linewidth',2)
i=7;stem3(mean(foodMax*food_T2(fin(i)-9:fin(i),i)),mean(promediosC_T2(fin(i)-9:fin(i),i)),mean(timeOut_T2(fin(i)-9:fin(i),i)-150),'r','MarkerFaceColor','r','MarkerSize',15,'linestyle',':','linewidth',2)
i=8;stem3(mean(foodMax*food_T2(fin(i)-9:fin(i),i)),mean(promediosC_T2(fin(i)-9:fin(i),i)),mean(timeOut_T2(fin(i)-9:fin(i),i)-150),'r','MarkerFaceColor','r','MarkerSize',15,'linestyle',':','linewidth',2)
i=9;stem3(mean(foodMax*food_T2(fin(i)-9:fin(i),i)),mean(promediosC_T2(fin(i)-9:fin(i),i)),mean(timeOut_T2(fin(i)-9:fin(i),i)-150),'r','MarkerFaceColor','r','MarkerSize',15,'linestyle',':','linewidth',2)
i=10;stem3(mean(foodMax*food_T2(fin(i)-9:fin(i),i)),mean(promediosC_T2(fin(i)-9:fin(i),i)),mean(timeOut_T2(fin(i)-9:fin(i),i)-150),'r','MarkerFaceColor','r','MarkerSize',15,'linestyle',':','linewidth',2)
i=11;stem3(mean(foodMax*food_T2(fin(i)-9:fin(i),i)),mean(promediosC_T2(fin(i)-9:fin(i),i)),mean(timeOut_T2(fin(i)-9:fin(i),i)-150),'r','MarkerFaceColor','r','MarkerSize',15,'linestyle',':','linewidth',2)
i=12;stem3(mean(foodMax*food_T2(fin(i)-9:fin(i),i)),mean(promediosC_T2(fin(i)-9:fin(i),i)),mean(timeOut_T2(fin(i)-9:fin(i),i)-150),'r','MarkerFaceColor','r','MarkerSize',15,'linestyle',':','linewidth',2)


%stem3(mean(foodMax*foodMedia_T2([1 3 7 8 9 10 11 12])),mean(mediaXsujeto_T2([1 3 7 8 9 10 11 12])),mean(timeOutMedia_T2([1 3 7 8 9 10  11 12])-150),'r','filled','linewidth',3)
%stem3(mean(foodMax*foodMedia_T2([1 3 7 8 9 10 11 12])),mean(mediaXsujeto_T2([1 3 7 8 9 10 11 12])),mean(timeOutMedia_T2([1 3 7 8 9 10  11 12])-150),'k','linewidth',1)
ylabel('Cooperation');
xlabel('Reward per session');
zlabel('Timeout');
% T=3
fin=[18 27 18 18 27 27];
foodMax=45;
i=1;stem(mean(foodMax*food_T3(fin(i)-9:fin(i),i)),mean(promediosC_T3(fin(i)-9:fin(i),i)),'k','filled','MarkerSize',15,'linestyle','none','linewidth',2)
i=3;stem(mean(foodMax*food_T3(fin(i)-9:fin(i),i)),mean(promediosC_T3(fin(i)-9:fin(i),i)),'k','filled','MarkerSize',15,'linestyle','none','linewidth',2)
i=4;stem(mean(foodMax*food_T3(fin(i)-9:fin(i),i)),mean(promediosC_T3(fin(i)-9:fin(i),i)),'k','filled','MarkerSize',15,'linestyle','none','linewidth',2)
i=2;stem(mean(foodMax*food_T3(fin(i)-9:fin(i),i)),mean(promediosC_T3(fin(i)-9:fin(i),i)),'k','filled','MarkerSize',15,'linestyle','none','linewidth',2)
i=5;stem(mean(foodMax*food_T3(fin(i)-9:fin(i),i)),mean(promediosC_T3(fin(i)-9:fin(i),i)),'k','filled','MarkerSize',15,'linestyle','none','linewidth',2)
i=6;stem(mean(foodMax*food_T3(fin(i)-9:fin(i),i)),mean(promediosC_T3(fin(i)-9:fin(i),i)),'k','filled','MarkerSize',15,'linestyle','none','linewidth',2)

i=1;stem3(mean(foodMax*food_T3(fin(i)-9:fin(i),i)),mean(promediosC_T3(fin(i)-9:fin(i),i)),mean(270*timeOut_T3(fin(i)-9:fin(i),i)),'g','MarkerFaceColor','g','MarkerSize',15,'linestyle',':','linewidth',2)
i=3;stem3(mean(foodMax*food_T3(fin(i)-9:fin(i),i)),mean(promediosC_T3(fin(i)-9:fin(i),i)),mean(270*timeOut_T3(fin(i)-9:fin(i),i)),'g','MarkerFaceColor','g','MarkerSize',15,'linestyle',':','linewidth',2)
i=4;stem3(mean(foodMax*food_T3(fin(i)-9:fin(i),i)),mean(promediosC_T3(fin(i)-9:fin(i),i)),mean(270*timeOut_T3(fin(i)-9:fin(i),i)),'g','MarkerFaceColor','g','MarkerSize',15,'linestyle',':','linewidth',2)
i=2;stem3(mean(foodMax*food_T3(fin(i)-9:fin(i),i)),mean(promediosC_T3(fin(i)-9:fin(i),i)),mean(270*timeOut_T3(fin(i)-9:fin(i),i)),'g','MarkerFaceColor','g','MarkerSize',15,'linestyle',':','linewidth',2)
i=5;stem3(mean(foodMax*food_T3(fin(i)-9:fin(i),i)),mean(promediosC_T3(fin(i)-9:fin(i),i)),mean(270*timeOut_T3(fin(i)-9:fin(i),i)),'g','MarkerFaceColor','g','MarkerSize',15,'linestyle',':','linewidth',2)
i=6;stem3(mean(foodMax*food_T3(fin(i)-9:fin(i),i)),mean(promediosC_T3(fin(i)-9:fin(i),i)),mean(270*timeOut_T3(fin(i)-9:fin(i),i)),'g','MarkerFaceColor','g','MarkerSize',15,'linestyle',':','linewidth',2)

%stem3(mean(foodMedia_T3([1 3 4])*foodMax),mean(mediaXsujeto_T3([1 3 4])),mean(270*timeOutMedia_T3([1 3 4])),'g','filled','linewidth',3);
%stem3(mean(foodMedia_T3([1 3 4])*foodMax),mean(mediaXsujeto_T3([1 3 4])),mean(270*timeOutMedia_T3([1 3 4])),'k','linewidth',1);
% T=4
fin=[17 27 17 17 27 27];
foodMax=60;
i=1;stem(mean(foodMax*food_T4(fin(i)-9:fin(i),i)),mean(promediosC_T4(fin(i)-9:fin(i),i)),'k','filled','MarkerSize',15,'linestyle','none','linewidth',2)
i=3;stem(mean(foodMax*food_T4(fin(i)-9:fin(i),i)),mean(promediosC_T4(fin(i)-9:fin(i),i)),'k','filled','MarkerSize',15,'linestyle','none','linewidth',2)
i=4;stem(mean(foodMax*food_T4(fin(i)-9:fin(i),i)),mean(promediosC_T4(fin(i)-9:fin(i),i)),'k','filled','MarkerSize',15,'linestyle','none','linewidth',2)

i=1;stem3(mean(foodMax*food_T4(fin(i)-9:fin(i),i)),mean(promediosC_T4(fin(i)-9:fin(i),i)),mean(270*timeOut_T4(fin(i)-9:fin(i),i)),'b','MarkerFaceColor','b','MarkerSize',15,'linestyle',':','linewidth',2)
i=3;stem3(mean(foodMax*food_T4(fin(i)-9:fin(i),i)),mean(promediosC_T4(fin(i)-9:fin(i),i)),mean(270*timeOut_T4(fin(i)-9:fin(i),i)),'b','MarkerFaceColor','b','MarkerSize',15,'linestyle',':','linewidth',2)
i=4;stem3(mean(foodMax*food_T4(fin(i)-9:fin(i),i)),mean(promediosC_T4(fin(i)-9:fin(i),i)),mean(270*timeOut_T4(fin(i)-9:fin(i),i)),'b','MarkerFaceColor','b','MarkerSize',15,'linestyle',':','linewidth',2)

%i=1;stem3(mean(foodMedia_T4([1 3 4])*foodMax),mean(mediaXsujeto_T4([1 3 4])),mean(270*timeOutMedia_T4([1 3 4])),'b','fill','linewidth',3)
%i=1;stem3(mean(foodMedia_T4([1 3 4])*foodMax),mean(mediaXsujeto_T4([1 3 4])),mean(270*timeOutMedia_T4([1 3 4])),'k','linewidth',1)
grid on;

hold off;


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5
fin=[21 33 23 23 23 31 23 50 31 29 33 23];
figure();
hold on;

% foodMax=30;
% i=1;stem(mean(foodMax*food_T2(fin(i)-9:fin(i),i)),mean(R2_T2(fin(i)-9:fin(i),i)),'k','filled','MarkerSize',15,'linestyle','none','linewidth',2)
% i=3;stem(mean(foodMax*food_T2(fin(i)-9:fin(i),i)),mean(R2_T2(fin(i)-9:fin(i),i)),'k','filled','MarkerSize',15,'linestyle','none','linewidth',2)
% i=7;stem(mean(foodMax*food_T2(fin(i)-9:fin(i),i)),mean(R2_T2(fin(i)-9:fin(i),i)),'k','filled','MarkerSize',15,'linestyle','none','linewidth',2)
% i=8;stem(mean(foodMax*food_T2(fin(i)-9:fin(i),i)),mean(R2_T2(fin(i)-9:fin(i),i)),'k','filled','MarkerSize',15,'linestyle','none','linewidth',2)
% i=9;stem(mean(foodMax*food_T2(fin(i)-9:fin(i),i)),mean(R2_T2(fin(i)-9:fin(i),i)),'k','filled','MarkerSize',15,'linestyle','none','linewidth',2)
% i=10;stem(mean(foodMax*food_T2(fin(i)-9:fin(i),i)),mean(R2_T2(fin(i)-9:fin(i),i)),'k','filled','MarkerSize',15,'linestyle','none','linewidth',2)
% i=11;stem(mean(foodMax*food_T2(fin(i)-9:fin(i),i)),mean(R2_T2(fin(i)-9:fin(i),i)),'k','filled','MarkerSize',15,'linestyle','none','linewidth',2)
% i=12;stem(mean(foodMax*food_T2(fin(i)-9:fin(i),i)),mean(R2_T2(fin(i)-9:fin(i),i)),'k','filled','MarkerSize',15,'linestyle','none','linewidth',2)
% 
% i=1;stem3(mean(foodMax*food_T2(fin(i)-9:fin(i),i)),mean(R2_T2(fin(i)-9:fin(i),i)),mean(timeOut_T2(fin(i)-9:fin(i),i)-150),'r','MarkerFaceColor','r','MarkerSize',15,'linestyle',':','linewidth',2)
% i=3;stem3(mean(foodMax*food_T2(fin(i)-9:fin(i),i)),mean(R2_T2(fin(i)-9:fin(i),i)),mean(timeOut_T2(fin(i)-9:fin(i),i)-150),'r','MarkerFaceColor','r','MarkerSize',15,'linestyle',':','linewidth',2)
% i=7;stem3(mean(foodMax*food_T2(fin(i)-9:fin(i),i)),mean(R2_T2(fin(i)-9:fin(i),i)),mean(timeOut_T2(fin(i)-9:fin(i),i)-150),'r','MarkerFaceColor','r','MarkerSize',15,'linestyle',':','linewidth',2)
% i=8;stem3(mean(foodMax*food_T2(fin(i)-9:fin(i),i)),mean(R2_T2(fin(i)-9:fin(i),i)),mean(timeOut_T2(fin(i)-9:fin(i),i)-150),'r','MarkerFaceColor','r','MarkerSize',15,'linestyle',':','linewidth',2)
% i=9;stem3(mean(foodMax*food_T2(fin(i)-9:fin(i),i)),mean(R2_T2(fin(i)-9:fin(i),i)),mean(timeOut_T2(fin(i)-9:fin(i),i)-150),'r','MarkerFaceColor','r','MarkerSize',15,'linestyle',':','linewidth',2)
% i=10;stem3(mean(foodMax*food_T2(fin(i)-9:fin(i),i)),mean(R2_T2(fin(i)-9:fin(i),i)),mean(timeOut_T2(fin(i)-9:fin(i),i)-150),'r','MarkerFaceColor','r','MarkerSize',15,'linestyle',':','linewidth',2)
% i=11;stem3(mean(foodMax*food_T2(fin(i)-9:fin(i),i)),mean(R2_T2(fin(i)-9:fin(i),i)),mean(timeOut_T2(fin(i)-9:fin(i),i)-150),'r','MarkerFaceColor','r','MarkerSize',15,'linestyle',':','linewidth',2)
% i=12;stem3(mean(foodMax*food_T2(fin(i)-9:fin(i),i)),mean(R2_T2(fin(i)-9:fin(i),i)),mean(timeOut_T2(fin(i)-9:fin(i),i)-150),'r','MarkerFaceColor','r','MarkerSize',15,'linestyle',':','linewidth',2)

%stem3(mean(foodMax*foodMedia_T2([1 3 7 8 9 10 11 12])),mean(mediaXsujeto_T2([1 3 7 8 9 10 11 12])),mean(timeOutMedia_T2([1 3 7 8 9 10  11 12])-150),'r','filled','linewidth',3)
%stem3(mean(foodMax*foodMedia_T2([1 3 7 8 9 10 11 12])),mean(mediaXsujeto_T2([1 3 7 8 9 10 11 12])),mean(timeOutMedia_T2([1 3 7 8 9 10  11 12])-150),'k','linewidth',1)
ylabel('Mutua');
xlabel('Reward per session');
zlabel('Timeout');
% T=3
fin=[18 27 18 18 27 27];
foodMax=45;
i=1;stem(mean(foodMax*food_T3(fin(i)-4:fin(i),i)),mean(promediosC_T3(fin(i)-4:fin(i),i)),'k','filled','MarkerSize',15,'linestyle','none','linewidth',2)
i=3;stem(mean(foodMax*food_T3(fin(i)-4:fin(i),i)),mean(promediosC_T3(fin(i)-4:fin(i),i)),'k','filled','MarkerSize',15,'linestyle','none','linewidth',2)
i=4;stem(mean(foodMax*food_T3(fin(i)-4:fin(i),i)),mean(promediosC_T3(fin(i)-4:fin(i),i)),'k','filled','MarkerSize',15,'linestyle','none','linewidth',2)
%i=2;stem(mean(foodMax*food_T3(fin(i)-9:fin(i),i)),mean(R2_T3(fin(i)-9:fin(i),i)),'k','filled','MarkerSize',15,'linestyle','none','linewidth',2)
%i=5;stem(mean(foodMax*food_T3(fin(i)-9:fin(i),i)),mean(R2_T3(fin(i)-9:fin(i),i)),'k','filled','MarkerSize',15,'linestyle','none','linewidth',2)
%i=6;stem(mean(foodMax*food_T3(fin(i)-9:fin(i),i)),mean(R2_T3(fin(i)-9:fin(i),i)),'k','filled','MarkerSize',15,'linestyle','none','linewidth',2)

i=1;stem3(mean(foodMax*food_T3(fin(i)-4:fin(i),i)),mean(promediosC_T3(fin(i)-4:fin(i),i)),mean(270*timeOut_T3(fin(i)-9:fin(i),i)),'g','MarkerFaceColor','g','MarkerSize',15,'linestyle',':','linewidth',2)
i=3;stem3(mean(foodMax*food_T3(fin(i)-4:fin(i),i)),mean(promediosC_T3(fin(i)-4:fin(i),i)),mean(270*timeOut_T3(fin(i)-9:fin(i),i)),'g','MarkerFaceColor','g','MarkerSize',15,'linestyle',':','linewidth',2)
i=4;stem3(mean(foodMax*food_T3(fin(i)-4:fin(i),i)),mean(promediosC_T3(fin(i)-4:fin(i),i)),mean(270*timeOut_T3(fin(i)-9:fin(i),i)),'g','MarkerFaceColor','g','MarkerSize',15,'linestyle',':','linewidth',2)
%i=2;stem3(mean(foodMax*food_T3(fin(i)-9:fin(i),i)),mean(R2_T3(fin(i)-9:fin(i),i)),mean(270*timeOut_T3(fin(i)-9:fin(i),i)),'g','MarkerFaceColor','g','MarkerSize',15,'linestyle',':','linewidth',2)
%i=5;stem3(mean(foodMax*food_T3(fin(i)-9:fin(i),i)),mean(R2_T3(fin(i)-9:fin(i),i)),mean(270*timeOut_T3(fin(i)-9:fin(i),i)),'g','MarkerFaceColor','g','MarkerSize',15,'linestyle',':','linewidth',2)
%i=6;stem3(mean(foodMax*food_T3(fin(i)-9:fin(i),i)),mean(R2_T3(fin(i)-9:fin(i),i)),mean(270*timeOut_T3(fin(i)-9:fin(i),i)),'g','MarkerFaceColor','g','MarkerSize',15,'linestyle',':','linewidth',2)

%stem3(mean(foodMedia_T3([1 3 4])*foodMax),mean(mediaXsujeto_T3([1 3 4])),mean(270*timeOutMedia_T3([1 3 4])),'g','filled','linewidth',3);
%stem3(mean(foodMedia_T3([1 3 4])*foodMax),mean(mediaXsujeto_T3([1 3 4])),mean(270*timeOutMedia_T3([1 3 4])),'k','linewidth',1);
% T=4
fin=[17 27 17 17 27 27];
foodMax=60;
% i=1;stem(mean(foodMax*food_T4(11-4:11,i)),mean(promediosC_T4(11-4:11,i)),'k','filled','MarkerSize',15,'linestyle','none','linewidth',2)
% i=3;stem(mean(foodMax*food_T4(11-4:11,i)),mean(promediosC_T4(11-4:11,i)),'k','filled','MarkerSize',15,'linestyle','none','linewidth',2)
% i=4;stem(mean(foodMax*food_T4(11-4:11,i)),mean(promediosC_T4(11-4:11,i)),'k','filled','MarkerSize',15,'linestyle','none','linewidth',2)
% 
% i=1;stem3(mean(foodMax*food_T4(11-4:11,i)),mean(promediosC_T4(11-4:11,i)),mean(270*timeOut_T4(11-4:11,i)),'m','MarkerFaceColor','b','MarkerSize',15,'linestyle',':','linewidth',2)
% i=3;stem3(mean(foodMax*food_T4(11-4:11,i)),mean(promediosC_T4(11-4:11,i)),mean(270*timeOut_T4(11-4:11,i)),'m','MarkerFaceColor','b','MarkerSize',15,'linestyle',':','linewidth',2)
% i=4;stem3(mean(foodMax*food_T4(11-4:11,i)),mean(promediosC_T4(11-4:11,i)),mean(270*timeOut_T4(11-4:11,i)),'m','MarkerFaceColor','b','MarkerSize',15,'linestyle',':','linewidth',2)


i=1;stem(mean(foodMax*food_T4(fin(i)-4:fin(i),i)),mean(promediosC_T4(fin(i)-4:fin(i),i)),'k','filled','MarkerSize',15,'linestyle','none','linewidth',2)
i=3;stem(mean(foodMax*food_T4(fin(i)-4:fin(i),i)),mean(promediosC_T4(fin(i)-4:fin(i),i)),'k','filled','MarkerSize',15,'linestyle','none','linewidth',2)
i=4;stem(mean(foodMax*food_T4(fin(i)-4:fin(i),i)),mean(promediosC_T4(fin(i)-4:fin(i),i)),'k','filled','MarkerSize',15,'linestyle','none','linewidth',2)

i=1;stem3(mean(foodMax*food_T4(fin(i)-4:fin(i),i)),mean(promediosC_T4(fin(i)-4:fin(i),i)),mean(270*timeOut_T4(fin(i)-4:fin(i),i)),'b','MarkerFaceColor','b','MarkerSize',15,'linestyle',':','linewidth',2)
i=3;stem3(mean(foodMax*food_T4(fin(i)-4:fin(i),i)),mean(promediosC_T4(fin(i)-4:fin(i),i)),mean(270*timeOut_T4(fin(i)-4:fin(i),i)),'b','MarkerFaceColor','b','MarkerSize',15,'linestyle',':','linewidth',2)
i=4;stem3(mean(foodMax*food_T4(fin(i)-4:fin(i),i)),mean(promediosC_T4(fin(i)-4:fin(i),i)),mean(270*timeOut_T4(fin(i)-4:fin(i),i)),'b','MarkerFaceColor','b','MarkerSize',15,'linestyle',':','linewidth',2)

%i=1;stem3(mean(foodMedia_T4([1 3 4])*foodMax),mean(mediaXsujeto_T4([1 3 4])),mean(270*timeOutMedia_T4([1 3 4])),'b','fill','linewidth',3)
%i=1;stem3(mean(foodMedia_T4([1 3 4])*foodMax),mean(mediaXsujeto_T4([1 3 4])),mean(270*timeOutMedia_T4([1 3 4])),'k','linewidth',1)
grid on;

hold off;


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5
fin=[21 33 23 23 23 31 23 50 31 29 33 23];
figure();
hold on;

% foodMax=30;
% i=1;stem(mean(foodMax*food_T2(fin(i)-9:fin(i),i)),mean(R2_T2(fin(i)-9:fin(i),i)),'k','filled','MarkerSize',15,'linestyle','none','linewidth',2)
% i=3;stem(mean(foodMax*food_T2(fin(i)-9:fin(i),i)),mean(R2_T2(fin(i)-9:fin(i),i)),'k','filled','MarkerSize',15,'linestyle','none','linewidth',2)
% i=7;stem(mean(foodMax*food_T2(fin(i)-9:fin(i),i)),mean(R2_T2(fin(i)-9:fin(i),i)),'k','filled','MarkerSize',15,'linestyle','none','linewidth',2)
% i=8;stem(mean(foodMax*food_T2(fin(i)-9:fin(i),i)),mean(R2_T2(fin(i)-9:fin(i),i)),'k','filled','MarkerSize',15,'linestyle','none','linewidth',2)
% i=9;stem(mean(foodMax*food_T2(fin(i)-9:fin(i),i)),mean(R2_T2(fin(i)-9:fin(i),i)),'k','filled','MarkerSize',15,'linestyle','none','linewidth',2)
% i=10;stem(mean(foodMax*food_T2(fin(i)-9:fin(i),i)),mean(R2_T2(fin(i)-9:fin(i),i)),'k','filled','MarkerSize',15,'linestyle','none','linewidth',2)
% i=11;stem(mean(foodMax*food_T2(fin(i)-9:fin(i),i)),mean(R2_T2(fin(i)-9:fin(i),i)),'k','filled','MarkerSize',15,'linestyle','none','linewidth',2)
% i=12;stem(mean(foodMax*food_T2(fin(i)-9:fin(i),i)),mean(R2_T2(fin(i)-9:fin(i),i)),'k','filled','MarkerSize',15,'linestyle','none','linewidth',2)
% 
% i=1;stem3(mean(foodMax*food_T2(fin(i)-9:fin(i),i)),mean(R2_T2(fin(i)-9:fin(i),i)),mean(timeOut_T2(fin(i)-9:fin(i),i)-150),'r','MarkerFaceColor','r','MarkerSize',15,'linestyle',':','linewidth',2)
% i=3;stem3(mean(foodMax*food_T2(fin(i)-9:fin(i),i)),mean(R2_T2(fin(i)-9:fin(i),i)),mean(timeOut_T2(fin(i)-9:fin(i),i)-150),'r','MarkerFaceColor','r','MarkerSize',15,'linestyle',':','linewidth',2)
% i=7;stem3(mean(foodMax*food_T2(fin(i)-9:fin(i),i)),mean(R2_T2(fin(i)-9:fin(i),i)),mean(timeOut_T2(fin(i)-9:fin(i),i)-150),'r','MarkerFaceColor','r','MarkerSize',15,'linestyle',':','linewidth',2)
% i=8;stem3(mean(foodMax*food_T2(fin(i)-9:fin(i),i)),mean(R2_T2(fin(i)-9:fin(i),i)),mean(timeOut_T2(fin(i)-9:fin(i),i)-150),'r','MarkerFaceColor','r','MarkerSize',15,'linestyle',':','linewidth',2)
% i=9;stem3(mean(foodMax*food_T2(fin(i)-9:fin(i),i)),mean(R2_T2(fin(i)-9:fin(i),i)),mean(timeOut_T2(fin(i)-9:fin(i),i)-150),'r','MarkerFaceColor','r','MarkerSize',15,'linestyle',':','linewidth',2)
% i=10;stem3(mean(foodMax*food_T2(fin(i)-9:fin(i),i)),mean(R2_T2(fin(i)-9:fin(i),i)),mean(timeOut_T2(fin(i)-9:fin(i),i)-150),'r','MarkerFaceColor','r','MarkerSize',15,'linestyle',':','linewidth',2)
% i=11;stem3(mean(foodMax*food_T2(fin(i)-9:fin(i),i)),mean(R2_T2(fin(i)-9:fin(i),i)),mean(timeOut_T2(fin(i)-9:fin(i),i)-150),'r','MarkerFaceColor','r','MarkerSize',15,'linestyle',':','linewidth',2)
% i=12;stem3(mean(foodMax*food_T2(fin(i)-9:fin(i),i)),mean(R2_T2(fin(i)-9:fin(i),i)),mean(timeOut_T2(fin(i)-9:fin(i),i)-150),'r','MarkerFaceColor','r','MarkerSize',15,'linestyle',':','linewidth',2)

%stem3(mean(foodMax*foodMedia_T2([1 3 7 8 9 10 11 12])),mean(mediaXsujeto_T2([1 3 7 8 9 10 11 12])),mean(timeOutMedia_T2([1 3 7 8 9 10  11 12])-150),'r','filled','linewidth',3)
%stem3(mean(foodMax*foodMedia_T2([1 3 7 8 9 10 11 12])),mean(mediaXsujeto_T2([1 3 7 8 9 10 11 12])),mean(timeOutMedia_T2([1 3 7 8 9 10  11 12])-150),'k','linewidth',1)
ylabel('Mutua');
xlabel('Reward per session');
zlabel('Timeout');
% T=3
fin=[18 27 18 18 27 27];
foodMax=45;
i=1;stem(mean(foodMax*food_T3(fin(i)-4:fin(i),i)),mean(R2_T3(fin(i)-4:fin(i),i)),'k','filled','MarkerSize',15,'linestyle','none','linewidth',2)
i=3;stem(mean(foodMax*food_T3(fin(i)-4:fin(i),i)),mean(R2_T3(fin(i)-4:fin(i),i)),'k','filled','MarkerSize',15,'linestyle','none','linewidth',2)
i=4;stem(mean(foodMax*food_T3(fin(i)-4:fin(i),i)),mean(R2_T3(fin(i)-4:fin(i),i)),'k','filled','MarkerSize',15,'linestyle','none','linewidth',2)
%i=2;stem(mean(foodMax*food_T3(fin(i)-9:fin(i),i)),mean(R2_T3(fin(i)-9:fin(i),i)),'k','filled','MarkerSize',15,'linestyle','none','linewidth',2)
%i=5;stem(mean(foodMax*food_T3(fin(i)-9:fin(i),i)),mean(R2_T3(fin(i)-9:fin(i),i)),'k','filled','MarkerSize',15,'linestyle','none','linewidth',2)
%i=6;stem(mean(foodMax*food_T3(fin(i)-9:fin(i),i)),mean(R2_T3(fin(i)-9:fin(i),i)),'k','filled','MarkerSize',15,'linestyle','none','linewidth',2)

i=1;stem3(mean(foodMax*food_T3(fin(i)-4:fin(i),i)),mean(R2_T3(fin(i)-4:fin(i),i)),mean(270*timeOut_T3(fin(i)-9:fin(i),i)),'g','MarkerFaceColor','g','MarkerSize',15,'linestyle',':','linewidth',2)
i=3;stem3(mean(foodMax*food_T3(fin(i)-4:fin(i),i)),mean(R2_T3(fin(i)-4:fin(i),i)),mean(270*timeOut_T3(fin(i)-9:fin(i),i)),'g','MarkerFaceColor','g','MarkerSize',15,'linestyle',':','linewidth',2)
i=4;stem3(mean(foodMax*food_T3(fin(i)-4:fin(i),i)),mean(R2_T3(fin(i)-4:fin(i),i)),mean(270*timeOut_T3(fin(i)-9:fin(i),i)),'g','MarkerFaceColor','g','MarkerSize',15,'linestyle',':','linewidth',2)
%i=2;stem3(mean(foodMax*food_T3(fin(i)-9:fin(i),i)),mean(R2_T3(fin(i)-9:fin(i),i)),mean(270*timeOut_T3(fin(i)-9:fin(i),i)),'g','MarkerFaceColor','g','MarkerSize',15,'linestyle',':','linewidth',2)
%i=5;stem3(mean(foodMax*food_T3(fin(i)-9:fin(i),i)),mean(R2_T3(fin(i)-9:fin(i),i)),mean(270*timeOut_T3(fin(i)-9:fin(i),i)),'g','MarkerFaceColor','g','MarkerSize',15,'linestyle',':','linewidth',2)
%i=6;stem3(mean(foodMax*food_T3(fin(i)-9:fin(i),i)),mean(R2_T3(fin(i)-9:fin(i),i)),mean(270*timeOut_T3(fin(i)-9:fin(i),i)),'g','MarkerFaceColor','g','MarkerSize',15,'linestyle',':','linewidth',2)

%stem3(mean(foodMedia_T3([1 3 4])*foodMax),mean(mediaXsujeto_T3([1 3 4])),mean(270*timeOutMedia_T3([1 3 4])),'g','filled','linewidth',3);
%stem3(mean(foodMedia_T3([1 3 4])*foodMax),mean(mediaXsujeto_T3([1 3 4])),mean(270*timeOutMedia_T3([1 3 4])),'k','linewidth',1);
% T=4
fin=[17 27 17 17 27 27];
foodMax=60;
% i=1;stem(mean(foodMax*food_T4(11-4:11,i)),mean(promediosC_T4(11-4:11,i)),'k','filled','MarkerSize',15,'linestyle','none','linewidth',2)
% i=3;stem(mean(foodMax*food_T4(11-4:11,i)),mean(promediosC_T4(11-4:11,i)),'k','filled','MarkerSize',15,'linestyle','none','linewidth',2)
% i=4;stem(mean(foodMax*food_T4(11-4:11,i)),mean(promediosC_T4(11-4:11,i)),'k','filled','MarkerSize',15,'linestyle','none','linewidth',2)
% 
% i=1;stem3(mean(foodMax*food_T4(11-4:11,i)),mean(promediosC_T4(11-4:11,i)),mean(270*timeOut_T4(11-4:11,i)),'m','MarkerFaceColor','b','MarkerSize',15,'linestyle',':','linewidth',2)
% i=3;stem3(mean(foodMax*food_T4(11-4:11,i)),mean(promediosC_T4(11-4:11,i)),mean(270*timeOut_T4(11-4:11,i)),'m','MarkerFaceColor','b','MarkerSize',15,'linestyle',':','linewidth',2)
% i=4;stem3(mean(foodMax*food_T4(11-4:11,i)),mean(promediosC_T4(11-4:11,i)),mean(270*timeOut_T4(11-4:11,i)),'m','MarkerFaceColor','b','MarkerSize',15,'linestyle',':','linewidth',2)


i=1;stem(mean(foodMax*food_T4(fin(i)-4:fin(i),i)),mean(promediosC_T4(fin(i)-4:fin(i),i)),'k','filled','MarkerSize',15,'linestyle','none','linewidth',2)
i=3;stem(mean(foodMax*food_T4(fin(i)-4:fin(i),i)),mean(promediosC_T4(fin(i)-4:fin(i),i)),'k','filled','MarkerSize',15,'linestyle','none','linewidth',2)
i=4;stem(mean(foodMax*food_T4(fin(i)-4:fin(i),i)),mean(promediosC_T4(fin(i)-4:fin(i),i)),'k','filled','MarkerSize',15,'linestyle','none','linewidth',2)

i=1;stem3(mean(foodMax*food_T4(fin(i)-4:fin(i),i)),mean(promediosC_T4(fin(i)-4:fin(i),i)),mean(270*timeOut_T4(fin(i)-4:fin(i),i)),'b','MarkerFaceColor','b','MarkerSize',15,'linestyle',':','linewidth',2)
i=3;stem3(mean(foodMax*food_T4(fin(i)-4:fin(i),i)),mean(promediosC_T4(fin(i)-4:fin(i),i)),mean(270*timeOut_T4(fin(i)-4:fin(i),i)),'b','MarkerFaceColor','b','MarkerSize',15,'linestyle',':','linewidth',2)
i=4;stem3(mean(foodMax*food_T4(fin(i)-4:fin(i),i)),mean(promediosC_T4(fin(i)-4:fin(i),i)),mean(270*timeOut_T4(fin(i)-4:fin(i),i)),'b','MarkerFaceColor','b','MarkerSize',15,'linestyle',':','linewidth',2)

%i=1;stem3(mean(foodMedia_T4([1 3 4])*foodMax),mean(mediaXsujeto_T4([1 3 4])),mean(270*timeOutMedia_T4([1 3 4])),'b','fill','linewidth',3)
%i=1;stem3(mean(foodMedia_T4([1 3 4])*foodMax),mean(mediaXsujeto_T4([1 3 4])),mean(270*timeOutMedia_T4([1 3 4])),'k','linewidth',1)
grid on;

hold off;
