(define (problem BlockWorld-Problem)
    (:domain BlockWorld)
    (:objects block1 block2 block3 block4)
    ; state the initial configuration
    (:init
        ; locations are connected in a sequential pattern
        (clear block1)
        (on block1 block2)
        (on block2 block3)
        (on block3 block4)
        (on-table block4)
        (arm-empty)
    )
    (:goal
        (and
        (clear block4)
        (on block4 block3)
        (on block3 block2)
        (on block2 block1)
        (on-table block1)
        )
    )
)