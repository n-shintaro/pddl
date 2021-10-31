(define (domain gripper)
    
    ; Just a comment
    (:requirements :strips)
    
    (:predicates 
        (ROOM ?r)
        (BALL ?b)
        (GRIPPER ?g)
        (at-robby ?r)
        (at-ball ?b ?r)
        (free ?g)
        (carry ?b ?g)
    )
    
    (:action move
        :parameters (?from ?to)
        :precondition (and (ROOM ?from) (ROOM ?to) 
                            (at-robby ?from))
        :effect (and (at-robby ?to) (not (at-robby ?from)))
    )

    (:action pick-up
        :parameters (?b ?r ?g)
        :precondition (and (BALL ?b) (ROOM ?r) (GRIPPER ?g)
                            (at-ball ?b ?r) (at-robby ?r) (free ?g))
        :effect (and (carry ?b ?g) (not (at-ball ?b ?r))
                        (not (free ?g)))
    )
    
    (:action drop
        :parameters (?b ?r ?g)
        :precondition (and (BALL ?b) (ROOM ?r) (GRIPPER ?g)
                            (carry ?b ?g) (at-robby ?r))
        :effect (and (at-ball ?b ?r) (free ?g)
                      (not (carry ?b ?g)))
    )
)