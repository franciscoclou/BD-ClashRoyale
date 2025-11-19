-- 1. Shop
CREATE TABLE Shop (
    shop_id INT PRIMARY KEY NOT NULL,
    refresh_time TIME NOT NULL
);

-- 2. Item
CREATE TABLE Item (
    item_id INT PRIMARY KEY NOT NULL,
    quantity INT NOT NULL
);

-- 3. Card (Extends Item)
CREATE TABLE Card (
    item_id INT PRIMARY KEY NOT NULL,
    card_name VARCHAR(50) NOT NULL,
    rarity VARCHAR(50) CHECK (rarity IN ('commun', 'rare', 'epic', 'legendary', 'champion')),
    card_type VARCHAR(50) CHECK (card_type IN ('aerial', 'ground', 'spell', 'building')), -- Renomeado de 'type'
    elixir_cost INT NOT NULL CHECK (elixir_cost >= 0 AND elixir_cost <= 10),
    FOREIGN KEY (item_id) REFERENCES Item (item_id)
);

-- 4. Gold (Extends Item)
CREATE TABLE Gold (
    item_id INT PRIMARY KEY NOT NULL,
    FOREIGN KEY (item_id) REFERENCES Item (item_id)
);

-- 5. Gem (Extends Item)
CREATE TABLE Gem (
    item_id INT PRIMARY KEY NOT NULL,
    FOREIGN KEY (item_id) REFERENCES Item (item_id)
);

-- 6. Player
CREATE TABLE Player (
    player_id INT PRIMARY KEY NOT NULL,
    username VARCHAR(50) NOT NULL,
    level INT NOT NULL CHECK (level >= 0),
    trophies INT NOT NULL CHECK (trophies >= 0),
    gold INT NOT NULL CHECK (gold >= 0),
    gems INT NOT NULL CHECK (gems >= 0),
    max_trophies INT NOT NULL CHECK (max_trophies >= 0),
    battles_won INT NOT NULL CHECK (battles_won >= 0)
);

-- 7. Deck (Linked to Player)
CREATE TABLE Deck (
    deck_id INT PRIMARY KEY NOT NULL,
    deck_number INT NOT NULL CHECK (deck_number >= 1 AND deck_number <= 20),
    average_elixir FLOAT NOT NULL CHECK (average_elixir >= 0.0 AND average_elixir <= 10.0),
    player_id INT NOT NULL,
    FOREIGN KEY (player_id) REFERENCES Player (player_id)
);

-- 8. Arena
CREATE TABLE Arena (
    arena_id INT PRIMARY KEY NOT NULL,
    arena_name VARCHAR(50) NOT NULL,
    min_trophies INT NOT NULL CHECK (min_trophies >= 0),
    unlocked_cards INT NOT NULL CHECK (unlocked_cards >= 0),
    UNIQUE (arena_name, min_trophies)
);

-- 9. ChestType
CREATE TABLE ChestType (
    chest_type VARCHAR(50) PRIMARY KEY NOT NULL, 
    unlock_time INT NOT NULL CHECK (unlock_time >= 0)
);

-- 10. ChestInstance
CREATE TABLE ChestInstance (
    chest_id INT PRIMARY KEY NOT NULL,
    chest_type VARCHAR(50) NOT NULL,
    FOREIGN KEY (chest_name) REFERENCES ChestType (chest_name)
);

-- 11. Tournament
CREATE TABLE Tournament (
    tournament_id INT PRIMARY KEY NOT NULL,
    tournament_name VARCHAR(50) NOT NULL,
    tournament_type VARCHAR(50) NOT NULL,
    start_date DATETIME NOT NULL,
    end_date DATETIME NOT NULL CHECK (end_date >= start_date) 
);

-- 12. Clan
CREATE TABLE Clan (
    clan_id INT PRIMARY KEY NOT NULL,
    clan_name VARCHAR(50) NOT NULL,
    flag INT NOT NULL,
    clan_trophies INT NOT NULL CHECK (clan_trophies >= 0)
);

-- 13. Battle
CREATE TABLE Battle (
    battle_id INT PRIMARY KEY NOT NULL,
    duration INT NOT NULL CHECK (duration > 0),
    crowns INT NOT NULL CHECK (crowns >= 0)
);