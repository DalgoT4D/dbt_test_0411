
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select state
from "destinations_v2"."dev"."int_state_impact_summary"
where state is null



  
  
      
    ) dbt_internal_test