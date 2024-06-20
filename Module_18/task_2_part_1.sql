-- MS SQL
CREATE FUNCTION dbo.func
(
    @account_id INT,
    @session_id INT,
    @product_name VARCHAR(100)
)
RETURNS @table TABLE
(
    user_id INT,
    product_type VARCHAR(100),
    user_type VARCHAR(100),
    session_id INT,
    status INT
) 
AS
BEGIN
    -- Действия
    RETURN;
END;
