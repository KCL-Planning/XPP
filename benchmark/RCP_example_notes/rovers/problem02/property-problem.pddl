# take picture of object x with camera y

set camera_o1_c0 1
take_image rover waypoint objective1 camera0 mode

set camera_o1_c2 1
take_image rover waypoint objective1 camera2 mode

set camera_o1_c1 1
take_image rover waypoint objective1 camera1 mode

set camera_o1_c3 1
take_image rover waypoint objective1 camera3 mode

property image_o1_c0
camera_o1_c0

property image_o1_c2
camera_o1_c2

property image_o1_c1
camera_o1_c1

property image_o1_c3
camera_o1_c3

#take image of object 1 with robot 1
set camera_o1_r1 1
take_image rover1 waypoint objective1 camera mode

property image_o1_r1
camera_o1_r1

set camera_o1_r0 1
take_image rover0 waypoint objective1 camera mode

property image_o1_r0
camera_o1_r0


# take picture of object 1 from waypoint 4

set waypoint_o1_wp4 1
take_image rover waypoint4 objective1 camera mode

set waypoint_o1_wp1 1
take_image rover waypoint1 objective1 camera mode

set waypoint_o1_wp2 1
take_image rover waypoint2 objective1 camera mode


property image_o1_wp1
&& && ! waypoint_o1_wp4 waypoint_o1_wp1 ! waypoint_o1_wp2

property image_o1_wp2
&& && ! waypoint_o1_wp4 ! waypoint_o1_wp1 waypoint_o1_wp2

property image_o1_wp4
&& && waypoint_o1_wp4 ! waypoint_o1_wp1 ! waypoint_o1_wp2



#take picture of object 1 and perform soil analysys at waypoint 1 with the same rover

set ss_r0_w1 1
sample_soil rover0 store waypoint1

set ss_r1_w1 1
sample_soil rover1 store waypoint1

property use_same_rover_i_o1_sa_w1
|| &&  && && ss_r0_w1 camera_o1_r0 ! ss_r1_w1 ! camera_o1_r1 &&  && && ! ss_r0_w1 ! camera_o1_r0 ss_r1_w1 camera_o1_r1










