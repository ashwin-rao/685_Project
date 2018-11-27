Allende Asteroid XRay full tally
c Begin Cell Card
1   1 -2.9997 -10    IMP:N,P,H,D,T,A=1
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
SDEF POS 0 0 2501 ERG=0.020 PAR=2
c Material Card Allende Composition, rho=2.9997
  m1 8016.70c  -0.6663
     12024.70c -0.1167
     12025.70c -0.0148
     12026.70c -0.0163
     13027.70c -0.0170
     14028.70c -0.1605
     20040.70c -0.0184
     26056.70c -0.2351
     28058.70c -0.0095
     28060.70c -0.0032
     PLIB=12p
c Tally Card
FC6 Energy Deposition Tally
+F6 1
PHYS:P 100. 0 0 -1 0
PHYS:H 100. 4j
PHYS:D 100. 4j
PHYS:T 100. 4j
PHYS:A 100. 4j
CUT:N j j 0 0
CUT:P j 1.0e-06 0 0
CUT:H,D,A,T j j 0 0
NPS 1e5