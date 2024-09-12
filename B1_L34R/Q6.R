###======================== Questão 6 ===========================###
### Pelo TLM sum(Xi)/n~N(E[X],Var[X]/n),i=1,2,3,...,n
xa=100
sa=20/32
a=pnorm(103,xa,sqrt(sa))-pnorm(97,xa,sqrt(sa))

b = pchisq((31*4.5^2)/20, 31) - pchisq((31*3.5^2)/20, 31)