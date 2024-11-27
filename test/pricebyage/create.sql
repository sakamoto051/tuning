-- テーブルの作成
CREATE TABLE PriceByAge (
    product_id VARCHAR(50),
    low_age INT,
    high_age INT,
    price INT
);

-- データの挿入
INSERT INTO PriceByAge (product_id, low_age, high_age, price) VALUES
('製品1', 0, 50, 2000),
('製品1', 51, 100, 3000),
('製品2', 0, 100, 4200),
('製品3', 0, 20, 500),
('製品3', 31, 70, 800),
('製品3', 71, 100, 1000),
('製品4', 0, 99, 8900);