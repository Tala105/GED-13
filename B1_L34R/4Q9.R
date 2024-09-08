###======================== Questão 9 ===========================###
u=33
s=3
a=(0.1*(pnorm(35,u,s)-pnorm(30,u,s))+0.05*(pnorm(40,u,s)-pnorm(35,u,s))
   +0.05*(pnorm(30,u,s)-pnorm(25,u,s))-0.1*(pnorm(25,u,s)+1-pnorm(40,u,s)))

### E[T] = 1.5*a
### E[T] = (b*(pnorm(35,u,s)-pnorm(30,u,s))+0.05*(pnorm(40,u,s)-pnorm(35,u,s))
###         +0.05*(pnorm(30,u,s)-pnorm(25,u,s))-0.1*(pnorm(25,u,s)+1-pnorm(40,u,s)))
### 1.5*a = (b-0.1)*(pnorm(35,u,s)-pnorm(30,u,s) + a

b = (0.5*a/(pnorm(35,u,s)-pnorm(30,u,s))) + 0.1
