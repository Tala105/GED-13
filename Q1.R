N=10^5
x=rnorm(N,100,12)
y=3*x+50
w=x^2-50*x

a=sum(x>120)/N
d=sum(w<5000)/N
b=pnorm(118,100,12)-pnorm(82,100,12)
c=pnorm(400,350,36)-pnorm(300,350,36)

a=1-pnorm(120,100,12)
b=sum(x<118 & x>82)/N
c=sum(y>300 & y<400)/N
d=