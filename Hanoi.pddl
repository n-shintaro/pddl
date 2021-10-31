(define (domain Hanoi)

    (:requirements :strips)

    (:predicates
        (clear ?d)
        (on ?d1 ?d2)
        (smaller ?d1 ?d2)

    )

    ; we need just one action that moves the agent from a location to another
    (:action move
        :parameters (?d1 ?d2 ?destination)
        :precondition (and (clear ?d1)(clear ?destination)(on ?d1 ?d2)(smaller ?d1 ?destination))
        :effect (and (clear ?d2)(not (clear ?destination))(on ?d1 ?destination)
                )
    )
)