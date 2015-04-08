DROP TABLE IF EXISTS cells;
DROP TABLE IF EXISTS boards;
DROP TABLE IF EXISTS ships;

CREATE TABLE boards(
  id SERIAL PRIMARY KEY
);


CREATE TABLE ships(
  id SERIAL PRIMARY KEY,
  size INTEGER NOT NULL
);

CREATE TABLE cells(
  id SERIAL PRIMARY KEY,
  row_num INTEGER NOT NULL,
  column_num INTEGER NOT NULL,
  hit BOOLEAN DEFAULT FALSE,
  board_id INTEGER REFERENCES boards(id),
  ship_id INTEGER REFERENCES ships(id)
);
