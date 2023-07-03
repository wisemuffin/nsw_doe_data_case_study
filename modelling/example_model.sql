-- due to duckdb sqltools 
create view example_model as
select *, 'annother_transformation' as annother_transformation
from public_school_nsw_master_dataset