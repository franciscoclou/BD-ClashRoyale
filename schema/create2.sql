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
    shop_id INTEGER PRIMARY KEY,
    refresh_timestamp DATETIME NOT NULL
);

-- 2. Item
CREATE TABLE Item (
    item_id INTEGER PRIMARY KEY,
    item_quantity INTEGER NOT NULL CHECK (item_quantity >= 0)
);

-- 3. Card
CREATE TABLE Card (
    item_id INTEGER PRIMARY KEY,
    card_name TEXT NOT NULL,
    rarity TEXT CHECK (rarity IN ('common', 'rare', 'epic', 'legendary', 'champion')),
    card_type TEXT CHECK (card_type IN ('aerial', 'ground', 'spell', 'building')),
    elixir_cost INTEGER NOT NULL CHECK (elixir_cost BETWEEN 1 AND 10),
    FOREIGN KEY (item_id) REFERENCES Item (item_id) ON DELETE CASCADE
);

-- 4. Gold
CREATE TABLE Gold (
    item_id INTEGER PRIMARY KEY,
    FOREIGN KEY (item_id) REFERENCES Item (item_id) ON DELETE CASCADE
);

-- 5. Gem
CREATE TABLE Gem (
    item_id INTEGER PRIMARY KEY,
    FOREIGN KEY (item_id) REFERENCES Item (item_id) ON DELETE CASCADE
);

-- 6. Player
CREATE TABLE Player (
    player_id INTEGER PRIMARY KEY,
    username TEXT NOT NULL,
    player_level INTEGER NOT NULL CHECK (player_level > 0),
    trophies INTEGER NOT NULL CHECK (trophies >= 0),
    gold_balance INTEGER NOT NULL CHECK (gold_balance >= 0),
    gems_balance INTEGER NOT NULL CHECK (gems_balance >= 0),
    max_trophies INTEGER NOT NULL CHECK (max_trophies >= 0),
    battles_won INTEGER NOT NULL CHECK (battles_won >= 0)
);

-- 7. Deck
CREATE TABLE Deck (
    deck_id INTEGER PRIMARY KEY,
    deck_number INTEGER NOT NULL CHECK (deck_number BETWEEN 1 AND 20),
    average_elixir REAL NOT NULL CHECK (average_elixir >= 0),
    player_id INTEGER NOT NULL,
    FOREIGN KEY (player_id) REFERENCES Player (player_id) ON DELETE CASCADE
);

-- 8. Arena
CREATE TABLE Arena (
    arena_id INTEGER PRIMARY KEY,
    arena_name TEXT NOT NULL,
    min_trophies INTEGER NOT NULL CHECK (min_trophies >= 0),
    unlocked_cards_count INTEGER NOT NULL CHECK (unlocked_cards_count >= 0),
    UNIQUE (arena_name)
);

-- 9. ChestType
CREATE TABLE ChestType (
    type_name TEXT PRIMARY KEY,
    unlock_time_minutes INTEGER NOT NULL CHECK (unlock_time_minutes >= 0)
);

-- 10. ChestInstance
CREATE TABLE ChestInstance (
    chest_id INTEGER PRIMARY KEY,
    type_name TEXT NOT NULL,
    FOREIGN KEY (type_name) REFERENCES ChestType (type_name) ON DELETE CASCADE
);

-- 11. Tournament
CREATE TABLE Tournament (
    tournament_id INTEGER PRIMARY KEY,
    tournament_name TEXT NOT NULL,
    tournament_type TEXT NOT NULL,
    start_date DATETIME NOT NULL,
    end_date DATETIME NOT NULL,
    CHECK (end_date >= start_date)
);

-- 12. Clan
CREATE TABLE Clan (
    clan_id INTEGER PRIMARY KEY,
    clan_name TEXT NOT NULL,
    flag_id INTEGER NOT NULL,
    clan_trophies INTEGER NOT NULL CHECK (clan_trophies >= 0)
);

-- 13. Battle
CREATE TABLE Battle (
    battle_id INTEGER PRIMARY KEY,
    battle_duration INTEGER NOT NULL CHECK (battle_duration > 0),
    crowns_total INTEGER NOT NULL CHECK (crowns_total >= 0)
);

-- Price
CREATE TABLE Price (
    item_id INTEGER NOT NULL,
    shop_id INTEGER NOT NULL,
    price_value INTEGER NOT NULL CHECK (price_value > 0),
    PRIMARY KEY (item_id, shop_id),
    FOREIGN KEY (item_id) REFERENCES Item (item_id) ON DELETE CASCADE,
    FOREIGN KEY (shop_id) REFERENCES Shop (shop_id) ON DELETE CASCADE
);

-- CardStats
CREATE TABLE CardStats (
    item_id INTEGER NOT NULL,
        card_level INTEGER NOT NULL CHECK (card_level BETWEEN 1 AND 5),
    health_poINTEGERs INTEGER CHECK (health_poINTEGERs > 0),
    damage_poINTEGERs INTEGER CHECK (damage_poINTEGERs >= 0),
    PRIMARY KEY (item_id, card_level),
    FOREIGN KEY (item_id) REFERENCES Card (item_id) ON DELETE CASCADE
);

-- PlayerCardLevel
CREATE TABLE PlayerCardLevel (
    player_id INTEGER NOT NULL,
    item_id INTEGER NOT NULL,
    current_level INTEGER NOT NULL CHECK (current_level > 0),
    PRIMARY KEY (player_id, item_id),
    FOREIGN KEY (player_id) REFERENCES Player (player_id) ON DELETE CASCADE,
    FOREIGN KEY (item_id) REFERENCES Card (item_id) ON DELETE CASCADE
);

-- ItemChest
CREATE TABLE ItemChest (
    item_id INTEGER NOT NULL,
    chest_id INTEGER NOT NULL,
    PRIMARY KEY (item_id, chest_id),
    FOREIGN KEY (item_id) REFERENCES Item (item_id) ON DELETE CASCADE,
    FOREIGN KEY (chest_id) REFERENCES ChestInstance (chest_id) ON DELETE CASCADE
);

-- CardDeck
CREATE TABLE CardDeck (
    item_id INTEGER NOT NULL,
    deck_id INTEGER NOT NULL,
    PRIMARY KEY (item_id, deck_id),
    FOREIGN KEY (item_id) REFERENCES Card (item_id) ON DELETE CASCADE,
    FOREIGN KEY (deck_id) REFERENCES Deck (deck_id) ON DELETE CASCADE
);

-- PlayerChest
CREATE TABLE PlayerChest (
    chest_id INTEGER NOT NULL,
    player_id INTEGER NOT NULL,
    PRIMARY KEY (chest_id),
    FOREIGN KEY (chest_id) REFERENCES ChestInstance (chest_id) ON DELETE CASCADE,
    FOREIGN KEY (player_id) REFERENCES Player (player_id) ON DELETE CASCADE
);

-- Stats
CREATE TABLE Stats (
    player_id INTEGER NOT NULL,
    tournament_id INTEGER NOT NULL,
    win_streak INTEGER CHECK (win_streak >= 0),
    ranking_position INTEGER CHECK (ranking_position > 0),
    PRIMARY KEY (player_id, tournament_id),
    FOREIGN KEY (player_id) REFERENCES Player (player_id) ON DELETE CASCADE,
    FOREIGN KEY (tournament_id) REFERENCES Tournament (tournament_id) ON DELETE CASCADE
);

-- PlayerArena
CREATE TABLE PlayerArena (
    player_id INTEGER NOT NULL,
    arena_id INTEGER NOT NULL,
    PRIMARY KEY (player_id),
    FOREIGN KEY (player_id) REFERENCES Player (player_id) ON DELETE CASCADE,
    FOREIGN KEY (arena_id) REFERENCES Arena (arena_id) ON DELETE CASCADE
);

-- PlayerClan
CREATE TABLE PlayerClan (
    player_id INTEGER NOT NULL,
    clan_id INTEGER NOT NULL,
    clan_role TEXT NOT NULL,
    PRIMARY KEY (player_id),
    FOREIGN KEY (player_id) REFERENCES Player (player_id) ON DELETE CASCADE,
    FOREIGN KEY (clan_id) REFERENCES Clan (clan_id) ON DELETE CASCADE,
    CONSTRAINTEGER uk_player_role UNIQUE (player_id, clan_role)
);

-- Result
CREATE TABLE Result (
    battle_id INTEGER NOT NULL,
    player_id1 INTEGER NOT NULL,
    player_id2 INTEGER NOT NULL,
    loser_id INTEGER,
    winner_id INTEGER,
    PRIMARY KEY (battle_id),
    FOREIGN KEY (battle_id) REFERENCES Battle (battle_id) ON DELETE CASCADE,
    FOREIGN KEY (player_id1) REFERENCES Player (player_id) ON DELETE CASCADE,
    FOREIGN KEY (player_id2) REFERENCES Player (player_id) ON DELETE CASCADE,
    CHECK (player_id1 <> player_id2) --player1 diferente do player2
);
