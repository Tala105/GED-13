###======================== Questão 2 ===========================###
N=10^5
n=7
p=0.4
a=(1-p)^7
b=1-pbinom(2,n,p)
c=dbinom(2,5,1-pbinom(2,n,p))
###Simulação de Monte Carlo
X=rbinom(N,n,p)
aM=sum(X==0)/N
bM=sum(X>=3)/N
Y=rbinom(N,5,bM)
cM=sum(Y==2)/N
