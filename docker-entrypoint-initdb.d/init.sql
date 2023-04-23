CREATE TABLE users (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    email VARCHAR(255),
    age INT,
    gender VARCHAR(10)
);

INSERT INTO users (id, name, email, age, gender) VALUES
(1, 'John Doe', 'john@example.com', 25, 'male'),
(2, 'Jane Doe', 'jane@example.com', 30, 'female'),
(3, 'Bob Smith', 'bob@example.com', 45, 'male'), 
(4, 'Alice Johnson', 'alice@example.com', 20, 'female'),
(5, 'Tom Wilson', 'tom@example.com', 35, 'male');

CREATE TABLE professions (
    id INT PRIMARY KEY,
    user_id INT,
    title VARCHAR(255),
    company VARCHAR(255),
    start_date DATE,
    end_date DATE,
    FOREIGN KEY (user_id) REFERENCES users(id)
);

INSERT INTO professions (id, user_id, title, company, start_date, end_date) VALUES
(1, 1, 'Software Engineer', 'ABC Inc.', '2021-01-01', NULL),
(2, 2, 'Marketing Manager', 'XYZ Corp.', '2018-05-01', '2022-04-30'),
(3, 3, 'Sales Representative', 'Acme Corp.', '2015-02-01', '2020-12-31'),
(4, 4, 'Graphic Designer', 'Design Co.', '2020-09-01', NULL),
(5, 5, 'Product Manager', 'Tech Inc.', '2019-06-01', '2021-09-30');

