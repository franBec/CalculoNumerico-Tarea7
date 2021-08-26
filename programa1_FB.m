function D = Programa1_FB(X,f)
  %X debe entrar como vector fila
  X = X';
  
  [m,n] = size (X); 
  D = zeros(m,m);
  for i=1 : m
    for j=1 : (m-i+1)
      if (i==1)
        D(j,i)=double(f(X(j,i)));
      else
        D(j,i)=(D(j+1,i-1)-D(j,i-1))/(X((j+i-1),1)-X(j,1));
      end
     end  
  end
end