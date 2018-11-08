# take picture of object x with camera y
set camera_o1_c0 1
take_image rover waypoint objective1 camera0 mode

set camera_o1_c1 1
take_image rover waypoint objective1 camera1 mode


property image_o1_c0
&& camera_o1_c0 ! camera_o1_c1

property image_o1_c1
&& ! camera_o1_c0 camera_o1_c1

# take picture of object x with rover y
set camera_o1_r0 1
take_image rover0 waypoint objective1 camera mode

set camera_o1_r1 1
take_image rover1 waypoint objective1 camera mode

property image_o1_r0
&& camera_o1_r0 ! camera_o1_r1

property image_o1_r1
&& ! camera_o1_r0 camera_o1_r1


# take picture of object x from waypoint y

set waypoint_o1_wp0 1
take_image rover waypoint0 objective1 camera mode

set waypoint_o1_wp1 1
take_image rover waypoint1 objective1 camera mode

set waypoint_o1_wp3 1
take_image rover waypoint3 objective1 camera mode


property image_o1_wp0
&& && waypoint_o1_wp0 ! waypoint_o1_wp1 ! waypoint_o1_wp3

property image_o1_wp1
&& && ! waypoint_o1_wp0 waypoint_o1_wp1 ! waypoint_o1_wp3

property image_o1_wp3
&& && ! waypoint_o1_wp0 ! waypoint_o1_wp1 waypoint_o1_wp3



#take picture of object 1 and perform soil analysys at waypoint 0 with the same rover

set ss_r0_w0 1
sample_soil rover0 store waypoint0

set ss_r1_w0 1
sample_soil rover1 store waypoint0

property use_same_rover_i_o1_sa_w0
|| &&  && && ss_r0_w0 camera_o1_r0 ! ss_r1_w0 ! camera_o1_r1 &&  && && ! ss_r0_w0 ! camera_o1_r0 ss_r1_w0 camera_o1_r1
















