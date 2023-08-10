INSERT INTO customers(
  full_name,
  email
) VALUES (
  'Sam L.',
  'sam@THIEVES126.com'
), (
  'FAITH M.',
  'faith@THIEVESCO.com'
), (
  'Dylan K.',
  'THIEVES126'
);

SELECT * FROM customers;

INSERT INTO customer_orders(
  customer_id
) VALUES (
  1
), (
  2
), (
  2
), (
  3
);

SELECT * FROM customer_orders;

INSERT INTO concessions(
  concession_id,
  concession,
  descript
) VALUES (
  1,
  'candy',
  'sweet candy'
), (
  2,
  'soda',
  'fizzling beverage'
), (
  3,
  'popcorn',
  'buttery snack'
);

SELECT * FROM concessions;

INSERT INTO order_info(
  order_id,
  concession_id,
  quantity
) VALUES (
  1,
  1,
  3
), (
  2,
  2,
  3
), (
  3,
  3,
  3
), (
  4,
  1,
  2
);

SELECT * FROM order_info;

INSERT INTO movies(
  movie_title,
  genre
) VALUES (
  'star wars',
  'scifi movie'
), (
  'men in black',
  'scifi movie'
), (
  'interstellar',
  'scifi movie'
), (
  'herditary',
  'horror movie'
);

SELECT * FROM movies;

INSERT INTO tickets(
  customer_id,
  movie_id
) VALUES (
  1,
  2
), (
  2,
  1
), (
  3,
  4
), (
  3,
  3
);

SELECT * FROM tickets;