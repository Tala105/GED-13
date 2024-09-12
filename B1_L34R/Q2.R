###======================== Questão 2 ===========================###
### X~Exp(1/12)
### P(X1+X2+X3+X4+X5<50)

a1 = integrate(Vectorize(function(x1) {
  dexp(x1, l) * integrate(Vectorize(function(x2) {
    dexp(x2, l) * integrate(Vectorize(function(x3) {
      dexp(x3, l) * integrate(Vectorize(function(x4) {
        dexp(x4, l) * pexp(50 - x1 - x2 - x3 - x4, l)
      }), 0, 50 - x1 - x2 - x3)$value
    }), 0, 50 - x1 - x2)$value
  }), 0, 50 - x1)$value
}), 0, 50)$value

b1= 1-integrate(Vectorize(function(x1) {
  dexp(x1, l) * integrate(Vectorize(function(x2) {
    dexp(x2, l) * integrate(Vectorize(function(x3) {
      dexp(x3, l) * integrate(Vectorize(function(x4) {
        dexp(x4, l) * pexp(90 - x1 - x2 - x3 - x4, l)
      }), 0, 50 - x1 - x2 - x3)$value
    }), 0, 50 - x1 - x2)$value
  }), 0, 50 - x1)$value
}), 0, 50)$value

c1=5*1/l

l=1/12
N=10^5
a2=0
b2=0
c2=0
for(i in 1:N){
  x=rexp(5,l)
  a2 = a2 + (sum(x)<50)/N
  b2 = b1 + (sum(x)>90)/N
  c2 = c2 + (sum(x))/N
}
