with source as (
    select * from {{ ref('products') }}
)

select
    product_id,
    name,
    category,
    price
from source
