function y=a(n,x,t)
   if x>t
       y=pi*(n+.5)*exp(-.5*(n+.5)^2*pi^2*x);
   else
       y=pi*(n+.5)*exp(-2*(n+.5)^2/x);
   end
end