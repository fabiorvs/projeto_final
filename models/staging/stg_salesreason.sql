with
    source_data as (
        select
            salesreasonid	
            , name	
            , reasontype
            
        from {{ source('erp','sales_salesreason') }}
    )

    , source_data_2 as (
        select
            salesorderid	
            , salesreasonid	
    
        from {{ source('erp','sales_salesorderheadersalesreason') }}
    )

select source_data_2.salesorderid, source_data.* 
from source_data_2 
inner join source_data on source_data_2.salesreasonid	=  source_data.salesreasonid