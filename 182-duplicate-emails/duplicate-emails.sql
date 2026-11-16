SELECT p.email as Email
FROM Person as p
GROUP BY Email
HAVING count(Email) > 1;