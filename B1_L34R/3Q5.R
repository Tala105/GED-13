###======================== Questão 5 ===========================###
Ex=16
Ey=12
vx=9
vy=4

EW=Ex-3*Ey
ER=2*Ey-3*Ex
vW=vx+9*vy
vR=4*vy+9*vx

Ex2=vx+Ex^2
Ey2=vy+Ey^2
Exy=Ex*Ey

EWR=-3*Ex2-6*Ey2+11*Exy
COV=EWR-EW*ER
R=COV/sqrt(vW*vR)