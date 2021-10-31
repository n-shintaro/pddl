(define (problem gripper-four-balls)
    
    (:domain gripper)
    
    (:objects
        roomA roomB
        ball1 ball2 ball3 ball4
        left right
    )
    
    (:init
        (ROOM roomA)
        (ROOM roomB)
        (BALL ball1)
        (BALL ball2)
        (BALL ball3)
        (BALL ball4)
        (GRIPPER left)
        (GRIPPER right)
        (at-robby roomA)
        (free left)
        (free right)
        (at-ball ball1 roomA)
        (at-ball ball2 roomA)
        (at-ball ball3 roomA)
        (at-ball ball4 roomA)
    )
    
    (:goal (and (at-ball ball1 roomB)
                (at-ball ball2 roomB)
                (at-ball ball3 roomB)
                (at-ball ball4 roomB))
    )

)