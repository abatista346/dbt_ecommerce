select
    customer_id,
    name,
    email,
    signup_date
from {{ ref('stg_customers') }}
