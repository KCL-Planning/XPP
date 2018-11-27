# only use one truck

# P0 and P2 can be deliverd with any of the two truck 
# P1 can only be deliverd with T0

#property one_truck
#|| [] ! || || in(p0,t0) in(p1,t0) in(p2,t0) [] ! || || in(p0,t1) in(p1,t1) in(p2,t1)


property only_T0
[] ! || || in(p0,t1) in(p1,t1) in(p2,t1)

property only_T1
[] ! || || in(p0,t0) in(p1,t0) in(p2,t0)


# use the same truck to deliver package p0 and p1
property same_truck_p0_p1
|| && [] ! in(p1,t1) [] ! in(p0,t1)  && [] ! in(p1,t0) [] ! in(p0,t0)


# use the same truck to deliver package p0 and p2
property same_truck_p0_p2
|| && [] ! in(p0,t1) [] ! in(p2,t1)  && [] ! in(p0,t0) [] ! in(p2,t0)

# use the same truck to deliver package p1 and p2
property same_truck_p1_p2
|| && [] ! in(p1,t1) [] ! in(p2,t1)  && [] ! in(p1,t0) [] ! in(p2,t0)


# do not drive over L1 with druck T1

property do_not_drive_t1_to_L0
[] ! at(t1,l0)


# do not drive over L2 with druck T1

property do_not_drive_t1_to_L2
[] ! at(t1,l2)








