CREATE PROCEDURE GetStudentsByNaprID
    @naprID INT
AS
BEGIN
    IF NOT EXISTS (SELECT * FROM napr WHERE id = @naprID)
    BEGIN
        Select 'Некорректный код направления' AS Ошибка
        RETURN
    END
	ELSE
    BEGIN
        SELECT
            STRING_AGG(s.surname, ', ') AS [Зачисленные студенты],
            n.name AS Направление
        FROM 
            students s
        INNER JOIN 
            napr n 
        ON s.naprID = n.id
        WHERE n.id = @naprID AND s.examMark > n.minMark
        GROUP BY n.name
    END
END
