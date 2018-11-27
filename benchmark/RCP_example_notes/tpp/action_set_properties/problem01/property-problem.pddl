# buy goods 0 in market 1/4 

set load_g0_m1 1
load goods0 truck market1 

set load_g0_m4 1
load goods0 truck market4

property load_g0_m1_not_m4
&& load_g0_m1  ! load_g0_m4 

property load_g0_m4_not_m1
&& ! load_g0_m1 load_g0_m4 




# buy goods 1 in market 1/3

set load_g1_m1 1
load goods1 truck market1

set load_g1_m3 1
load goods1 truck market3

property load_g1_m1_not_m3
&& load_g1_m1 ! load_g1_m3

property load_g1_m3_not_m1
&& ! load_g1_m1 load_g1_m3



# buy goods 2 in market 2/3

set load_g2_m2 1
load goods2 truck market2

set load_g2_m3 1
load goods2 truck market3

property loadg2_m2_not_m3
&& load_g2_m2 ! load_g2_m3

property load_g2_m3_not_m2
&& ! load_g2_m2 load_g2_m3








