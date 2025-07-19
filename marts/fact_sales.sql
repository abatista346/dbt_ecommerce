select
    o.order_id,
    o.customer_id,
    o.product_id,
    o.order_date,
    o.total_amount,
    c.name as customer_name,
    p.name as product_name
from {{ ref('stg_orders') }} o
left join {{ ref('stg_customers') }} c using (customer_id)
left join {{ ref('stg_products') }} p using (product_id)
