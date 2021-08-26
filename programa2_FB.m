function resultado = Programa2_FR(coef, puntos, x)
  %|puntos| = |coef| - 1
  
  [m,n]=size(coef);
  aux=ones(n,n);
  aux(1,1)=1;
  for i=1 : n-1
    for j=i+1 : n 
      aux(i,j)=x-puntos(1,i);
    end
  end
  resultado = sum(coef.*prod(aux));
end
