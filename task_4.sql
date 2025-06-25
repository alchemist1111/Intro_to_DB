-- USE the alx_book_store database
USE alx_book_store;

-- Query to get the full description of the 'books' table from INFORMATION_SCHEMA
SELECT 
    COLUMN_NAME, 
    COLUMN_TYPE, 
    IS_NULLABLE, 
    COLUMN_DEFAULT, 
    EXTRA
FROM 
    INFORMATION_SCHEMA.COLUMNS
WHERE 
    TABLE_SCHEMA = 'alx_book_store'
    AND TABLE_NAME = 'Books';
