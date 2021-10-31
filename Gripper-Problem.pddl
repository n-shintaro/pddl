(define (problem Gripper-Problem)
    (:domain Gripper)
    (:objects g1 g2 roomA roomB ball1 ball2 ball3 ball4)
    ; state the initial configuration
    (:init
        (ball ball1)
        (ball ball2)
        (ball ball3)
        (ball ball4)
        (gripper g1)
        (gripper g2)
        (location roomA)
        (location roomB)

        ; locations are connected in a sequential pattern
        (at-rob roomA)
        (at-ball ball1 roomA)
        (at-ball ball2 roomA)
        (at-ball ball3 roomA)
        (at-ball ball4 roomA)
        (gripper-empty g1)
        (gripper-empty g2)
    )
    (:goal
        (and
        (at-ball ball1 roomB)
        (at-ball ball2 roomB)
        (at-ball ball3 roomB)
        (at-ball ball4 roomB)
        )

    )
)