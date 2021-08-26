function a = programa3_FB (x, f)
  %x debe entrar como vector fila
  
  [n,m] = size(x);
  fx = double(f(x));  %double porque si no, se tilda la ejecucion
  fx = fx';           %para calcular la solucion, fx debe ser vector columna
  V = zeros(m,m);     %inicializar matriz V
  x = x';             %para que for-loop funcione, x debe ser vector columna
  
  for i=1:m
    aux = x.^(i-1);
    V(:,i) = aux;
  end
  
  a = V\fx;
end
