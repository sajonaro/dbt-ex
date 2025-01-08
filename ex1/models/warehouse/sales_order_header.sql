SELECT 
    salesorderid, 
    revisionnumber, 
    orderdate, 
    duedate, 
    shipdate, 
    status, 
    onlineorderflag, 
    purchaseordernumber,  
    subtotal, 
    taxamt, 
    freight, 
    totaldue, 
    rowguid as row_id,
    modifieddate
FROM {{ source('sales', 'salesorderheader') }}

-- https://docs.getdbt.com/reference/dbt-jinja-functions/source?source=post_page-----28e335be5f7e--------------------------------