CREATE TABLE
    Player (
        player_id INT PRIMARY KEY NOT NULL,
        username VARCHAR(50) NOT NULL,
        level INT NOT NULL CHECK (level >= 0),
        trophies INT NOT NULL CHECK (trophies >= 0),
        gold INT NOT NULL CHECK (gold >= 0),
        gems INT NOT NULL CHECK (gems >= 0),
        max_trhophies INT NOT NULL CHECK (max_trhophies >= 0),
        battles_won INT NOT NULL CHECK (battles_won >= 0)
    );

CREATE TABLE
    Deck (
        deck_id INT PRIMARY KEY NOT NULL,
        number INT NOT NULL CHECK (1 <= number <= 20),
        average_elixir FLOAT NOT NULL CHECK (0.0 <= average_elixir <= 10.0)
    );

CREATE TABLE
    Item (
        item_id INT PRIMARY KEY NOT NULL,
        quantity INT NOT NULL
    )
CREATE TABLE
    Card (
        item_id INT NOT NULL,
        name VARCHAR(50) NOT NULL,
        rarity VARCHAR(50) CHECK (
            rarity IN ('commun', 'rare', 'epic', 'legendary', 'champion')
        ),
        FOREIGN KEY Item REFERENCES Item (item_id)
    )