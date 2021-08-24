USE WisemanDB

INSERT INTO ConsumerLocations ([Name])
VALUES ('Wiseman Brewery'),
('Incendiary'),
('Small Batch'),
('Foothill''s Downtown'),
('Foothill''s Tasting Room'),
('Joymonger''s'),
('Radar Brewing Company'),
('Hoot''s Beer Company'),
('Village Tavern - Reynolda'),
('West End Café'),
('Katherine''s'),
('Joyner''s Bar'),
('Village Tavern - Hanes Mall'),
('Quiet Pint'),
('Cin Cin Burger Bar'),
('Silver Moon'),
('Fiddlin'' Fish')

INSERT INTO Breweries ([Name])
VALUES ('Wiseman Brewery'),
('Incendiary'),
('Small Batch'),
('Foothill''s Downtown'),
('Foothill''s Tasting Room'),
('Joymonger''s'),
('Fiddlin'' Fish'),
('Radar Brewing Company'),
('Pabst Brewing Company')

INSERT INTO Distributorships ([Name])
VALUES ('American Premium Beverage Co'),
('Carolina Eagle Distributing'),
('RH Barringer Distributing Company, Inc.'),
('Wiseman Brewery')

INSERT INTO Products ([Name], BreweryId)
VALUES ('Conceited Genius', 1),
('World Within Itself', 1),
('Shift Pink', 2),
('Shift Blue', 2),
('Pabst Blue Ribbon', 9)

INSERT INTO Shipments (EstimatedOn, DeliveredAt, DistributorShipId, ProductId, ConsumerLocationId)
Values ('2021-08-25', null, 4, 2, 1),
('2021-08-28', null, 2, 2, 2),
('2021-08-25', null, 2, 2, 6),
('2021-08-27', null, 3, 2, 4),
('2021-08-23', '2021-08-23 17:35:12', 4, 2, 1),
('2021-08-25', null, 4, 3, 1),
('2021-08-25', null, 3, 3, 4),
('2021-08-24', null, 4, 4, 1),
('2021-08-27', null, 3, 4, 8),
('2021-08-26', null, 4, 1, 1),
('2021-08-28', null, 4, 5, 16)