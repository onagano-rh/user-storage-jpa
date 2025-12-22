CREATE TABLE IF NOT EXISTS userentity (
  id         varchar(255),
  username   varchar(255),
  password   varchar(255),
  email      varchar(255),
  phone      varchar(255),
  PRIMARY KEY (id)
);

INSERT INTO userentity (id, username, password, email, phone) VALUES ('xxx01', 'user01', 'password', 'user01@example.com', '000-0000-0001');
INSERT INTO userentity (id, username, password, email, phone) VALUES ('xxx02', 'user02', 'password', 'user02@example.com', '000-0000-0002');
INSERT INTO userentity (id, username, password, email, phone) VALUES ('xxx03', 'user03', 'password', 'user03@example.com', '000-0000-0003');
