(define (problem AirportProblem)

    ; the problem must refer to a specific domain
    (:domain Airport)
    ; list the objects of the domain: four locations
    (:objects a home airportA airportB car airplane)
    ; state the initial configuration
    (:init
        (agent a)
        (loc home)(loc airportA)(loc airportB)
        (trans car)(trans airplane)
        (at-agent a home)
        (at-trans car home)(at-trans airplane airportA)

        (can-go home airportA car)(can-go airportA airportB airplane)
    )

    (:goal (and (at-agent a airportB)
        )
    )
)