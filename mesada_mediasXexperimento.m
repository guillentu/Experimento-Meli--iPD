%% Grafico de las medias por experimetno

load('media_T5_y_R2');
load('media_T3_y_R1');
load('../Experimento---iPD/ExtraerDatos/datos_coop_reward_T2');



exp_T2R1=mean(mediaXsujeto_T2([1 3 7 8 9 10 11 12]));
exp_T3R1=mean(media_R1_T3);
exp_T5R1=mean(media_R1_T5);
exp_T3R2=mean(media_R2_T3);
plot([exp_T3R2 exp_T2R1 exp_T3R1 exp_T5R1],'*')