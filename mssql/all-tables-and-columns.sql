SELECT
    schema_name(o.schema_id) AS SchemaName,
    o.name AS TableName, 
    c.name AS ColumnName,
    t.name as Type,
    c.max_length AS MaxLength,
    c.precision AS Percision,
    c.scale AS Scale,    
    ISNULL(i.is_primary_key, 0) as 'Primary Key',
    c.is_identity AS 'Identity',
    c.is_nullable AS Nullable   
FROM
    sys.objects o
INNER JOIN 
    sys.columns c ON o.object_id = c.object_id
INNER JOIN 
    sys.types t ON c.user_type_id = t.user_type_id
LEFT OUTER JOIN 
    sys.index_columns ic ON ic.object_id = c.object_id AND ic.column_id = c.column_id
LEFT OUTER JOIN 
    sys.indexes i ON ic.object_id = i.object_id AND ic.index_id = i.index_id
WHERE
    o.type = 'U'
ORDER BY
    schema_name(o.schema_id),
    o.name,
    c.column_id