(define (domain BlockWorld)
    (:requirements :strips)

    (:predicates
        (clear ?b)
        (on ?b1 ?b2)
        (on-table ?b)
        (arm-empty)
        (holding ?b)
    )

    (:action pickup ; An action to pickup a block (from the table)
        :parameters (?b)
        :precondition (and (clear ?b)(on-table ?b)(arm-empty))
        :effect (and (holding ?b)
                     (not (arm-empty))(not (on-table ?b))
                )
    )

    ; An action to put down a block (to the table)
    (:action putdown
        :parameters (?b)
        :precondition (and (holding ?b))
        :effect (and (on-table ?b)(arm-empty)(clear ?b)
                     (not (holding ?b)))
    )

    ; An action to pickup a block x from another block y
    (:action unstack
        :parameters (?b1 ?b2)
        :precondition (and (clear ?b1)(on ?b1 ?b2)(arm-empty))
        :effect (and (clear ?b2)(not (on ?b1 ?b2))(not (arm-empty))(holding ?b1)
                )
    )

    (:action stack
        :parameters (?b1 ?b2)
        :precondition (and (clear ?b2)(holding ?b1))
        :effect (and (clear ?b1)(not (clear ?b1))(on ?b1 ?b2)(arm-empty)(not (holding ?b1))
                )
    )
)