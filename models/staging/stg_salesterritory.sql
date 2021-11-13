with
    source_data as (
        select
            territoryid
            , name
            , countryregioncode
            , salesytd
            , saleslastyear
            , costytd
            , costlastyear	
            , rowguid
            , modifieddate
    
        from {{ source('erp','sales_salesterritory') }}
    )

select * from source_data