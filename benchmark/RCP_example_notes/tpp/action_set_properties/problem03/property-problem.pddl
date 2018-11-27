# buy goods 0 in market 3/6

set load_g0_m3 1
load goods0 truck market3

set load_g0_m6 1
load goods0 truck market6

property load_g0_m3
&& load_g0_m3  ! load_g0_m6

property load_g0_m6
&& ! load_g0_m3 load_g0_m6



# buy goods 1 in market 4/6

set load_g1_m4 1
load goods1 truck market4

set load_g1_m6 1
load goods1 truck market6

property load_g1_m4
&& load_g1_m4 ! load_g1_m6

property load_g1_m6
&& ! load_g1_m4 load_g1_m6



# buy goods 2 in market 2/7

set load_g2_m2 1
load goods2 truck market2

set load_g2_m7 1
load goods2 truck market7

property load_g2_m2
&& load_g2_m2 ! load_g2_m7

property load_g2_m7
&& ! load_g2_m2 load_g2_m7


#buy goods 3 in market 1/7

set load_g3_m1 1
load goods3 truck market1

set load_g3_m7 1
load goods3 truck market7

property load_g3_m1
&& load_g3_m1 ! load_g3_m7

property load_g3_m7
&& ! load_g3_m1 load_g3_m7



#buy goods 4 in market 2/7

set load_g4_m2 1
load goods4 truck market2

set load_g4_m7 1
load goods4 truck market7


property load_g4_m2
&& load_g4_m2 ! load_g4_m7

property load_g4_m7
&& ! load_g4_m2 load_g4_m7







