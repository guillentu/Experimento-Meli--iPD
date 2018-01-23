% Comparacion entre velocidades de crecimiento del aprendizaje
% hasta llegar al establecimiento

load("datosCooperacionAntisocial");
_promediosC_anti=_promediosC;

load("datosCooperacionConOPO");
_promediosC_OPO=_promediosC;

figure;hold on;
hh=errorbar(mean(_promediosC_anti([1:12],[1 3 4 5 6]),2),sem(_promediosC_anti([1:12],[1 3 4 5 6]),2));
h=plot(mean(_promediosC_anti([1:12],[1 3 4 5 6]),2));
axis([0 13 0.3 1]);
plot((_promediosC_anti([1:12],[1 3 4 5 6])))

aux1=mean(_promediosC_OPO(1:21,[1 3 7 8 9 10 11 12]),2);
aux2=mean(_promediosC_OPO(22:23,[3 7 8 9 10 11 12]),2);
aux3=mean(_promediosC_OPO(24:29,[8 9 10 11]),2);
media=[aux1;aux2;aux3];
aux1=sem(_promediosC_OPO(1:21,[1 3 7 8 9 10 11 12]),2);
aux2=sem(_promediosC_OPO(22:23,[3 7 8 9 10 11 12]),2);
aux3=sem(_promediosC_OPO(24:29,[8 9 10 11]),2);
error=[aux1;aux2;aux3];

figure;hold on;
hh=errorbar(media,error);
h=plot(media)


_promediosC_OPO(30:31,[8 9 11])

_promediosC_OPO(32:33,[8 11])

_promediosC_OPO(34:50,[8])