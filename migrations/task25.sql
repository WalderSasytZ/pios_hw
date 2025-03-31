SELECT DISTINCT p.maker
FROM Product p
JOIN Printer pr ON p.model = pr.model
WHERE p.maker IN (
    SELECT p2.maker
    FROM Product p2
    JOIN PC pc ON p2.model = pc.model
    WHERE pc.speed = (
        SELECT MAX(pc1.speed)
        FROM PC pc1
        WHERE pc1.ram = (SELECT MIN(pc2.ram) FROM PC pc2)
    )
);
