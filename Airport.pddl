(define (domain Airport)

    (:requirements :strips)

    (:predicates
        ; we need a predicate to state the location of the agent
        (agent ?a)
        (loc ?l)
        (trans ?t)
        (at-agent ?a ?l)
        (at-trans ?t ?l)

        (in ?a ?t)

        (can-go ?from ?to ?t)
    )

    ; we need just one action that moves the agent from a location to another
    (:action bound
        :parameters (?a ?l ?t)
        :precondition (and (agent ?a)(loc ?l)(trans ?t)(at-agent ?a ?l)(at-trans ?t ?l))
        :effect (and (in ?a ?t)(not (at-trans ?t ?l))
                )
    )

    (:action move
        :parameters (?a ?from ?to ?t)
        :precondition (and (agent ?a)(loc ?to)(loc ?from)(trans ?t)
                        (at-agent ?a ?from)(in ?a ?t)(can-go ?from ?to ?t)
                        )
        :effect (and (at-trans ?t ?to)(not (at-agent ?a ?from))
                )
    )

    (:action unbound
        :parameters (?a ?l ?t)
        :precondition (and (agent ?a)(loc ?l)(trans ?t)(at-trans ?t ?l)(in ?a ?t))
        :effect (and (not (in ?a ?t))(at-agent ?a ?l)
                )
    )
)