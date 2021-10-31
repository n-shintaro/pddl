(define (problem MoveBR-Problem)

    ; the problem must refer to a specific domain
    (:domain MoveLBridgesFroads)
    ; list the objects of the domain: four locations
    (:objects l1 l2 l3 l4)
    ; state the initial configuration
    (:init
        ; the agent starts from location 1
        (at l1)
        ; locations are connected in a sequential pattern
        (conn-bridge l1 l2) (conn-bridge l2 l3)(conn-bridge l4 l1)
        (conn-road l1 l2) (conn-road l2 l3) (conn-road l3 l4)
        (non-visited l1)(non-visited l2)(non-visited l3)(non-visited l4)
    )

    (:goal (and (at l1)(visited l1)(visited l2)(visited l3)(visited l4)(FBridge)))
)