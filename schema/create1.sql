CREATE TABLE
    Player (
        player_id INT PRIMARY KEY NOT NULL,
        username VARCHAR(50) NOT NULL,
        level_ INT NOT NULL CHECK (level_ >= 0),
        trophies INT NOT NULL CHECK (trophies >= 0),
        gold INT NOT NULL CHECK (gold >= 0),
        gems INT NOT NULL CHECK (gems >= 0),
        max_trhophies INT NOT NULL CHECK (max_trhophies >= 0),
        battles_won INT NOT NULL CHECK (battles_won >= 0)
    );
