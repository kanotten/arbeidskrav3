CREATE TABLE forfatter (
  Forfatter_id INT AUTO_INCREMENT,
  navn VARCHAR(255) NOT NULL,
  fodselsaar INT NOT NULL,
  PRIMARY KEY (Forfatter_id)
);

CREATE TABLE forlag (
    forlag_id INT AUTO_INCREMENT,
    navn VARCHAR(255) NOT NULL,
    adresse VARCHAR(255) NOT NULL,
    PRIMARY KEY (forlag_id)
);

CREATE TABLE bok (
    isbn VARCHAR(20) NOT NULL,
    tittel VARCHAR(255) NOT NULL,
    utgivelsesaar INT NOT NULL,
    antall_sider INT NOT NULL,
    Forfatter_id INT NOT NULL,
    forlag_id INT NOT NULL,
    PRIMARY KEY (isbn),
    FOREIGN KEY (Forfatter_id) REFERENCES forfatter(Forfatter_id),
    FOREIGN KEY (forlag_id) REFERENCES forlag(forlag_id)
);

