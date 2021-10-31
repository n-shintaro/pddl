(define (problem Aiport-Problem)
    (:domain Airport)
    (:objects a home airportA airportB car airplane)
    ; state the initial configuration
    (:init
        ; the agent starts from location 1
        (agent a)
        (location home)
        (location airportA)
        (location airportB)
        (transport car)
        (transport airplane)

        ; locations are connected in a sequential pattern
        (at-loc a home)(at-transport car home)(at-transport airplane airportA)
        (can-go home airportA car)(can-go airportA airportB airplane)
    )
    (:goal (at-loc a airportB))
)