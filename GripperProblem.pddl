(define (problem GripperProblem)
    
    (:domain Gripper)
    
    (:objects
        room1 room2 room3 room4
        ball2h ball2l
        ball3h ball3l
        left right
    )
    
    (:init
        (ROOM room1)
        (ROOM room2)
        (ROOM room3)
        (ROOM room4)
        (HeavyBall ball2h)
        (LightBall ball2l)
        (HeavyBall ball3h)
        (LightBall ball3l)

        (GRIPPER left)
        (GRIPPER right)
        (at-robby room1)
        (free left)
        (free right)
        (at-heavy ball2h room2)
        (at-light ball2l room2)
        (at-heavy ball3h room3)
        (at-light ball3l room3)

    )
    
    (:goal (and
            (at-heavy ball2h room4)
            (at-light ball2l room4)
            (at-heavy ball3h room4)
            (at-light ball3l room4)
            )
    )

)