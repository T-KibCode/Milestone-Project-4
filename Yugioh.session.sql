CREATE TABLE cards (
  id INT,
  name VARCHAR(255),
  type VARCHAR(255),
  description TEXT,
  atk INT,
  def INT,
  level_rank VARCHAR(255),
  race VARCHAR(255),
  attribute VARCHAR(255),
  scale INT,
  archetype VARCHAR(255),
  linklvl INT,
  linkmarkers VARCHAR(255),
  image_url VARCHAR(255),
  image_url_small VARCHAR(255),
  ban_tcg VARCHAR(255),
  ban_ocg VARCHAR(255),
  ban_goat VARCHAR(255),
  staple VARCHAR(255),
  views INT,
  viewsweek INT,
  upvotes INT,
  downvotes INT,
  formats VARCHAR(255),
  treated_as VARCHAR(255),
  tcg_date DATE,
  ocg_date DATE,
  konami_id INT,
  has_effect BOOLEAN
);



COPY cards FROM '/csv-files/cards.csv' DELIMITER ',' CSV HEADER;
