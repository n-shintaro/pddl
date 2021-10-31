(define (problem HanoiProblem)

    ; the problem must refer to a specific domain
    (:domain Hanoi)
    ; list the objects of the domain: four locations
    (:objects dis1 dis2 dis3 pig1 pig2 pig3)
    ; state the initial configuration
    (:init
        (clear dis1)(clear pig2)(clear pig3)
        (on dis1 dis2)(on dis2 dis3)(on dis3 pig1)
        (smaller dis1 dis2)(smaller dis1 dis3)(smaller dis1 pig1)(smaller dis1 pig2)(smaller dis1 pig3)
        (smaller dis2 dis3)(smaller dis2 pig1)(smaller dis2 pig2)(smaller dis2 pig3)
        (smaller dis3 pig1)(smaller dis3 pig2)(smaller dis3 pig3)
    )

    (:goal (and (on dis1 dis2)(on dis2 dis3)(on dis3 pig3)
        ))
)