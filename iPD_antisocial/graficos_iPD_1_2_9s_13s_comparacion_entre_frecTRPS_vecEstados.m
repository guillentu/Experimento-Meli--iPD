% COMPARACION Frecuencia TRPS y Vector de estados
clear all;
close all;
load("datos_frecTRPS_anti");


load("datos_frecTRPS_otros_OPO");

figure;
bar([frecTRPS_anti;frec_TRPS_OPO]')
hold on
%errorbar([frecTRPS_anti;frec_TRPS_OPO]',[frecTRPS_sem_anti;frec_TRPS_sem_OPO]')
errorbar(-0.18+[1 2 3 4],[frecTRPS_anti]',[frecTRPS_sem_anti]','*k')
errorbar(0.18+[1 2 3 4],[frec_TRPS_OPO]',[frec_TRPS_sem_OPO]','*k')