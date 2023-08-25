SELECT SETVAL('<table_name>_<column_name>_seq', (SELECT COALESCE(MAX(<column_name>), 0) + 1 FROM <table_name>), false)
