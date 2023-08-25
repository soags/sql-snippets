SELECT 
    schema_name(t.schema_id) AS SchemaName,
    t.name AS TableName,
    i.rows AS Rows
FROM 
    sys.objects AS t
INNER JOIN 
    sys.sysindexes AS i ON t.object_id = i.id AND i.indid < 2
WHERE 
    t.type = 'U'
ORDER BY 
    schema_name(t.schema_id),
    t.name