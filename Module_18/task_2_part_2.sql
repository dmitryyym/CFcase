-- PG SQL
CREATE FUNCTION main.func
(
    account_id INT, 
    session_id INT, 
    product_name VARCHAR
) 
RETURNS TABLE
(
    user_id INT, 
    product_type VARCHAR, 
    user_type VARCHAR, 
    session_id INT, 
    status INT
) 
LANGUAGE plpgsql 
AS $body$
BEGIN
    RETURN QUERY
    SELECT 
        user_id,
        product_type,
        user_type,
        session_id,
        status
    FROM 
        my_table
    WHERE 
        my_table.account_id = account_id AND my_table.product_name = product_name;
END;
$body$;
