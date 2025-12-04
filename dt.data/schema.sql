CREATE TABLE services (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  price NUMERIC(8,2),
  duration_minutes INT
);

CREATE TABLE bookings (
  id SERIAL PRIMARY KEY,
  customer_name VARCHAR(150) NOT NULL,
  phone VARCHAR(30),
  booking_date DATE NOT NULL,
  booking_time TIME NOT NULL,
  service_id INT REFERENCES services(id),
  status VARCHAR(20) DEFAULT 'pending'
);
