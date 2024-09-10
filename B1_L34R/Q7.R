###======================== Questão 7 ===========================###
N=10^5
X=trunc(runif(N,0,11))
Ea=sum(X)/N
sa=sum(X^2)/N - Ea^2
b=0
for(i in 1:N){
  X1=trunc(runif(3,0,11))
  b=b+(sum(X1)>=25)/N
}
### Ou
Total=11*11*11
Efetivo=0
### i,j ou k<5 => (i+j),(i+k) ou (j+k) >20, porém j,k<10 |absurdo|
for(i in 5:10){
  for(j in 5:10){
    for(k in 5:10){
      Efetivo = Efetivo + ((i+j+k)>=25)/Total
    }
  }
}
