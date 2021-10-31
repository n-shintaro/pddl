(define (domain Gripper)
    (:requirements :strips)

    (:predicates
        (ball ?b)
        (location ?r)
        (gripper ?g)
        (at-rob ?r)
        (at-ball ?b ?r)
        (gripper-empty ?g)
        (holding ?g ?b)
    )

    ; An action to pickup a block (from the table)
    (:action pickup
        :parameters (?r ?b ?g)
        :precondition (and (ball ?b)(location ?r)(gripper ?g)
                        (at-rob ?r) (at-ball ?b ?r) (gripper-empty ?g))
        :effect (and (holding ?g ?b)
                     (not (gripper-empty ?g))(not (at-ball ?b ?r))
                )
    )

    ; An action to put down a block (to the table)
    (:action putdown
        :parameters (?r ?b ?g)
        :precondition (and (ball ?b)(location ?r)(gripper ?g)
                        (at-rob ?r)
                        (holding ?g ?b)
                        )
        :effect (and (at-ball ?b ?r) (gripper-empty ?g)
                     (not (holding ?g ?b)))
    )

    ; An action to pickup a block x from another block y
    (:action move
        :parameters (?from ?to)
        :precondition (and (location ?from)(location ?to)(at-rob ?from))
        :effect (and (at-rob ?to)(not (at-rob ?from)))
    )
)