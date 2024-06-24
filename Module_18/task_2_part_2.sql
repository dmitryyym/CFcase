-- PG SQL
CREATE FUNCTION main.func
(
    account_id INT, 
    in_session_id INT, 
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
        1 AS user_id,
        'prodcut_type' AS product_type,
        'user_type' AS user_type,
        in_session_id AS session_id,
        'success' AS status;
END;
$body$;
