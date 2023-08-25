SELECT 
    schema_name(schema_id) AS schema_name,
    type,
    name    
FROM 
    sys.objects
WHERE
    type IN (
        NULL -- Dummy
        -- ,'AF' -- Aggregate function (CLR)
        -- ,'C'  -- CHECK constraint
        -- ,'D'  -- DEFAULT (constraint or stand-alone)
        -- ,'F'  -- FOREIGN KEY constraint
        ,'FN' -- SQL scalar function
        -- ,'FS' -- Assembly (CLR) scalar-function
        -- ,'FT' -- Assembly (CLR) table-valued function
        -- ,'IF' -- SQL inline table-valued function
        -- ,'IT' -- Internal table
        ,'P'  -- SQL Stored Procedure
        -- ,'PC' -- Assembly (CLR) stored-procedure
        -- ,'PG' -- Plan guide
        -- ,'PK' -- PRIMARY KEY constraint
        -- ,'R'  -- Rule (old-style, stand-alone)
        -- ,'RF' -- Replication-filter-procedure
        -- ,'S'  -- System base table
        -- ,'SN' -- Synonym
        -- ,'SO' -- Sequence object
        ,'U'  -- Table (user-defined)
        ,'V'  -- View
        -- ,'SQ' -- Service queue
        -- ,'TA' -- Assembly (CLR) DML trigger
        ,'TF' -- SQL table-valued-function
        -- ,'TR' -- SQL DML trigger
        -- ,'TT' -- Table type
        -- ,'UQ' -- UNIQUE constraint
        -- ,'X'  -- Extended stored procedure
        -- ,'ST' -- STATS_TREE
        -- ,'ET' -- External Table
        -- ,'EC' -- Edge constraint
    )
ORDER BY 
    schema_name(schema_id),
    type,
    name