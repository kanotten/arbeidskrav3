CREATE TABLE forfatter (
  Forfatter_id INT AUTO_INCREMENT,
  navn VARCHAR(255),
  fodselsaar INT,
  PRIMARY KEY (Forfatter_id)
);

CREATE TABLE forlag (
    forlag_id INT AUTO_INCREMENT,
    navn VARCHAR(255),
    adresse VARCHAR(255),
    PRIMARY KEY (forlag_id)
);