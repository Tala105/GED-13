###======================== Questão 4 ===========================###
### custo = nc*pc
### faturamento = min(nv,nc)*pv
### lucro = faturamento-custo
### nv~U(a,b)
### se nv>nc lucro=nc(pv-pc)
### se nv<nc lucro=nv*pv-nc*pc
### b<nc<a
### E[lucro]*(b-a) = int(nc*(pv-pc)dnv b,nc) + int((nv*pv-nc*pc)dnv, nc, a) = 
### = nc*(nc-b)(pv-pc) + (a^2-nc^2)*pv/2 - nc*(a-nc)*pc
### = pv(nc^2-nc*b) + pc(b*nc-nc^2) + pv*(a^2/2-nc^2/2) + pc(nc^2-nc*a) =
### = pv(nc^2/2-nc*b-a^2/2) + pc*(b*nc-nc*a)
### dE[lucro]/dnc = 0 = 1/(b-a)*(pv(nc-b) + pc(b-a)) =>
### => pv*nc= pv(b)-pc(b-a) => nc= b - pc/pv*(b-a)