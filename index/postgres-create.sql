-- テストテーブルの作成
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(50),
    email VARCHAR(100),
    age INT,t-l
    status VARCHAR(20),
    created_at TIMESTAMP,
    updated_at TIMESTAMP
);


-- 100万件のテストデータを挿入
INSERT INTO users (username, email, age, status, created_at, updated_at)
SELECT 
    'user' || i as username,
    'user' || i || '@example.com' as email,
    18 + (random() * 62)::INT as age,
    CASE (random() * 3)::INT
        WHEN 0 THEN 'active'
        WHEN 1 THEN 'inactive'
        WHEN 2 THEN 'pending'
        ELSE 'suspended'
    END as status,
    CURRENT_DATE - ((random() * 1000)::INT || ' days')::INTERVAL as created_at,
    CURRENT_DATE - ((random() * 500)::INT || ' days')::INTERVAL as updated_at
FROM generate_series(1, 1000000) i;

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