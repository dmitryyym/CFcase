-- MS SQL
CREATE PROCEDURE dbo.func
    @account_id INT,
    @session_id INT,
    @product_name VARCHAR(100)
AS
BEGIN
    SELECT 
        t.user_id,
        t.product_type,
        t.user_type
    FROM
    (
        VALUES (1, 'pr_type_1', 'usr_type_1'), (2, 'pr_type_2', 'usr_type_2')
    ) AS t (user_id, product_type, user_type);
    
    SELECT 
        @session_id AS session_id,
        'success' AS status;
    AS query_status (session_id, status);
END;
