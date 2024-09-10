###======================== Questão 9 ===========================###
### Hc~N(200,81), Hf~U(6,12)
### E[t]=E[6*Hc+2*Hf]
### E[t]=6*E[Hc]+2*E[Hf]
a=6*200+2*9

### Var[t]=Var[6*Hc+2*Hf]
### Var[t]=36*Var[Hc]+4*Var(Hf)
b=36*81+4*(12-6)^2/12

N=10^5
couberam=0
for(i in 1:N){
  box=rnorm(1,1240,81)
  caixas=rnorm(6,200,81)
  revest=runif(2,6,12)
  couberam=couberam+(box>(sum(caixas)+sum(revest)))
}
c=couberam/N