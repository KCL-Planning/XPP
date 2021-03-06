
(define (problem roverprob6232)
        (:domain rover)
        (:objects general - lander colour - mode high_res - mode low_res - mode
         rover0 - rover rover1 - rover rover0store - store rover1store - store
         waypoint0 - waypoint waypoint1 - waypoint waypoint2 - waypoint
         waypoint3 - waypoint camera0 - camera camera1 - camera camera2 -
         camera objective0 - objective objective1 - objective objective2 -
         objective)
        (:init (visible waypoint1 waypoint0) (visible waypoint0 waypoint1)
         (visible waypoint2 waypoint1) (visible waypoint1 waypoint2)
         (visible waypoint2 waypoint3) (visible waypoint3 waypoint2)
         (visible waypoint3 waypoint1) (visible waypoint1 waypoint3)
         (at_rock_sample waypoint1) (at_soil_sample waypoint2)
         (at_soil_sample waypoint3) (at_rock_sample waypoint3)
         (at_lander general waypoint2) (channel_free general)
         (at rover0 waypoint3) (available rover0) (store_of rover0store rover0)
         (empty rover0store) (equipped_for_soil_analysis rover0)
         (equipped_for_imaging rover0)
         (can_traverse rover0 waypoint3 waypoint1)
         (can_traverse rover0 waypoint1 waypoint3) (at rover1 waypoint2)
         (available rover1) (store_of rover1store rover1) (empty rover1store)
         (equipped_for_soil_analysis rover1)
         (equipped_for_rock_analysis rover1) (equipped_for_imaging rover1)
         (can_traverse rover1 waypoint2 waypoint1)
         (can_traverse rover1 waypoint1 waypoint2)
         (can_traverse rover1 waypoint2 waypoint3)
         (can_traverse rover1 waypoint3 waypoint2)
         (can_traverse rover1 waypoint1 waypoint0)
         (can_traverse rover1 waypoint0 waypoint1) (on_board camera0 rover1)
         (calibration_target camera0 objective0) (supports camera0 colour)
         (supports camera0 high_res) (on_board camera1 rover0)
         (calibration_target camera1 objective0) (supports camera1 colour)
         (supports camera1 low_res) (on_board camera2 rover0)
         (calibration_target camera2 objective1) (supports camera2 low_res)
         (visible_from objective0 waypoint0)
         (visible_from objective0 waypoint1)
         (visible_from objective0 waypoint2)
         (visible_from objective0 waypoint3)
         (visible_from objective1 waypoint0)
         (visible_from objective1 waypoint1)
         (visible_from objective2 waypoint0)
         (visible_from objective2 waypoint1)
         (visible_from objective2 waypoint2))
        (:goal
         (and (communicated_soil_data waypoint3)
              (communicated_rock_data waypoint1)
              (communicated_image_data objective0 high_res)))
        (:constraints
         (and (preference a0 (always (at rover0 waypoint3)))
              (preference e0 (sometime (at rover1 waypoint3)))
              (preference e1 (sometime (at rover0 waypoint1)))
              (preference e2 (sometime (full rover1store)))
              (preference e3 (sometime (full rover0store)))
              (preference e4 (sometime (calibrated camera0 rover1)))
              (preference o0 (at-most-once (at rover1 waypoint2)))
              (preference o1 (at-most-once (empty rover1store)))
              (preference o2 (at-most-once (empty rover0store)))
              (preference sb0
               (sometime-before (at rover1 waypoint1) (at rover1 waypoint3)))
              (preference sb2
               (sometime-before (at rover1 waypoint1) (full rover0store)))
              (preference sb4
               (sometime-before (at rover1 waypoint1)
                (calibrated camera0 rover1)))
              (preference sb6
               (sometime-before (have_soil_analysis rover0 waypoint3)
                (at rover1 waypoint1)))
              (preference sb7
               (sometime-before (have_soil_analysis rover0 waypoint3)
                (full rover1store)))
              (preference sb13
               (sometime-before (have_rock_analysis rover1 waypoint1)
                (at rover0 waypoint1)))
              (preference sb15
               (sometime-before (have_rock_analysis rover1 waypoint1)
                (full rover0store)))
              (preference sb21
               (sometime-before (have_image rover1 objective0 high_res)
                (full rover1store)))
              (preference sb22
               (sometime-before (have_image rover1 objective0 high_res)
                (full rover0store)))
              (preference sb23
               (sometime-before (have_image rover1 objective0 high_res)
                (have_soil_analysis rover0 waypoint3)))))
        (:metric minimize
         (+ (* (is-violated sb23) 5.42857)
            (* (is-violated sb22) 5.42857)
            (* (is-violated sb21) 7.6)
            (* (is-violated sb15) 5.42857)
            (* (is-violated sb13) 5.42857)
            (* (is-violated sb7) 7.6)
            (* (is-violated sb6) 7.6)
            (* (is-violated sb4) 5.42857)
            (* (is-violated sb2) 5.42857)
            (* (is-violated sb0) 8.68571)
            (* (is-violated o2) 5.42857)
            (* (is-violated o1) 5.42857)
            (* (is-violated o0) 5.42857)
            (* (is-violated e4) 5.42857)
            (* (is-violated e3) 5.42857)
            (* (is-violated e2) 5.42857)
            (* (is-violated e1) 5.42857)
            (* (is-violated e0) 5.42857)
            (* (is-violated a0) 7.6)
	)))
