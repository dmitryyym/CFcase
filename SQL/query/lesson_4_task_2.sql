SELECT 
    STRING_AGG(s.surname, ', ') AS [Студенты, зачисленные на направление История]
FROM 
    students s
INNER JOIN 
    napr n
ON s.naprID = n.ID
WHERE n.name = 'История' AND s.examMark > n.minMark