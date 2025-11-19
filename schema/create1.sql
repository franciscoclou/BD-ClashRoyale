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
        type VARCHAR(50) CHECK (type IN ('aerial', 'ground', 'spell', 'building')),
        elixir_cost INT NOT NULL CHECK (0 <= elixir_cost <= 10),
        FOREIGN KEY (item_id) REFERENCES Item (item_id)
    )
CREATE TABLE
    Battle (
        battle_id INT PRIMARY key NOT NULL,
        duration INT NOT NULL CHECK (duration > 0),
        crowns INT NOT NULL CHECK (crowns >= 0)
    )
CREATE TABLE
    Arena (
        arena_id INT PRIMARY KEY NOT NULL,
        name VARCHAR(50) NOT NULL,
        min_trophies INT NOT NULL CHECK (min_trophies >= 0),
        unlocked_cards INT NOT NULL CHECK (unlocked_cards >= 0),
        UNIQUE (name, min_trophies)
    );

CREATE TABLE
    CHESTTYPE (
        type VARCHAR(50) PRIMARY KEY NOT NULL,
        unlock_time INT NOT NULL CHECK (unlock_time >= 0)
    )
CREATE TABLE
    CHESTINSTANCE (
        chest_id INT PRIMARY KEY NOT NULL,
        type VARCHAR(50) NOT NULL,
    )
CREATE TABLE
    CLAN (
        clan_id INT PRIMARY KEY NOT NULL,
        name VARCHAR(50) NOT NULL,
        flag INT NOT NULL,
        total_trophies INT NOT NULL CHECK (total_trophies >= 0)
    )