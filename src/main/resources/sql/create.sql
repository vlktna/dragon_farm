CREATE TYPE DAY_TIME AS ENUM ('day', 'night');
CREATE TYPE SEASON AS ENUM ('summer', 'autumn', 'winter', 'spring');
CREATE TYPE CAGE_TYPE AS ENUM ('general', 'incubator', 'nursery', 'couple');
CREATE TYPE GENDER AS ENUM ('male', 'female');
CREATE TYPE DRAGON_STATUS AS ENUM ('alive', 'escaped', 'death from old age', 'death due to poor care');
CREATE TYPE TRANSFER_TYPE AS ENUM ('permanent', 'temporal');
CREATE TYPE WORKER_TYPE AS ENUM ('tamer', 'сaretaker', 'researcher', 'nanny');
CREATE TYPE SIZE AS ENUM ('small', 'medium', 'large', 'gigantic');

CREATE TABLE IF NOT EXISTS classes
(
    id          SMALLSERIAL PRIMARY KEY,
    name        VARCHAR(30) NOT NULL UNIQUE,
    description TEXT
);
CREATE TABLE IF NOT EXISTS characteristic_types
(
    id   SMALLSERIAL PRIMARY KEY,
    name VARCHAR(15) NOT NULL UNIQUE
);
CREATE TABLE IF NOT EXISTS characteristic_levels
(
    id           SMALLSERIAL PRIMARY KEY,
    name         VARCHAR(15) NOT NULL,
    min_value    SMALLINT    NOT NULL CHECK (min_value >= 0),
    max_value    SMALLINT    NOT NULL CHECK (max_value >= 0),
    description  TEXT,
    char_type_id SMALLINT    NOT NULL REFERENCES characteristic_types
);
CREATE TABLE IF NOT EXISTS dragon_appearance
(
    id        SMALLSERIAL PRIMARY KEY,
    size      SIZE        NOT NULL,
    color     VARCHAR(50) NOT NULL,
    fire_type VARCHAR(50) NOT NULL,
    features  TEXT        NOT NULL
);
CREATE TABLE IF NOT EXISTS food
(
    id   SMALLSERIAL PRIMARY KEY,
    name VARCHAR(30) NOT NULL UNIQUE
);
CREATE TABLE IF NOT EXISTS dragon_types
(
    id            SMALLSERIAL PRIMARY KEY,
    name          VARCHAR(50) NOT NULL UNIQUE,
    class_id      SMALLINT    NOT NULL REFERENCES classes,
    way_of_taming TEXT,
    trainable     BOOLEAN     NOT NULL,
    abilities     TEXT,
    active_time   DAY_TIME    NOT NULL,
    mating_season SEASON      NOT NULL,
    hatching_age  SMALLINT    NOT NULL CHECK (hatching_age > 0),
    puberty_age   SMALLINT    NOT NULL CHECK (puberty_age > 0),
    appearance_id SMALLINT    NOT NULL UNIQUE REFERENCES dragon_appearance,
    rarity        FLOAT       NOT NULL CHECK (rarity > 0 AND rarity < 1)
    CHECK (hatching_age < puberty_age)
);
CREATE TABLE IF NOT EXISTS dragon_diet
(
    food_id        SMALLINT NOT NULL REFERENCES food,
    dragon_type_id SMALLINT NOT NULL REFERENCES dragon_types,
    PRIMARY KEY (food_id, dragon_type_id)
);
CREATE TABLE IF NOT EXISTS cages
(
    id         SMALLSERIAL PRIMARY KEY,
    max_amount SMALLINT  NOT NULL CHECK (max_amount > 0),
    cage_type  CAGE_TYPE NOT NULL
);
CREATE TABLE IF NOT EXISTS dragons
(
    id            SERIAL PRIMARY KEY,
    name          VARCHAR(30)   NOT NULL UNIQUE,
    train_level   SMALLINT      NOT NULL REFERENCES characteristic_levels,
    type_id       SMALLINT      NOT NULL REFERENCES dragon_types,
    age           SMALLINT      NOT NULL CHECK (age > 0),
    gender        GENDER,
    cage_id       SMALLINT      NOT NULL REFERENCES cages,
    dragon_status DRAGON_STATUS NOT NULL,
    date_of_death DATE
);
CREATE TABLE IF NOT EXISTS dragon_characteristics
(
    id           SMALLSERIAL PRIMARY KEY,
    value        SMALLINT NOT NULL CHECK (value > 0),
    char_type_id SMALLINT NOT NULL REFERENCES characteristic_types,
    dragon_id    INT      NOT NULL REFERENCES dragons
);
CREATE TABLE IF NOT EXISTS people
(
    id            SERIAL PRIMARY KEY,
    name          VARCHAR(20) NOT NULL,
    surname       VARCHAR(25) NOT NULL,
    date_of_birth DATE        NOT NULL,
    gender        GENDER      NOT NULL,
    reputation    INT         NOT NULL DEFAULT 0,
    date_of_death DATE
);
CREATE TABLE IF NOT EXISTS transfer_dragon_results
(
    id                SMALLSERIAL PRIMARY KEY,
    name              VARCHAR(30) NOT NULL UNIQUE,
    reputation_points INT         NOT NULL
);
CREATE TABLE IF NOT EXISTS transfer_dragon_history
(
    result_id     SMALLINT      NOT NULL REFERENCES transfer_dragon_results,
    transfer_type TRANSFER_TYPE NOT NULL,
    dragon_id     INT           NOT NULL REFERENCES dragons,
    person_id     INT           NOT NULL REFERENCES people,
    time_start    TIMESTAMP     NOT NULL,
    time_finish   TIMESTAMP,
    PRIMARY KEY (dragon_id, person_id)
);
CREATE TABLE IF NOT EXISTS workers
(
    id          SMALLSERIAL PRIMARY KEY,
    person_id   INT         NOT NULL UNIQUE REFERENCES people,
    worker_type WORKER_TYPE NOT NULL,
    penalty     SMALLINT    NOT NULL DEFAULT 0 CHECK (penalty >= 0),
    status      BOOLEAN     NOT NULL,
    work_time   DAY_TIME    NOT NULL
);
CREATE TABLE IF NOT EXISTS action_types
(
    id   SMALLSERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL UNIQUE
);
CREATE TABLE IF NOT EXISTS caring_and_train_actions
(
    action_type_id SMALLINT  NOT NULL REFERENCES action_types,
    worker_id      SMALLINT  NOT NULL REFERENCES workers,
    time_start     TIMESTAMP NOT NULL,
    time_finish    TIMESTAMP,
    dragon_id      INT       NOT NULL REFERENCES dragons,
    PRIMARY KEY (worker_id, dragon_id)
);
CREATE TABLE IF NOT EXISTS action_type_influence
(
    influence_value SMALLINT NOT NULL,
    char_type_id    SMALLINT NOT NULL REFERENCES characteristic_types,
    action_type_id  SMALLINT NOT NULL REFERENCES action_types,
    PRIMARY KEY (char_type_id, action_type_id)
);
CREATE TABLE IF NOT EXISTS dragon_carers_trainers
(
    dragon_id INT     NOT NULL REFERENCES dragons,
    worker_id INT     NOT NULL REFERENCES workers,
    status    BOOLEAN NOT NULL,
    PRIMARY KEY (dragon_id, worker_id)
);
CREATE TABLE IF NOT EXISTS dragon_couples
(
    id        SMALLSERIAL PRIMARY KEY,
    mother_id INT NOT NULL REFERENCES dragons,
    father_id INT NOT NULL REFERENCES dragons
);

CREATE TABLE IF NOT EXISTS children
(
    child_id      INT      NOT NULL UNIQUE PRIMARY KEY REFERENCES dragons,
    parents_id    SMALLINT NOT NULL REFERENCES dragon_couples,
    date_of_birth DATE     NOT NULL
);