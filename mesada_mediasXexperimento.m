%% Grafico de las medias por experimetno

clear all;close all;
load('media_T5_y_R2');
load('media_T3_y_R1');
load('../Experimento---iPD/ExtraerDatos/datos_coop_reward_T2');



exp_T2R1=mean(mediaXsujeto_T2([1 3 7 8 9 10 11 12]));
exp_sem_T2R1=sem(mediaXsujeto_T2([1 3 7 8 9 10 11 12]));
exp_T3R1=mean(media_R1_T3);
exp_sem_T3R1=sem(media_R1_T3);
exp_T5R1=mean(media_R1_T5);
exp_sem_T5R1=sem(media_R1_T5);
exp_T3R2=mean(media_R2_T3);
exp_sem_T3R2=sem(media_R2_T3);
plot([exp_T3R2 exp_T2R1 exp_T3R1 exp_T5R1],'*')

figure;hold on;
bar([exp_T3R2 exp_T2R1 exp_T3R1 exp_T5R1],'k');
h=errorbar([exp_T3R2 exp_T2R1 exp_T3R1 exp_T5R1],[exp_sem_T3R2 exp_sem_T2R1 exp_sem_T3R1 exp_sem_T5R1],'.k');
set(h,'linewidth',3);
axis ("tic[yz]", "labely[xyz]");
text([1:4]-0.1,-0.05*ones(1,4),{'3/2','2/1','3/1','5/1'},'fontsize',15)