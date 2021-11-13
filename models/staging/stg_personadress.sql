with
    source_data as (
        select
            addressid		
            , addressline1		
            , addressline2		
            , city	
            , stateprovinceid		
            , postalcode	
            , spatiallocation		
            , rowguid	
            , modifieddate	
    
        from {{ source('erp','person_address') }}
    )

select * from source_data