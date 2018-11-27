Ice Asteroid Neutrons full tally
c Begin Cell Card
1   1 -0.917 -10    IMP:N,P,H,D,T,A=1
2   0 10 -90         IMP:N,P,H,D,T,A=1
3   0 90             IMP:N,P,H,D,T,A=0 
c End Cell Card

c Begin Surface Card
10 SO 2500
90 SO 2600.05
c End Surface Card

c Begin Data Cards
MODE N P H D T A
MPHYS ON
c ----------------
SDEF POS 0 0 2600 ERG=d1 PAR=1
SP1 -3 0.988 2.249
c Material Card Ice Composition, rho=0.917
  m1 1001.70c -0.1120 
     8016.70c -0.8881
c Tally Card
FC6 Energy Deposition Tally
+F6 1
PHYS:P 100. 0 0 -1 0
PHYS:H 100. 4j
PHYS:D 100. 4j
PHYS:T 100. 4j
PHYS:A 100. 4j
CUT:N j j 0 0
CUT:P,H,D,A,T j j 0 0
NPS 1e5