(define (domain Airport)

    (:requirements :strips)

    (:predicates
        (agent ?a)
        (location ?l)
        (transport ?t)
        (at-loc ?a ?l)
        (at-transport ?t ?l)
        (on-board ?a ?t)
        (can-go ?from ?to ?t)
    )

    (:action board
        :parameters (?a ?l ?t)
        :precondition (and (agent ?a)(location ?l)(transport ?t)
                        (at-loc ?a ?l) (at-transport ?t ?l)
                    )
        :effect (and (on-board ?a ?t))
    )

    (:action move
        :parameters (?a ?from ?to ?t)
        :precondition (and (agent ?a)(location ?from)(location ?to)(transport ?t)
                            (at-loc ?a ?from)(can-go ?from ?to ?t)(at-transport ?t ?from)(on-board ?a ?t)
                        )
        :effect (and (at-loc ?a ?to) (not (at-loc ?a ?from))
                )
    )

    (:action un-board
        :parameters (?a ?l ?t)
        :precondition (and (agent ?a)(location ?l)(transport ?t)
                        (at-loc ?a ?l) (at-transport ?t ?l)
                    )
        :effect (and (not(on-board ?a ?t)))
    )
)