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


# use the same truck to deliver package p0 and p1
set p0_p1_delwithT0 4
unload p0 t0 location
unload p1 t0 location
load p0 t0 location
load p1 t0 location

set p0_p1_delwithT1 4
unload p0 t1 location
unload p1 t1 location
load p0 t1 location
load p1 t1 location


property same_truck_p0_p1
|| && p0_p1_delwithT0 ! p0_p1_delwithT1 && ! p0_p1_delwithT0 p0_p1_delwithT1

# use the same truck to deliver package p1 and p2
set p1_p2_delwithT0 4
unload p1 t0 location
unload p2 t0 location
load p1 t0 location
load p2 t0 location

set p1_p2_delwithT1 4
unload p1 t1 location
unload p2 t1 location
load p1 t1 location
load p2 t1 location


property same_truck_p1_p2
|| && p1_p2_delwithT0 ! p1_p2_delwithT1 && ! p1_p2_delwithT0 p1_p2_delwithT1


# use the same truck to deliver package p0 and p2
set p0_p2_delwithT0 4
unload p0 t0 location
unload p2 t0 location
load p0 t0 location
load p2 t0 location

set p0_p2_delwithT1 4
unload p0 t1 location
unload p2 t1 location
load p0 t1 location
load p2 t1 location


property same_truck_p0_p2
|| && p0_p2_delwithT0 ! p0_p2_delwithT1 && ! p0_p2_delwithT0 p0_p2_delwithT1


# do not drive over L1 with druck T1

set d_T1_to_L0 1
drive t1 location l0 fuellevel fuellevel fuellevel

property do_not_drive_t1_to_L0
! d_T1_to_L0


# do not drive over L2 with druck T1

set d_T1_to_L2 1
drive t1 location l2 fuellevel fuellevel fuellevel

property do_not_drive_t1_to_L2
! d_T1_to_L2











