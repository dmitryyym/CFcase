-- MS SQL
CREATE FUNCTION dbo.func
(
    @account_id INT, 
    @session_id INT
)
RETURNS INT
AS
BEGIN
    DECLARE @status INT;
    -- Действия
    RETURN @status;
END;