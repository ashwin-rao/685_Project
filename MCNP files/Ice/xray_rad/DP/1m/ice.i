Ice Asteroid Xrays DP
c Begin Cell Card
1  1 -0.917 -14 IMP:N,P,H,D,T,A=1
11  1 -0.917 -13 14 IMP:N,P,H,D,T,A=1
21  1 -0.917 -12 13 IMP:N,P,H,D,T,A=1
31  1 -0.917 -11 12 IMP:N,P,H,D,T,A=1
41  1 -0.917 -10 11 IMP:N,P,H,D,T,A=1
2   0 10 -90        IMP:N,P,H,D,T,A=1
3   0 90            IMP:N,P,H,D,T,A=0 
c End Cell Card

c Begin Surface Card
10 SO 2500
11 SO 2495
12 SO 2490
13 SO 2485
14 SO 2480
90 SO 2600.05
c End Surface Card

c Begin Data Cards
MODE N P H D T A
MPHYS ON
c ----------------
SDEF POS 0 0 2600 ERG=0.001 PAR=2
c SP1 -3 0.988 2.249
c Material Card Ice Composition, rho=0.917
  m1 1001.70c -0.1120 
     8016.70c -0.8881
     PLIB=12p
c Tally Card
FC6 Energy Deposition Tally
+F6 1 11 21 31 41
PHYS:P 100. 0 0 -1 0
PHYS:H 100. 4j
PHYS:D 100. 4j
PHYS:T 100. 4j
PHYS:A 100. 4j
CUT:N j j 0 0
CUT:P j 1e-6 0 0
CUT:H,D,A,T j j 0 0
NPS 1e5