CREATE TABLE IF NOT EXISTS my_user_table (
  id   varchar(255),
  login_id   varchar(255),
  password   varchar(255),
  email      varchar(255),
  phone      varchar(255),
  PRIMARY KEY (id)
);

INSERT INTO my_user_table
  (id, login_id, password, email, phone)
VALUES
  ('xxx01', 'user01', 'password', 'user01@example.com', '000-0000-0001'),
  ('xxx02', 'user02', 'password', 'user02@example.com', '000-0000-0002'),
  ('xxx03', 'user03', 'password', 'user03@example.com', '000-0000-0003');
