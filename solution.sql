USE WisemanDB

SELECT c.Name ProductName, b.Name [Location], a.DeliveredAt FROM Shipments a
INNER JOIN ConsumerLocations b ON a.ConsumerLocationId = b.Id
INNER JOIN Products c ON a.ProductId = c.Id
WHERE ProductId = 2 AND DeliveredAt IS NOT NULL