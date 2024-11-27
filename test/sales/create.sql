-- Sales テーブルの作成
CREATE TABLE Sales (
    company VARCHAR(1) NOT NULL,
    year INT NOT NULL,
    sale INT NOT NULL
);

-- Sales テーブルにデータを挿入
INSERT INTO Sales (company, year, sale) VALUES
('A', 2002, 50),
('A', 2003, 52),
('A', 2004, 55),
('A', 2007, 55),
('B', 2001, 27),
('B', 2005, 28),
('B', 2006, 28),
('B', 2009, 30),
('C', 2001, 40),
('C', 2005, 39),
('C', 2006, 38),
('C', 2010, 35);

-- Sales2 テーブルの作成
CREATE TABLE Sales2 (
    company VARCHAR(1) NOT NULL,
    year INT NOT NULL,
    sale INT NOT NULL,
    var TEXT
);

-- Note: Sales2 テーブルにはデータが示されていないため、
-- INSERT 文は含めていません。