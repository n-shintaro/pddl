(define (problem BasicUnvisVis-four)

    ; the problem must refer to a specific domain
    (:domain BasicUnvisVis)
    ; list the objects of the domain: four locations
    (:objects l1 l2 l3 l4)
    ; state the initial configuration
    (:init
        ; the agent starts from location 1
        (at l1)
        ; locations are connected in a sequential pattern
        (conn l1 l2) (conn l2 l3) (conn l3 l4)
        (non-visited l1)(non-visited l2)(non-visited l3)(non-visited l4)
    )

    (:goal (and (at l1)(visited l1)(visited l2)(visited l3)(visited l4)))
)