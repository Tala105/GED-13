###======================== Questão 3 ===========================###
VarX=(10-2)^2/12
VarY=4
VarZ=5
VarT=VarX+VarY+VarZ
### X^2+X>32 => X>r1 ou X<r2, r1>r2
r=polyroot(c(-32,1,1))
r=Re(r)
a=1-(punif(r[1],2,10) - punif(r[2],2,10))

### X^3 + ln|Y| < 130 => -e^(130-X^3) < Y < e^(130-X^3)
f = function(x) {
  dunif(x, 2, 10) * (1 - pnorm(exp(130 - x^3), 10, 2) + pnorm(-exp(130 - x^3), 10, 2))
}
b = integrate(Vectorize(f), 2, 10)$value

### X+Y+Z>15 => Y > 15-z-x
f = function(z) {
  dpois(z, 5) * integrate(Vectorize(function(x){
    dunif(x,2,10)*(1-pnorm(15 - z - x, 10, 2))
  }), 2, 10)$value
}
c = sum(sapply(0:100, f))

### (X-E[X])^2+(Y-E[Y])^2+(Z-E[Z])^2 <= VarX + VarY + VarZ
### (Y-E[Y])^2 <= VarX + VarY + VarZ - ((X-E[X])^2+(Z-E[Z])^2)
### lim = VarX + VarY + VarZ - ((X-E[X])^2+(Z-E[Z])^2)
### -sqrt(lim) <= (Y-E[Y])^2 <= sqrt(lim)

f = function(z) {
  dpois(z, 5) * integrate(Vectorize(function(x) {
    val = VarT - x^2 - (z - 5)^2
    if (val < 0) return(0)
    sqrt_part = sqrt(val)
    dunif(x, -4, 4) * (pnorm(sqrt_part, 0, 2) - pnorm(-sqrt_part, 0, 2))
  }), -4, 4)$value
}
d = sum(sapply(0:100, f))


