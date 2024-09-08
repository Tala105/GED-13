###======================== Questão 3 ===========================###
N=10^5
u=2/5
a=ppois(3,5*u)
b=1-pbinom(3,6,a)
###Simulação de Monte Carlo
X=rpois(N,u*5)
aM=sum(X<=3)/N
Y=rbinom(N,6,aM)
bM=sum(Y>=4)/N