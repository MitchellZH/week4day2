CREATE TABLE customers(
  customer_id SERIAL PRIMARY KEY,
  full_name VARCHAR,
  email VARCHAR
);

CREATE TABLE customer_orders(
  order_id SERIAL PRIMARY KEY,
  customer_id INTEGER,
  FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE concessions(
  concession_id SERIAL PRIMARY KEY,
  concession VARCHAR,
  descript VARCHAR 
);

CREATE TABLE order_info(
  order_id INTEGER,
  FOREIGN KEY (order_id) REFERENCES customer_orders(order_id),
  concession_id INTEGER,
  FOREIGN KEY (concession_id) REFERENCES concessions(concession_id),
  quantity INTEGER
);

CREATE TABLE movies(
  movie_id SERIAL PRIMARY KEY,
  movie_title VARCHAR(100),
  genre VARCHAR
);

CREATE TABLE tickets(
  ticket_id SERIAL PRIMARY KEY,
  customer_id INT,
  FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
  movie_id INT,
  FOREIGN KEY (movie_id) REFERENCES movies(movie_id)
);




ALTER TABLE tickets
ADD FOREIGN KEY (customer_id) REFERENCES customers(customer_id);