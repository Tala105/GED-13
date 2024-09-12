###======================== Questão 6 ===========================###
### Se X~N(u,1), seja F(x) a probabilidade acumulada da normal padronizada, ou 
### ou sendo Y~N(0,1), F(y) = P(Y<=y), veja que Y=X-u~N(0,1)
### Seja f(y) a função distribuição de probabilidade de Y, ou P(Y=y)
### como Y~N(0,1), f(y)= 1/sqrt(2*pi)*exp(-y^2/2)
### E[L] = c1*(F(12-u)-F(10-u)) - c2*F(10-u) - c3*(1-F(12-u))
### dE[L]/du = c1*(-f(12-u)+f(10-u)) + c2*f(10-u) - c3*f(12-u) = 0
### (c1+c2)*f(10-u) - (c1+c3)*f(12-u)=0 =>
### f(12-u)/f(10-u) = (c1+c2)/(c1+c3) => 
### e^((12-u)^2/2 - (10-u)^2/2)=(c1+c2)/(c1+c3) =>
### e^(2*(22-2*u)/2)=(c1+c2)/(c1+c3) => 22-2*u = ln((c1+c2)/(c1+c3))
### u* = 11-ln(sqrt((c1+c2)/(c1+c3))