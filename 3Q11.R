N=10^5
n=rpois(N,35)
Tt=0
for(i in 1:N){
  T1=runif(n[i],15/60,23/60)
  Tt[i]=sum(T1)
}
a=sum(Tt<=12)/N
b=pbinom(20,30,a)