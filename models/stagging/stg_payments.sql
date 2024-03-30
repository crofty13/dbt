select
    id as payment_id,
    orderid as order_id,
    PAYMENTMETHOD as payment_method,
    status,
    amount,
    created AS transaction_time


from {{ source('stripe_payments', 'payment') }}