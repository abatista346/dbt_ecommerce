with source as (
    select * from {{ ref('customers') }}
)

select
    customer_id,
    name,
    email,
    signup_date
from source
