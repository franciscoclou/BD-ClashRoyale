PRAGMA foreign_keys = ON;

DROP TABLE IF EXISTS Result;
DROP TABLE IF EXISTS PlayerClan;
DROP TABLE IF EXISTS PlayerArena;
DROP TABLE IF EXISTS Stats;
DROP TABLE IF EXISTS PlayerChest;
DROP TABLE IF EXISTS CardDeck;
DROP TABLE IF EXISTS ItemChest;
DROP TABLE IF EXISTS PlayerCardLevel;
DROP TABLE IF EXISTS CardStats;
DROP TABLE IF EXISTS Price;
DROP TABLE IF EXISTS Battle;
DROP TABLE IF EXISTS Clan;
DROP TABLE IF EXISTS Tournament;
DROP TABLE IF EXISTS ChestInstance;
DROP TABLE IF EXISTS ChestType;
DROP TABLE IF EXISTS Arena;
DROP TABLE IF EXISTS Deck;
DROP TABLE IF EXISTS Player;
DROP TABLE IF EXISTS Gem;
DROP TABLE IF EXISTS Gold;
DROP TABLE IF EXISTS Card;
DROP TABLE IF EXISTS Item;
DROP TABLE IF EXISTS Shop;

-- 1. Shop
CREATE TABLE Shop (
    shop_id INT PRIMARY KEY,
    refresh_timestamp VARCHAR NOT NULL
);

-- 2. Item
CREATE TABLE Item (
    item_id INT PRIMARY KEY,
    item_quantity INT NOT NULL CHECK (item_quantity >= 0)
);

-- 3. Card
CREATE TABLE Card (
    item_id INT PRIMARY KEY,
    card_name VARCHAR NOT NULL,
    rarity VARCHAR CHECK (rarity IN ('common', 'rare', 'epic', 'legendary', 'champion')),
    card_type VARCHAR CHECK (card_type IN ('aerial', 'ground', 'spell', 'building')),
    elixir_cost INT NOT NULL CHECK (elixir_cost >= 0 AND elixir_cost <= 10),
    FOREIGN KEY (item_id) REFERENCES Item (item_id) ON DELETE CASCADE
);

-- 4. Gold
CREATE TABLE Gold (
    item_id INT PRIMARY KEY,
    FOREIGN KEY (item_id) REFERENCES Item (item_id) ON DELETE CASCADE
);

-- 5. Gem
CREATE TABLE Gem (
    item_id INT PRIMARY KEY,
    FOREIGN KEY (item_id) REFERENCES Item (item_id) ON DELETE CASCADE
);

-- 6. Player
CREATE TABLE Player (
    player_id INT PRIMARY KEY,
    username VARCHAR NOT NULL,
    player_level INT NOT NULL CHECK (player_level > 0),
    trophies INT NOT NULL CHECK (trophies >= 0),
    gold_balance INT NOT NULL CHECK (gold_balance >= 0),
    gems_balance INT NOT NULL CHECK (gems_balance >= 0),
    max_trophies INT NOT NULL CHECK (max_trophies >= 0),
    battles_won INT NOT NULL CHECK (battles_won >= 0)
);

-- 7. Deck
CREATE TABLE Deck (
    deck_id INT PRIMARY KEY,
    deck_number INT NOT NULL CHECK (deck_number BETWEEN 1 AND 20),
    average_elixir REAL NOT NULL CHECK (average_elixir >= 0),
    player_id INT NOT NULL,
    FOREIGN KEY (player_id) REFERENCES Player (player_id) ON DELETE CASCADE
);

-- 8. Arena
CREATE TABLE Arena (
    arena_id INT PRIMARY KEY,
    arena_name VARCHAR NOT NULL,
    min_trophies INT NOT NULL CHECK (min_trophies >= 0),
    unlocked_cards_count INT NOT NULL CHECK (unlocked_cards_count >= 0),
    UNIQUE (arena_name)
);

-- 9. ChestType
CREATE TABLE ChestType (
    type_name VARCHAR PRIMARY KEY,
    unlock_time_minutes INT NOT NULL CHECK (unlock_time_minutes >= 0)
);

-- 10. ChestInstance
CREATE TABLE ChestInstance (
    chest_id INT PRIMARY KEY,
    type_name VARCHAR NOT NULL,
    FOREIGN KEY (type_name) REFERENCES ChestType (type_name) ON DELETE CASCADE
);

-- 11. Tournament
CREATE TABLE Tournament (
    tournament_id INT PRIMARY KEY,
    tournament_name VARCHAR NOT NULL,
    tournament_type VARCHAR NOT NULL,
    start_date DATETIME NOT NULL,
    end_date DATETIME NOT NULL,
    CHECK (end_date >= start_date)
);

-- 12. Clan
CREATE TABLE Clan (
    clan_id INT PRIMARY KEY,
    clan_name VARCHAR NOT NULL,
    flag_id INT NOT NULL,
    clan_trophies INT NOT NULL CHECK (clan_trophies >= 0)
);

-- 13. Battle
CREATE TABLE Battle (
    battle_id INT PRIMARY KEY,
    battle_duration INT NOT NULL CHECK (battle_duration > 0),
    crowns_total INT NOT NULL CHECK (crowns_total >= 0)
);

-- Price
CREATE TABLE Price (
    item_id INT NOT NULL,
    shop_id INT NOT NULL,
    price_value INT NOT NULL CHECK (price_value > 0),
    PRIMARY KEY (item_id, shop_id),
    FOREIGN KEY (item_id) REFERENCES Item (item_id) ON DELETE CASCADE,
    FOREIGN KEY (shop_id) REFERENCES Shop (shop_id) ON DELETE CASCADE
);

-- CardStats
CREATE TABLE CardStats (
    item_id INT NOT NULL,
    card_level INT NOT NULL CHECK (card_level > 0 AND card_level =< 5),
    health_points INT CHECK (health_points > 0),
    damage_points INT CHECK (damage_points >= 0),
    PRIMARY KEY (item_id, card_level),
    FOREIGN KEY (item_id) REFERENCES Card (item_id) ON DELETE CASCADE
);

-- PlayerCardLevel
CREATE TABLE PlayerCardLevel (
    player_id INT NOT NULL,
    item_id INT NOT NULL,
    current_level INT NOT NULL CHECK (current_level > 0),
    PRIMARY KEY (player_id, item_id),
    FOREIGN KEY (player_id) REFERENCES Player (player_id) ON DELETE CASCADE,
    FOREIGN KEY (item_id) REFERENCES Card (item_id) ON DELETE CASCADE
);

-- ItemChest
CREATE TABLE ItemChest (
    item_id INT NOT NULL,
    chest_id INT NOT NULL,
    PRIMARY KEY (item_id, chest_id),
    FOREIGN KEY (item_id) REFERENCES Item (item_id) ON DELETE CASCADE,
    FOREIGN KEY (chest_id) REFERENCES ChestInstance (chest_id) ON DELETE CASCADE
);

-- CardDeck
CREATE TABLE CardDeck (
    item_id INT NOT NULL,
    deck_id INT NOT NULL,
    PRIMARY KEY (item_id, deck_id),
    FOREIGN KEY (item_id) REFERENCES Card (item_id) ON DELETE CASCADE,
    FOREIGN KEY (deck_id) REFERENCES Deck (deck_id) ON DELETE CASCADE
);

-- PlayerChest
CREATE TABLE PlayerChest (
    chest_id INT NOT NULL,
    player_id INT NOT NULL,
    PRIMARY KEY (chest_id),
    FOREIGN KEY (chest_id) REFERENCES ChestInstance (chest_id) ON DELETE CASCADE,
    FOREIGN KEY (player_id) REFERENCES Player (player_id) ON DELETE CASCADE
);

-- Stats
CREATE TABLE Stats (
    player_id INT NOT NULL,
    tournament_id INT NOT NULL,
    win_streak INT CHECK (win_streak >= 0),
    ranking_position INT CHECK (ranking_position > 0),
    PRIMARY KEY (player_id, tournament_id),
    FOREIGN KEY (player_id) REFERENCES Player (player_id) ON DELETE CASCADE,
    FOREIGN KEY (tournament_id) REFERENCES Tournament (tournament_id) ON DELETE CASCADE
);

-- PlayerArena
CREATE TABLE PlayerArena (
    player_id INT NOT NULL,
    arena_id INT NOT NULL,
    PRIMARY KEY (player_id),
    FOREIGN KEY (player_id) REFERENCES Player (player_id) ON DELETE CASCADE,
    FOREIGN KEY (arena_id) REFERENCES Arena (arena_id) ON DELETE CASCADE
);

-- PlayerClan
CREATE TABLE PlayerClan (
    player_id INT NOT NULL,
    clan_id INT NOT NULL,
    clan_role VARCHAR NOT NULL,
    PRIMARY KEY (player_id),
    FOREIGN KEY (player_id) REFERENCES Player (player_id) ON DELETE CASCADE,
    FOREIGN KEY (clan_id) REFERENCES Clan (clan_id) ON DELETE CASCADE,
    CONSTRAINT uk_player_role UNIQUE (player_id, clan_role)
);

-- Result
CREATE TABLE Result (
    battle_id INT NOT NULL,
    player_id1 INT NOT NULL,
    player_id2 INT NOT NULL,
    loser_id INT,
    winner_id INT,
    PRIMARY KEY (battle_id),
    FOREIGN KEY (battle_id) REFERENCES Battle (battle_id) ON DELETE CASCADE,
    FOREIGN KEY (player_id1) REFERENCES Player (player_id) ON DELETE CASCADE,
    FOREIGN KEY (player_id2) REFERENCES Player (player_id) ON DELETE CASCADE,
    CHECK (player_id1 <> player_id2) --player1 diferente do player2
);
