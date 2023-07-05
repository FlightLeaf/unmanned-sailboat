CREATE TABLE user_update
(
    name  VARCHAR(255),
    email VARCHAR(255),
    tel   VARCHAR(255)
);

CREATE TABLE user
(
    name     VARCHAR(255),
    email    VARCHAR(255),
    password VARCHAR(255),
    tel      VARCHAR(255),
    type     VARCHAR(255),
    relation VARCHAR(255),
    code     VARCHAR(255),
    Q        VARCHAR(255),
    A        VARCHAR(255)
);
CREATE TABLE home_news
(
    title  VARCHAR(255),
    time   DATE,
    author VARCHAR(255),
    text   VARCHAR(255),
    pic    VARCHAR(255)
);

CREATE TABLE code
(
    code  VARCHAR(255),
    email VARCHAR(255)
);
