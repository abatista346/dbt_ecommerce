select
    product_id,
    name,
    category,
    price
from {{ ref('stg_products')}}