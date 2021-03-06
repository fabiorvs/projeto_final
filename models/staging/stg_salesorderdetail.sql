with
    source_data as (
        select
            salesorderid		
            , salesorderdetailid		
            , carriertrackingnumber		
            , orderqty	
            , productid		
            , specialofferid		
            , unitprice		
            , unitpricediscount	
            , rowguid	
            , modifieddate		
    
        from {{ source('erp','sales_salesorderdetail') }}
    )

select * from source_data