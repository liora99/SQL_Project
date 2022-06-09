# SQL_Project
CREATE TABLE ticket
(
  price NUMERIC(10) NOT NULL,
  bar_code NUMERIC(10) NOT NULL,
  expiration_date DATE NOT NULL,
  ticket_id NUMERIC(10) NOT NULL,
  PRIMARY KEY (ticket_id)
);

CREATE TABLE payment
(
  type_of_payment VARCHAR(30) NOT NULL,
  payment_id NUMERIC(10) NOT NULL,
  client_id NUMERIC(10) NOT NULL,
  amount_of_payment NUMERIC(10) NOT NULL,
  payment_owner_name VARCHAR(30) NOT NULL,
  PRIMARY KEY (payment_id),
  UNIQUE (client_id)
);

CREATE TABLE design
(
  design_id NUMERIC(10) NOT NULL,
  design_name VARCHAR(30) NOT NULL,
  PRIMARY KEY (design_id)
);

CREATE TABLE theme
(
  theme_id NUMERIC(10) NOT NULL,
  name_of_theme VARCHAR(30) NOT NULL,
  PRIMARY KEY (theme_id)
);

CREATE TABLE payed
(
  payed_id NUMERIC(10) NOT NULL,
  payment_id NUMERIC(10) NOT NULL,
  ticket_id NUMERIC(10) NOT NULL,
  PRIMARY KEY (payed_id),
  FOREIGN KEY (payment_id) REFERENCES payment(payment_id),
  FOREIGN KEY (ticket_id) REFERENCES ticket(ticket_id),
  UNIQUE (payment_id, ticket_id)
);

CREATE TABLE attractions
(
  attraction_name VARCHAR(30) NOT NULL,
  minimum_age_required NUMERIC(10) NOT NULL,
  attraction_level VARCHAR(30) NOT NULL,
  attraction_id NUMERIC(10) NOT NULL,
  attraction_type VARCHAR(30) NOT NULL,
  ticket_id NUMERIC(10) NOT NULL,
  design_id NUMERIC(10) NOT NULL,
  theme_id NUMERIC(10) NOT NULL,
  PRIMARY KEY (attraction_id),
  FOREIGN KEY (ticket_id) REFERENCES ticket(ticket_id),
  FOREIGN KEY (design_id) REFERENCES design(design_id),
  FOREIGN KEY (theme_id) REFERENCES theme(theme_id)
);
