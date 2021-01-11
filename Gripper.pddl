(define (domain Gripper)
    
    ; Just a comment
    (:requirements :strips)
    
    (:predicates
        (ROOM ?r)
        (HeavyBall ?b); object=ball
        (LightBall ?l)
        (GRIPPER ?g)
        (at-robby ?r)
        (free ?g)
        (carry ?b ?g)
        (at-heavy ?b ?r)
        (at-light ?b ?r)
    )
    
    (:action move
        :parameters (?from ?to)
        :precondition (and (ROOM ?from) (ROOM ?to)
                            (at-robby ?from))
        :effect (and (at-robby ?to) (not (at-robby ?from)))
    )

    (:action pick-up-light
        :parameters (?b ?r ?g)
        :precondition (and (LightBall ?b) (ROOM ?r) (GRIPPER ?g)
                            (at-light ?b ?r)(at-robby ?r) (free ?g))
        :effect (and (carry ?b ?g) (not (at-light ?b ?r))
                        (not (free ?g))
                )
    )

    (:action drop-light
        :parameters (?b ?r ?g)
        :precondition (and (LightBall ?b) (ROOM ?r) (GRIPPER ?g)
                            (carry ?b ?g) (at-robby ?r)
                        )
        :effect (and (at-light ?b ?r)(free ?g)
                      (not (carry ?b ?g)))
    )

    (:action pick-up-heavy
        :parameters (?b ?r ?g1 ?g2)
        :precondition (and (HeavyBall ?b) (ROOM ?r) (GRIPPER ?g1) (GRIPPER ?g2)
                            (at-heavy ?b ?r)(at-robby ?r) (free ?g1)(free ?g2))
        :effect (and (carry ?b ?g1)(carry ?b ?g2)(not (at-heavy ?b ?r))
                        (not (free ?g1))(not (free ?g2))
                )
    )

    (:action drop-heavy
        :parameters (?b ?r ?g1 ?g2)
        :precondition (and (HeavyBall ?b) (ROOM ?r) (GRIPPER ?g1)(GRIPPER ?g2)
                            (carry ?b ?g1)(carry ?b ?g2) (at-robby ?r)
                        )
        :effect (and (at-heavy ?b ?r)(free ?g1)(free ?g2)
                      (not (carry ?b ?g1))(not (carry ?b ?g2))
                )
    )
)