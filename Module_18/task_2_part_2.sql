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
    -- Действия
END;
$body$;
