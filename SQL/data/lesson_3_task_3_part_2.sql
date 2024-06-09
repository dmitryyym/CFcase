MERGE INTO students AS s
USING (
    SELECT
        s.id AS studID,
        n.id AS naprID
    FROM
        students s
    JOIN napr n
    ON (
        (s.id = 1 AND n.name = 'История') OR
        (s.id = 2 AND n.name = 'Право') OR
        (s.id = 3 AND n.name = 'Физика')
    )
) AS temp
ON s.id = temp.studID
WHEN MATCHED AND s.naprID IS NULL THEN
    UPDATE SET s.naprID = temp.naprID;