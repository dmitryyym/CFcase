-- PG SQL 
CREATE FUNCTION main.func
(
    account_id INT, 
    session_id INT 
) RETURNS INT
LANGUAGE plpgsql 
AS $body$ 
DECLARE 
    status INT;
BEGIN
    -- Действия
    RETURN status;
END;
$body$;