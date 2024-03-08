## this should be the default panda we use on the real system
#  with NO dofs for the gripper

Include: '../panda/panda.g'

# modify default home pose

Edit panda_joint2 { q= -.5 }
Edit panda_joint4 { q= -2 }

# delete original gripper

Delete panda_link8>panda_hand_joint
Delete panda_hand_joint
Delete panda_hand_1
Delete panda_hand_0
Delete panda_hand>panda_finger_joint1
Delete panda_hand>panda_finger_joint2
Delete panda_finger_joint1
Delete panda_finger_joint2
Delete panda_leftfinger_1
Delete panda_leftfinger_0
Delete panda_rightfinger_1
Delete panda_rightfinger_0
Delete panda_coll_hand
Delete panda_coll_finger1
Delete panda_coll_finger2

Delete gripper
Delete palm
Delete finger1
Delete finger2
        
# add robotiq
Include: '../robotiq/robotiq.g'
Edit robotiq_base (panda_joint8) { Q:[0 0 .035] }

# kill the finger joint
#Edit panda_joint8 { joint:none }
#Edit finger_joint { joint:none }
#Edit left_inner_knuckle_joint { joint:none }
#Edit right_inner_knuckle_joint { joint:none }
#Edit right_outer_knuckle_joint { joint:none }
#Edit left_inner_finger_joint { joint:none }
#Edit right_inner_finger_joint { joint:none }
        
