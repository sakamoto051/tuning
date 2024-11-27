-- テーブルの作成
CREATE TABLE NonAggTbl (
    id VARCHAR(10),
    data_type CHAR(1),
    data_1 INT,
    data_2 INT,
    data_3 INT,
    data_4 INT,
    data_5 INT,
    data_6 INT
);

-- データの挿入
INSERT INTO NonAggTbl (id, data_type, data_1, data_2, data_3, data_4, data_5, data_6)
VALUES
    ('Jim', 'A', 100, 10, 34, 346, 54, NULL),
    ('Jim', 'B', 45, 2, 167, 77, 90, 157),
    ('Jim', 'C', NULL, 3, 687, 1355, 324, 457),
    ('Ken', 'A', 78, 5, 724, 457, NULL, 1),
    ('Ken', 'B', 123, 12, 178, 346, 85, 235),
    ('Ken', 'C', 45, NULL, 23, 46, 687, 33),
    ('Beth', 'A', 75, 0, 190, 25, 356, NULL),
    ('Beth', 'B', 435, 0, 183, NULL, 4, 325),
    ('Beth', 'C', 96, 128, NULL, 0, 0, 12);-- テーブルの作成
CREATE TABLE NonAggTbl (
    id VARCHAR(10),
    data_type CHAR(1),
    data_1 INT,
    data_2 INT,
    data_3 INT,
    data_4 INT,
    data_5 INT,
    data_6 INT
);

-- データの挿入
INSERT INTO NonAggTbl (id, data_type, data_1, data_2, data_3, data_4, data_5, data_6)
VALUES
    ('Jim', 'A', 100, 10, 34, 346, 54, NULL),
    ('Jim', 'B', 45, 2, 167, 77, 90, 157),
    ('Jim', 'C', NULL, 3, 687, 1355, 324, 457),
    ('Ken', 'A', 78, 5, 724, 457, NULL, 1),
    ('Ken', 'B', 123, 12, 178, 346, 85, 235),
    ('Ken', 'C', 45, NULL, 23, 46, 687, 33),
    ('Beth', 'A', 75, 0, 190, 25, 356, NULL),
    ('Beth', 'B', 435, 0, 183, NULL, 4, 325),
    ('Beth', 'C', 96, 128, NULL, 0, 0, 12);