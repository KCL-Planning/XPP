# buy goods 0 in market 4/5

set buy_g0_m4 1
buy truck goods0 market4 moneylevel moneylevel moneylevel

set buy_g0_m5 1
buy truck goods0 market5 moneylevel moneylevel moneylevel

set unload_g0 1
unload truck goods0 depot0

property buy_g0_m4
&& && buy_g0_m4  ! buy_g0_m5 unload_g0

property buy_g0_m5
&& && ! buy_g0_m4 buy_g0_m5 unload_g0



# buy goods 1 in market 2/3

set buy_g1_m2 1
buy truck goods1 market2 moneylevel moneylevel moneylevel

set buy_g1_m3 1
buy truck goods1 market3 moneylevel moneylevel moneylevel

set unload_g1 1
unload truck goods1 depot0

property buy_g1_m1
&& && buy_g1_m2 ! buy_g1_m3 unload_g1

property buy_g1_m3
&& && ! buy_g1_m2 buy_g1_m3 unload_g1



# buy goods 2 in market 3/4

set buy_g2_m3 1
buy truck goods2 market3 moneylevel moneylevel moneylevel

set buy_g2_m4 1
buy truck goods2 market4 moneylevel moneylevel moneylevel

set unload_g2 1
unload truck goods2 depot0

property buy_g2_m3
&& && buy_g2_m3 ! buy_g2_m4 unload_g2

property buy_g2_m4
&& && ! buy_g2_m3 buy_g2_m4 unload_g2







