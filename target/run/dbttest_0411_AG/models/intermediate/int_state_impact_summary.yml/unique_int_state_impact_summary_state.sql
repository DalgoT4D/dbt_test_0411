
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

select
    state as unique_field,
    count(*) as n_records

from "destinations_v2"."dev"."int_state_impact_summary"
where state is not null
group by state
having count(*) > 1



  
  
      
    ) dbt_internal_test