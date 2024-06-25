-- PG SQL
CREATE FUNCTION main.func
(
    account_id INT, 
    in_session_id INT, 
    product_name VARCHAR
) 
RETURNS TABLE
(
    first_query JSON
    second_query JSON
)
LANGUAGE plpgsql 
AS $body$
DECLARE
    first_select JSON;
    second_select JSON;
BEGIN
    SELECT json_agg(t)
    FROM
    (
        SELECT 
            t.user_id,
            t.product_type,
            t.user_type
        FROM
        (
            VALUES (1, 'pr_type_1', 'usr_type_1'), (2, 'pr_type_2', 'usr_type_2')
        )
        AS t (user_id, product_type, user_type)
    ) AS t INTO first_select;

    SELECT json_agg(s)
    FROM
    (
        SELECT
            in_session_id AS session_id,
            'success' AS status
        AS s (session_id, status)
    ) AS query_status INTO second_select;

    RETURN QUERY
    SELECT 
        first_select,
        second_select;
END;
$body$;
