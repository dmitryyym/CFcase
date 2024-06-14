CREATE TRIGGER updateRecruitment
ON students
AFTER INSERT
AS
BEGIN
    DECLARE @naprID INT;
    SELECT @naprID = i.naprID FROM INSERTED i;

    UPDATE n
    SET n.recruitmentFinished = 
        CASE 
            WHEN (
                SELECT COUNT(*)
                FROM students s
                WHERE s.naprID = @naprID AND s.examMark >= (
                    SELECT minMark
                    FROM napr
                    WHERE id = @naprID
                )
            ) >= n.spotsTotal THEN 1
            ELSE 0
        END
    FROM napr n
    WHERE n.id = @naprID
END