(define (domain MoveAgentVBR)

    (:requirements :strips)

    (:predicates
        ; we need a predicate to state the location of the agent
        (agent ?a)
        (loc ?l)
        (at ?a ?l)
        ; we need a predicate to state that two locations are connected
        (conn-road ?l1 ?l2)
        (conn-bridge ?l1 ?l2)
        ; we have just locations, no need to have "typing" predicates
        ; to partition objects into disjoint classes
        (can-road ?a)
        (can-bridge ?a)
        (visited ?l)
    )

    ; we need just one action that moves the agent from a location to another
    (:action move-bridge
        :parameters (?a ?from ?to)
        :precondition (and (agent ?a)(loc ?to)(loc ?from)(at ?a ?from) (conn-bridge ?from ?to)(can-bridge ?a))
        :effect (and (at ?a ?to)(visited ?to)(not (at ?a ?from))
                )
    )

    (:action move-road
        :parameters (?a ?from ?to)
        :precondition (and (agent ?a)(loc ?to)(loc ?from)(at ?a ?from) (conn-road ?from ?to)(can-road ?a))
        :effect (and (at ?a ?to)(visited ?to)(not (at ?a ?from))
                )
    )
)