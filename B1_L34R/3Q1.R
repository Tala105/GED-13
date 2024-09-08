###======================== Questão 1 ===========================###
N=10^5
n=25
p=0.05
a=pbinom(2,n,p)
b=1-pbinom(4,n,p)
c=pbinom(4,n,p)-pbinom(0,n,p)
d=pbinom(0,n,p)
eE=n*p
eV=n*p*(1-p)

### Simulação de Monte Carlo
X=rbinom(N,n,p)
aM=sum(X<=2)/N
bM=sum(X>=5)/N
cM=sum(X<=4 & X>=1)/N
dM=sum(X==0)/N
eEM=sum(X)/N
eE2M=sum(X^2)/N
eVM=eE2M-eEM^2
