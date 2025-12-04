INSERT INTO services (name, price, duration_minutes) VALUES ('Herreklipp', 350.00, 30);
INSERT INTO services (name, price, duration_minutes) VALUES ('Dameklipp', 500.00, 45);

SELECT b.*, s.name AS service_name
FROM bookings b
JOIN services s ON b.service_id = s.id;
