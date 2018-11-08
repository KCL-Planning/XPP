# take picture of object x with camera y

set camera_o1_c0 1
take_image rover waypoint objective1 camera0 mode

set camera_o1_c1 1
take_image rover waypoint objective1 camera1 mode

set camera_o1_c2 1
take_image rover waypoint objective1 camera2 mode

set camera_o1_c3 1
take_image rover waypoint objective1 camera3 mode


property image_o1_c0
camera_o1_c0

property image_o1_c1
camera_o1_c1

property image_o1_c2
camera_o1_c2

property image_o1_c3
camera_o1_c3

# take picture of object x from waypoint y

set waypoint_o0_wp0 1
take_image rover waypoint0 objective0 camera mode

set waypoint_o0_wp1 1
take_image rover waypoint1 objective0 camera mode

set waypoint_o0_wp2 1
take_image rover waypoint2 objective0 camera mode

set waypoint_o0_wp3 1
take_image rover waypoint3 objective0 camera mode


property image_o0_wp0
&& && && waypoint_o0_wp0 ! waypoint_o0_wp1 ! waypoint_o0_wp2 ! waypoint_o0_wp3




#use rover x to take picture y

set rover_o1_r0 1
take_image rover0 waypoint objective1 camera mode

property image_o1_r0
rover_o1_r0


#take picture of object x and perform soil analysys at waypoint y with the same rover

set use_r0_i_o0_ra_w3 2
take_image rover0 waypoint objective0 camera mode
sample_soil rover0 store waypoint3

set use_r1_i_o0_ra_w3 2
take_image rover1 waypoint objective0 camera mode
sample_soil rover1 store waypoint3

property use_same_rover_i_o1_sa_w2
|| && use_r0_i_o0_ra_w3 ! use_r1_i_o0_ra_w3 && ! use_r0_i_o0_ra_w3 use_r1_i_o0_ra_w3
















