(define (domain MoveLBridgesFroads)

    (:requirements :strips)

    (:predicates
        ; we need a predicate to state the location of the agent
        (at ?l)
        ; we need a predicate to state that two locations are connected
        (conn-road ?l1 ?l2)
        (conn-bridge ?l1 ?l2)
        ; we have just locations, no need to have "typing" predicates
        ; to partition objects into disjoint classes
        (Froad)
        (FBridge)
        (visited ?l)
        (non-visited ?l)
    )

    ; we need just one action that moves the agent from a location to another
    (:action move-bridge
        :parameters (?from ?to)
        :precondition (and (at ?from) (conn-bridge ?from ?to)(non-visited ?to)(Froad))
        :effect (and (at ?to)(not (non-visited ?to))(visited ?to)(FBridge)(not (Froad))
                )
    )

    (:action move-road
        :parameters (?from ?to)
        :precondition (and (at ?from) (conn-road ?from ?to)(non-visited ?to))
        :effect (and (at ?to)(not (non-visited ?to))(visited ?to)(Froad)(not (FBridge))
                )
    )
)