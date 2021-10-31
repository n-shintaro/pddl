(define (problem MAgentVBRProblem)

    ; the problem must refer to a specific domain
    (:domain MoveAgentVBR)
    ; list the objects of the domain: four locations
    (:objects a1 a2 l1 l2 l3 l4)
    ; state the initial configuration
    (:init
        ; the agent starts from location 1
        (agent a1)
        (agent a2)
        (loc l1)
        (loc l2)
        (loc l3)
        (loc l4)
        ; locations are connected in a sequential pattern
        (conn-bridge l1 l2) (conn-bridge l2 l3)
        (conn-road l1 l2) (conn-road l2 l3) (conn-road l3 l4)
        (at a1 l1)(at a2 l2)
        (can-road a1)(can-bridge a1)
        (visited l1)
    )

    (:goal (and (visited l1)(visited l2)(visited l3)(visited l4)))
)