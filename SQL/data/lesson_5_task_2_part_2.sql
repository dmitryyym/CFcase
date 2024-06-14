UPDATE napr
SET spotsTotal = CASE id
    WHEN 1 THEN 2
    WHEN 2 THEN 2
    WHEN 3 THEN 1
END
WHERE spotsTotal IS NULL