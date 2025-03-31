SELECT AVG(pc.hd) AS avg_hd_size
FROM PC pc
JOIN Product p ON pc.model = p.model
WHERE p.maker IN (
    SELECT DISTINCT p2.maker
    FROM Product p2
    JOIN Printer pr ON p2.model = pr.model
);