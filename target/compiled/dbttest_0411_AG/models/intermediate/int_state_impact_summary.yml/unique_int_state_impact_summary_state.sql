
    
    

select
    state as unique_field,
    count(*) as n_records

from "destinations_v2"."dev"."int_state_impact_summary"
where state is not null
group by state
having count(*) > 1


