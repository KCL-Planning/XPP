# only use one truck
set useT0 3
load package t0 location
unload package t0 location
drive t0 location location fuellevel fuellevel fuellevel

set useT1 3
load package t1 location
unload package t1 location
drive t1 location location fuellevel fuellevel fuellevel

property one_truck
|| && useT0 ! useT1 && ! useT0 useT1


# use the same truck to deliver package px and py
#T0
set p0_delwithT0 2
unload p0 t0 location
load p0 t0 location

set p1_delwithT0 2
unload p1 t0 location
load p1 t0 location

set p2_delwithT0 2
unload p2 t0 location
load p2 t0 location

#T1
set p0_delwithT1 2
unload p0 t1 location
load p0 t1 location

set p1_delwithT1 2
unload p1 t1 location
load p1 t1 location

set p2_delwithT1 2
unload p2 t1 location
load p2 t1 location


# use the same truck to deliver package px and py (can also be in both trucks)

property same_truck_p0_p1
|| && p0_delwithT0 p1_delwithT0 && p0_delwithT1 p1_delwithT1

property same_truck_p0_p2
|| && p0_delwithT0 p2_delwithT0 && p0_delwithT1 p2_delwithT1

property same_truck_p1_p2
|| && p1_delwithT0 p2_delwithT0 && p1_delwithT1 p2_delwithT1


# use the same truck to deliver package px and py (can only be in one truck)

property same_truck_p0_p1_o1
|| && && && p0_delwithT0 p1_delwithT0 ! p0_delwithT1 ! p1_delwithT1 && && && p0_delwithT1 p1_delwithT1 ! p0_delwithT0 ! p1_delwithT0

property same_truck_p0_p2_o1
|| && && && p0_delwithT0 p2_delwithT0 ! p0_delwithT1 ! p2_delwithT1 && && && p0_delwithT1 p2_delwithT1 ! p0_delwithT0 ! p2_delwithT0

property same_truck_p1_p2_o1
|| && && && p1_delwithT0 p2_delwithT0 ! p1_delwithT1 ! p2_delwithT1 && && && p1_delwithT1 p2_delwithT1 ! p1_delwithT0 ! p2_delwithT0


