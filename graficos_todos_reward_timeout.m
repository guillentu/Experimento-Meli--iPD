
load '/home/guille/Documents/github_Repository/experimento/Experimento---iPD/ExtraerDatos/datos_food_reward_T2.mat';
food_T2=food;
timeOut_T2=timeOut;
load('/home/guille/Documents/github_Repository/experimento/Experimento-Meli--iPD/datos_food_reward_T3.mat');
food_T3=food;
timeOut_T3=timeOut;
load('/home/guille/Documents/github_Repository/experimento/Experimento-Meli--iPD/datos_food_reward_T4.mat');
food_T4=food;
timeOut_T4=timeOut;
timeOut_T4(18,4)=timeOut_T4(15,4)+timeOut_T4(16,4)+timeOut_T4(17,4)/3;
ini=[];
fin=[21 33 23 23 23 31 23 50 31 29 33 23];
figure();
hold on;
% i=1;scatter(timeOut_T2(fin(i)-9:fin(i),i),30*food_T2(fin(i)-9:fin(i),i),200,'r','linewidth',3)
% i=2;scatter(timeOut_T2(fin(i)-9:fin(i),i),30*food_T2(fin(i)-9:fin(i),i),200,'b','fill','linewidth',3)
% i=3;scatter(timeOut_T2(fin(i)-9:fin(i),i),30*food_T2(fin(i)-9:fin(i),i),200,'r','linewidth',3)
% i=4;scatter(timeOut_T2(fin(i)-9:fin(i),i),30*food_T2(fin(i)-9:fin(i),i),200,'b','fill','linewidth',3)
% i=5;scatter(timeOut_T2(fin(i)-9:fin(i),i),30*food_T2(fin(i)-9:fin(i),i),200,'b','fill','linewidth',3)
% i=6;scatter(timeOut_T2(fin(i)-9:fin(i),i),30*food_T2(fin(i)-9:fin(i),i),200,'b','fill','linewidth',3)
% i=7;scatter(timeOut_T2(fin(i)-9:fin(i),i),30*food_T2(fin(i)-9:fin(i),i),200,'r','linewidth',3)
% i=8;scatter(timeOut_T2(fin(i)-9:fin(i),i),30*food_T2(fin(i)-9:fin(i),i),200,'r','linewidth',3)
% i=9;scatter(timeOut_T2(fin(i)-9:fin(i),i),30*food_T2(fin(i)-9:fin(i),i),200,'r','linewidth',3)
% i=10;scatter(timeOut_T2(fin(i)-9:fin(i),i),30*food_T2(fin(i)-9:fin(i),i),200,'r','linewidth',3)
% i=11;scatter(timeOut_T2(fin(i)-9:fin(i),i),30*food_T2(fin(i)-9:fin(i),i),200,'r','linewidth',3)
% i=12;scatter(timeOut_T2(fin(i)-9:fin(i),i),30*food_T2(fin(i)-9:fin(i),i),200,'r','linewidth',3)
% title('Solo experimento R1 T2 P4 S8');
% xlabel('Rojo=COOP Azul=NOCOOP');
% T=3
fin=[18 27 18 18 27 27];
i=1;scatter(270*timeOut_T3(fin(i)-9:fin(i),i),45*food_T3(fin(i)-9:fin(i),i),200,'m','linewidth',3)
%i=2;scatter(270*timeOut_T3(fin(i)-9:fin(i),i),45*food_T3(fin(i)-9:fin(i),i),200,'m','linewidth',3)
i=3;scatter(270*timeOut_T3(fin(i)-9:fin(i),i),45*food_T3(fin(i)-9:fin(i),i),200,'m','linewidth',3)
i=4;scatter(270*timeOut_T3(fin(i)-9:fin(i),i),45*food_T3(fin(i)-9:fin(i),i),200,'m','linewidth',3)
%i=5;scatter(270*timeOut_T3(fin(i)-9:fin(i),i),45*food_T3(fin(i)-9:fin(i),i),200,'m','linewidth',3)
%i=6;scatter(270*timeOut_T3(fin(i)-9:fin(i),i),45*food_T3(fin(i)-9:fin(i),i),200,'m','linewidth',3)
% T=4
fin=[17 27 17 17 27 27];
i=1;scatter(270*timeOut_T4(fin(i)-9:fin(i),i),60*food_T4(fin(i)-9:fin(i),i),200,'m','fill','linewidth',3)
i=3;scatter(270*timeOut_T4(fin(i)-9:fin(i),i),60*food_T4(fin(i)-9:fin(i),i),200,'m','fill','linewidth',3)
i=4;scatter(270*timeOut_T4(fin(i)-9:fin(i),i),60*food_T4(fin(i)-9:fin(i),i),200,'m','fill','linewidth',3)
title('Experimento T aumentado T=3 -> T=4');
xlabel('vacio = T=3 llenos= T=4');
%plot([0 165],[25 35],'--k','linewidth',3)
hold off;