-- テストテーブルの作成
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(50),
    email VARCHAR(100),
    age INT,
    status VARCHAR(20),
    created_at TIMESTAMP,
    updated_at TIMESTAMP
);

-- テストデータを生成するためのストアドプロシージャ
DELIMITER //
CREATE PROCEDURE generate_test_data()
BEGIN
    DECLARE i INT DEFAULT 1;
    WHILE i <= 1000000 DO
        INSERT INTO users (username, email, age, status, created_at, updated_at)
        VALUES (
            CONCAT('user', i),
            CONCAT('user', i, '@example.com'),
            18 + FLOOR(RAND() * 62),
            ELT(1 + FLOOR(RAND() * 4), 'active', 'inactive', 'pending', 'suspended'),
            DATE_SUB(NOW(), INTERVAL FLOOR(RAND() * 1000) DAY),
            DATE_SUB(NOW(), INTERVAL FLOOR(RAND() * 500) DAY)
        );
        SET i = i + 1;
        -- 1000件ごとにコミット
        IF i % 1000 = 0 THEN
            COMMIT;
        END IF;
    END WHILE;
END //
DELIMITER ;

-- データ生成の実行
SET autocommit = 0;
CALL generate_test_data();
COMMIT;
SET autocommit = 1;

-- プロシージャの削除（オプション）
DROP PROCEDURE generate_test_data;


-- インデックスなしでの検索テスト
EXPLAIN ANALYZE
SELECT * FROM users 
WHERE age BETWEEN 25 AND 35 
AND status = 'active';

-- インデックスを作成
CREATE INDEX idx_users_age ON users(age);
CREATE INDEX idx_users_status ON users(status);
CREATE INDEX idx_users_age_status ON users(age, status);

-- インデックス作成後の検索テスト
EXPLAIN ANALYZE
SELECT * FROM users 
WHERE age BETWEEN 25 AND 35 
AND status = 'active';