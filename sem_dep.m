function x_sem=sem_dep(x)  
    if (isvector(x))
    x_sem=std(x)*sqrt(length(x)-1);
  else
    disp('debe ingresar un vector');
  endif
endfunction
