###======================== Questão 5 ===========================###
u=16
var=4
s=sqrt(var)
a = 1-pnorm(19,u,s)
b = pnorm(19,u,s) - pnorm(13,u,s)
### Passando para a forma padrão
### P(u-s <= X <= u+s) = P(-1 <= (X-u)/s <= 1)
c = pnorm(1,0,1) - pnorm(-1,0,1)
### Analogamente
d = pnorm(2,0,1) - pnorm(-2,0,1)
e = pnorm(3,0,1) - pnorm(-3,0,1)