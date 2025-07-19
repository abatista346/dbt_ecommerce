with source as (
    select * from {{ ref('orders') }}
)

select
    order_id,
    customer_id,
    product_id,
    order_date,
    total_amount,
from source
