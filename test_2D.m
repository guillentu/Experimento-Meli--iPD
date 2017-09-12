function []= test_2D(var1,var2)
    figure;
    meanvar1=mean([var1(8:17,1)' var1(8:17,2)']);
    meanvar2=mean([var2(9:18,1)' var2(9:18,2)']);
    %meanvar12=mean(var1(8:17,2));
    %meanvar22=mean(var2(9:18,2));
    scatter(var1(8:17,1)-meanvar1,var2(9:18,1)-meanvar2,20,'b');
    hold on;
    scatter(var1(8:17,2)-meanvar1,var2(9:18,2)-meanvar2,20,'r');
    hold off;
    % proyectas x sobre w
    x1=var1(8:17,1)-meanvar1;
    x2=var1(8:17,2)-meanvar1;
    y1=var2(9:18,1)-meanvar2;
    y2=var2(9:18,2)-meanvar2;
    w= [mean([x1,y1])-mean([x2,y2])] * inv(.5*cov(x1,y1)+.5*cov(x2,y2));
    wn=w/(sqrt(w(1)^2+w(2)^2))
    hold on;
    plot([-1:0.1:1]*wn(1),[-1:0.1:1]*wn(2))
    hold off;
    %XY1=mean([x1,y1]);
    %XY2=mean([x2,y2]);
    T3proyect=wn*([x1,y1]');
    T4proyect=wn*([x2,y2]');
    hold on;
    scatter(T3proyect*wn(1),T3proyect*wn(2),30,'b');
    scatter(T4proyect*wn(1),T4proyect*wn(2),30,'r');
    hold off
    % DA significativo!!!!
    ranksum(T3proyect,T4proyect)
end  