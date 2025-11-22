PRAGMA foreign_keys = ON;

-- Shop
INSERT INTO Shop (shop_id, refresh_timestamp) VALUES (1, '00:00:00');
INSERT INTO Shop (shop_id, refresh_timestamp) VALUES (2, '12:00:00');

-- ChestType
INSERT INTO ChestType (type_name, unlock_time_minutes) VALUES ('Wooden', 1);  
INSERT INTO ChestType (type_name, unlock_time_minutes) VALUES ('Silver', 180);  
INSERT INTO ChestType (type_name, unlock_time_minutes) VALUES ('Gold', 480);  
INSERT INTO ChestType (type_name, unlock_time_minutes) VALUES ('Magical', 720);  
INSERT INTO ChestType (type_name, unlock_time_minutes) VALUES ('Giant', 720);    
INSERT INTO ChestType (type_name, unlock_time_minutes) VALUES ('Legendary', 1440);  
INSERT INTO ChestType (type_name, unlock_time_minutes) VALUES ('Champion', 1440);  
INSERT INTO ChestType (type_name, unlock_time_minutes) VALUES ('Lightning', 1440);  


-- Arena
INSERT INTO Arena (arena_id, arena_name, min_trophies, unlocked_cards_count) VALUES (0, 'Training Camp', 0, 12);  
INSERT INTO Arena (arena_id, arena_name, min_trophies, unlocked_cards_count) VALUES (1, 'Goblin Stadium', 0, 6);  
INSERT INTO Arena (arena_id, arena_name, min_trophies, unlocked_cards_count) VALUES (2, 'Bone Pit', 300, 6);  
INSERT INTO Arena (arena_id, arena_name, min_trophies, unlocked_cards_count) VALUES (3, 'Barbarian Bowl', 600, 6);  
INSERT INTO Arena (arena_id, arena_name, min_trophies, unlocked_cards_count) VALUES (4, 'Spell Valley', 1000, 6);  
INSERT INTO Arena (arena_id, arena_name, min_trophies, unlocked_cards_count) VALUES (5, 'Builder''s Workshop', 1300, 6);  
INSERT INTO Arena (arena_id, arena_name, min_trophies, unlocked_cards_count) VALUES (6, 'P.E.K.K.A''s Playhouse', 1600, 6);  
INSERT INTO Arena (arena_id, arena_name, min_trophies, unlocked_cards_count) VALUES (7, 'Royal Arena', 2000, 6);  
INSERT INTO Arena (arena_id, arena_name, min_trophies, unlocked_cards_count) VALUES (8, 'Frozen Peak', 2300, 6);  
INSERT INTO Arena (arena_id, arena_name, min_trophies, unlocked_cards_count) VALUES (9, 'Jungle Arena', 2600, 6);  
INSERT INTO Arena (arena_id, arena_name, min_trophies, unlocked_cards_count) VALUES (10, 'Hog Mountain', 3000, 6);  
INSERT INTO Arena (arena_id, arena_name, min_trophies, unlocked_cards_count) VALUES (11, 'Electro Valley', 3400, 6);  
INSERT INTO Arena (arena_id, arena_name, min_trophies, unlocked_cards_count) VALUES (12, 'Spooky Town', 3800, 6);  
INSERT INTO Arena (arena_id, arena_name, min_trophies, unlocked_cards_count) VALUES (13, 'Rascal''s Hideout', 4200, 6);  
INSERT INTO Arena (arena_id, arena_name, min_trophies, unlocked_cards_count) VALUES (14, 'Serenity Peak', 4600, 6);  
INSERT INTO Arena (arena_id, arena_name, min_trophies, unlocked_cards_count) VALUES (15, 'Miner''s Mine', 5000, 6);  
INSERT INTO Arena (arena_id, arena_name, min_trophies, unlocked_cards_count) VALUES (16, 'Executioner''s Kitchen', 5500, 6);  
INSERT INTO Arena (arena_id, arena_name, min_trophies, unlocked_cards_count) VALUES (17, 'Royal Crypt', 6000, 6);  
INSERT INTO Arena (arena_id, arena_name, min_trophies, unlocked_cards_count) VALUES (18, 'Silent Sanctuary', 6500, 6);  
INSERT INTO Arena (arena_id, arena_name, min_trophies, unlocked_cards_count) VALUES (19, 'Dragon Spa', 7000, 6);  
INSERT INTO Arena (arena_id, arena_name, min_trophies, unlocked_cards_count) VALUES (20, 'Boot Camp', 7500, 6);  
INSERT INTO Arena (arena_id, arena_name, min_trophies, unlocked_cards_count) VALUES (21, 'Clash Fest', 8000, 6);  
INSERT INTO Arena (arena_id, arena_name, min_trophies, unlocked_cards_count) VALUES (22, 'PANCAKES!', 8500, 6);  
INSERT INTO Arena (arena_id, arena_name, min_trophies, unlocked_cards_count) VALUES (23, 'Valkalla', 9000, 6);  
INSERT INTO Arena (arena_id, arena_name, min_trophies, unlocked_cards_count) VALUES (24, 'Legendary Arena', 9500, 6);


-- Clan
INSERT INTO Clan (clan_id, clan_name, flag_id, clan_trophies) VALUES (1, 'TugaPower', 101, 1200);
INSERT INTO Clan (clan_id, clan_name, flag_id, clan_trophies) VALUES (2, 'RoyaleKings', 102, 3000);
--É suposto meter varios clas???????? Lost bro, maior parte temos de dar exemplos só ne

-- Tournament
INSERT INTO Tournament (tournament_id, tournament_name, tournament_type, start_date, end_date) 
VALUES (1, 'Summer Cup', 'Elimination', '2023-06-01 10:00:00', '2023-06-01 12:00:00');
--Torneio de exemplo, temos que criar o "Torneio do Lázaro maior Rei"👑

-- Battle
INSERT INTO Battle (battle_id, battle_duration, crowns_total) VALUES (1001, 180, 3);
INSERT INTO Battle (battle_id, battle_duration, crowns_total) VALUES (1002, 120, 1);




-- Items 1 e 2 são Moedas e Gemas
INSERT INTO Item (item_id, item_quantity) VALUES (1, 1000000); -- Gold Resource
INSERT INTO Item (item_id, item_quantity) VALUES (2, 1000000); -- Gem Resource

INSERT INTO Gold (item_id) VALUES (1);
INSERT INTO Gem (item_id) VALUES (2);
--Foi o chat que fez, tou perdido preciso da vossa ajuda nesta parte de cima e de baixo. É assim?😭

-- Items 3 a 6 são Cartas
-- Nota: Inserimos primeiro na tabela Item, depois na tabela Card
INSERT INTO Item (item_id, item_quantity) VALUES
INSERT INTO Item (item_id, item_quantity) VALUES
-- 1 Elixir
(3, 1), -- Skeletons
(4, 1), -- Ice Spirit
(5, 1), -- Fire Spirit
(6, 1), -- Electro Spirit
(7, 1), -- Heal Spirit
(8, 1), -- Mirror (Variable Cost)

-- 2 Elixir
(9, 1), -- Goblins
(10, 1), -- Spear Goblins
(11, 1), -- Bats
(12, 1), -- Bomber
(13, 1), -- Ice Golem
(14, 1), -- Zap
(15, 1), -- Giant Snowball
(16, 1), -- The Log
(17, 1), -- Barbarian Barrel
(18, 1), -- Rage
(19, 1), -- Wall Breakers

-- 3 Elixir
(20, 1), -- Knight
(21, 1), -- Archers
(22, 1), -- Minions
(23, 1), -- Goblin Gang
(24, 1), -- Mega Minion
(25, 1), -- Guards
(26, 1), -- Dart Goblin
(27, 1), -- Skeleton Army
(28, 1), -- Tombstone
(29, 1), -- Cannon
(30, 1), -- Goblin Barrel
(31, 1), -- Skeleton Barrel
(32, 1), -- Firecracker
(33, 1), -- Arrows
(34, 1), -- Clone
(35, 1), -- Tornado
(36, 1), -- Earthquake
(37, 1), -- Royal Delivery
(38, 1), -- Void
(39, 1), -- Princess
(40, 1), -- Ice Wizard
(41, 1), -- Miner
(42, 1), -- Bandit
(43, 1), -- Royal Ghost
(44, 1), -- Fisherman
(45, 1), -- Elixir Golem
(46, 1), -- Little Prince (Champion)

-- 4 Elixir
(47, 1), -- Valkyrie
(48, 1), -- Musketeer
(49, 1), -- Mini P.E.K.K.A
(50, 1), -- Hog Rider
(51, 1), -- Battle Ram
(52, 1), -- Flying Machine
(53, 1), -- Zappies
(54, 1), -- Furnace
(55, 1), -- Bomb Tower
(56, 1), -- Tesla
(57, 1), -- Goblin Cage
(58, 1), -- Goblin Drill
(59, 1), -- Mortar
(60, 1), -- Skeleton Dragons
(61, 1), -- Battle Healer
(62, 1), -- Fireball
(63, 1), -- Poison
(64, 1), -- Freeze
(65, 1), -- Electro Wizard
(66, 1), -- Inferno Dragon
(67, 1), -- Night Witch
(68, 1), -- Lumberjack
(69, 1), -- Hunter
(70, 1), -- Magic Archer
(71, 1), -- Mother Witch
(72, 1), -- Phoenix
(73, 1), -- Golden Knight (Champion)
(74, 1), -- Skeleton King (Champion)
(75, 1), -- Mighty Miner (Champion)

-- 5 Elixir
(76, 1), -- Giant
(77, 1), -- Wizard
(78, 1), -- Witch
(79, 1), -- Prince
(80, 1), -- Baby Dragon
(81, 1), -- Barbarians
(82, 1), -- Minion Horde
(83, 1), -- Rascals
(84, 1), -- Royal Hogs
(85, 1), -- Balloon
(86, 1), -- Cannon Cart
(87, 1), -- Inferno Tower
(88, 1), -- Goblin Hut
(89, 1), -- Executioner
(90, 1), -- Bowler
(91, 1), -- Graveyard
(92, 1), -- Ram Rider
(93, 1), -- Electro Dragon
(94, 1), -- Monk (Champion)
(95, 1), -- Archer Queen (Champion)

-- 6 Elixir
(96, 1), -- Royal Giant
(97, 1), -- Giant Skeleton
(98, 1), -- Elite Barbarians
(99, 1), -- Goblin Giant
(100, 1), -- Sparky
(101, 1), -- X-Bow
(102, 1), -- Rocket
(103, 1), -- Lightning

-- 7 Elixir
(104, 1), -- P.E.K.K.A
(105, 1), -- Mega Knight
(106, 1), -- Lava Hound
(107, 1), -- Royal Recruits
(108, 1), -- Barbarian Hut

-- 8 Elixir
(109, 1), -- Golem
(110, 1), -- Electro Giant

-- 9 Elixir
(111, 1), -- Three Musketeers

--Se for assim depois chapa-se as cartas todas, queremos 5000 queries🙏

INSERT INTO Card (item_id, card_name, rarity, card_type, elixir_cost) VALUES
-- Custo 1
(3, 'Skeletons', 'common', 'ground', 1),
(4, 'Ice Spirit', 'common', 'ground', 1),
(5, 'Fire Spirit', 'common', 'ground', 1),
(6, 'Electro Spirit', 'common', 'ground', 1),
(7, 'Heal Spirit', 'rare', 'ground', 1),
(8, 'Mirror', 'epic', 'spell', 1), -- Custo Variável (+1)

-- Custo 2
(9, 'Goblins', 'common', 'ground', 2),
(10, 'Spear Goblins', 'common', 'ground', 2),
(11, 'Bats', 'common', 'aerial', 2),
(12, 'Bomber', 'common', 'ground', 2),
(13, 'Ice Golem', 'rare', 'ground', 2),
(14, 'Zap', 'common', 'spell', 2),
(15, 'Giant Snowball', 'common', 'spell', 2),
(16, 'The Log', 'legendary', 'spell', 2),
(17, 'Barbarian Barrel', 'epic', 'spell', 2),
(18, 'Rage', 'epic', 'spell', 2),
(19, 'Wall Breakers', 'epic', 'ground', 2),

-- Custo 3
(20, 'Knight', 'common', 'ground', 3),
(21, 'Archers', 'common', 'ground', 3),
(22, 'Minions', 'common', 'aerial', 3),
(23, 'Goblin Gang', 'common', 'ground', 3),
(24, 'Mega Minion', 'rare', 'aerial', 3),
(25, 'Guards', 'epic', 'ground', 3),
(26, 'Dart Goblin', 'rare', 'ground', 3),
(27, 'Skeleton Army', 'epic', 'ground', 3),
(28, 'Tombstone', 'rare', 'building', 3),
(29, 'Cannon', 'common', 'building', 3),
(30, 'Goblin Barrel', 'epic', 'spell', 3),
(31, 'Skeleton Barrel', 'common', 'aerial', 3),
(32, 'Firecracker', 'common', 'ground', 3),
(33, 'Arrows', 'common', 'spell', 3),
(34, 'Clone', 'epic', 'spell', 3),
(35, 'Tornado', 'epic', 'spell', 3),
(36, 'Earthquake', 'rare', 'spell', 3),
(37, 'Royal Delivery', 'common', 'spell', 3),
(38, 'Void', 'epic', 'spell', 3),
(39, 'Princess', 'legendary', 'ground', 3),
(40, 'Ice Wizard', 'legendary', 'ground', 3),
(41, 'Miner', 'legendary', 'ground', 3),
(42, 'Bandit', 'legendary', 'ground', 3),
(43, 'Royal Ghost', 'legendary', 'ground', 3),
(44, 'Fisherman', 'legendary', 'ground', 3),
(45, 'Elixir Golem', 'rare', 'ground', 3),
(46, 'Little Prince', 'champion', 'ground', 3),

-- Custo 4
(47, 'Valkyrie', 'rare', 'ground', 4),
(48, 'Musketeer', 'rare', 'ground', 4),
(49, 'Mini P.E.K.K.A', 'rare', 'ground', 4),
(50, 'Hog Rider', 'rare', 'ground', 4),
(51, 'Battle Ram', 'rare', 'ground', 4),
(52, 'Flying Machine', 'rare', 'aerial', 4),
(53, 'Zappies', 'rare', 'ground', 4),
(54, 'Furnace', 'rare', 'building', 4),
(55, 'Bomb Tower', 'rare', 'building', 4),
(56, 'Tesla', 'common', 'building', 4),
(57, 'Goblin Cage', 'rare', 'building', 4),
(58, 'Goblin Drill', 'epic', 'building', 4),
(59, 'Mortar', 'common', 'building', 4),
(60, 'Skeleton Dragons', 'common', 'aerial', 4),
(61, 'Battle Healer', 'rare', 'ground', 4),
(62, 'Fireball', 'rare', 'spell', 4),
(63, 'Poison', 'epic', 'spell', 4),
(64, 'Freeze', 'epic', 'spell', 4),
(65, 'Electro Wizard', 'legendary', 'ground', 4),
(66, 'Inferno Dragon', 'legendary', 'aerial', 4),
(67, 'Night Witch', 'legendary', 'ground', 4),
(68, 'Lumberjack', 'legendary', 'ground', 4),
(69, 'Hunter', 'epic', 'ground', 4),
(70, 'Magic Archer', 'legendary', 'ground', 4),
(71, 'Mother Witch', 'legendary', 'ground', 4),
(72, 'Phoenix', 'legendary', 'aerial', 4),
(73, 'Golden Knight', 'champion', 'ground', 4),
(74, 'Skeleton King', 'champion', 'ground', 4),
(75, 'Mighty Miner', 'champion', 'ground', 4),

-- Custo 5
(76, 'Giant', 'rare', 'ground', 5),
(77, 'Wizard', 'rare', 'ground', 5),
(78, 'Witch', 'epic', 'ground', 5),
(79, 'Prince', 'epic', 'ground', 5),
(80, 'Baby Dragon', 'epic', 'aerial', 5),
(81, 'Barbarians', 'common', 'ground', 5),
(82, 'Minion Horde', 'common', 'aerial', 5),
(83, 'Rascals', 'common', 'ground', 5),
(84, 'Royal Hogs', 'rare', 'ground', 5),
(85, 'Balloon', 'epic', 'aerial', 5),
(86, 'Cannon Cart', 'epic', 'ground', 5),
(87, 'Inferno Tower', 'rare', 'building', 5),
(88, 'Goblin Hut', 'rare', 'building', 5),
(89, 'Executioner', 'epic', 'ground', 5),
(90, 'Bowler', 'epic', 'ground', 5),
(91, 'Graveyard', 'legendary', 'spell', 5),
(92, 'Ram Rider', 'legendary', 'ground', 5),
(93, 'Electro Dragon', 'epic', 'aerial', 5),
(94, 'Monk', 'champion', 'ground', 5),
(95, 'Archer Queen', 'champion', 'ground', 5),

-- Custo 6
(96, 'Royal Giant', 'common', 'ground', 6),
(97, 'Giant Skeleton', 'epic', 'ground', 6),
(98, 'Elite Barbarians', 'common', 'ground', 6),
(99, 'Goblin Giant', 'epic', 'ground', 6),
(100, 'Sparky', 'legendary', 'ground', 6),
(101, 'X-Bow', 'epic', 'building', 6),
(102, 'Rocket', 'rare', 'spell', 6),
(103, 'Lightning', 'epic', 'spell', 6),

-- Custo 7
(104, 'P.E.K.K.A', 'epic', 'ground', 7),
(105, 'Mega Knight', 'legendary', 'ground', 7),
(106, 'Lava Hound', 'legendary', 'aerial', 7),
(107, 'Royal Recruits', 'common', 'ground', 7),
(108, 'Barbarian Hut', 'rare', 'building', 7),

-- Custo 8
(109, 'Golem', 'epic', 'ground', 8),
(110, 'Electro Giant', 'epic', 'ground', 8),

-- Custo 9
(111, 'Three Musketeers', 'rare', 'ground', 9),


-- Price (Preços na Loja)
INSERT INTO Price (item_id, shop_id, price_value) VALUES (3, 1, 100); -- Knight custa 100
INSERT INTO Price (item_id, shop_id, price_value) VALUES (5, 1, 500); -- Giant custa 500
--Tou confuso, dá para meter chests mas como?? Não tem item id
--Vamos ficar reduzidos a gold coin e cards na shop basicamente

-- CardStats (Estatísticas por nível)
INSERT INTO CardStats (item_id, card_level, health_points, damage_points) VALUES (3, 1, 600, 100); -- Knight Lvl 1
INSERT INTO CardStats (item_id, card_level, health_points, damage_points) VALUES (3, 2, 660, 110); -- Knight Lvl 2
INSERT INTO CardStats (item_id, card_level, health_points, damage_points) VALUES (4, 1, 200, 50);  -- Archers Lvl 1
--Tamos fucked, porque tipo existem 15 niveis para cada uma das 120 cartas👌(tomamos no butico)

-- ChestInstance (Baús existentes)
INSERT INTO ChestInstance (chest_id, type_name) VALUES (201, 'Silver');
INSERT INTO ChestInstance (chest_id, type_name) VALUES (202, 'Gold');
--Nao percebi esta mrd, pedi ao chat🤔

-- ItemChest (O que está dentro dos baús - potencial ou real)
INSERT INTO ItemChest (item_id, chest_id) VALUES (1, 201); -- Gold no Silver Chest
INSERT INTO ItemChest (item_id, chest_id) VALUES (3, 201); -- Knight no Silver Chest
--Tipo... aqui é mrds random ne? nao precisamos de fazer todas as combinaçoes



-- Players
INSERT INTO Player (player_id, username, player_level, trophies, gold_balance, gems_balance, max_trophies, battles_won) 
VALUES (10, 'TugaKing', 5, 1200, 5000, 100, 1250, 50);

INSERT INTO Player (player_id, username, player_level, trophies, gold_balance, gems_balance, max_trophies, battles_won) 
VALUES (20, 'NoobMaster', 1, 0, 100, 0, 50, 1);

-- PlayerArena
-- Nota: TugaKing tem 1200 troféus, pode entrar na Arena 3 (Min 800)
-- NoobMaster tem 0 troféus, entra na Arena 1 (Min 0)
INSERT INTO PlayerArena (player_id, arena_id) VALUES (10, 3);
INSERT INTO PlayerArena (player_id, arena_id) VALUES (20, 1);
--Era bue mais facil com triggers mas nao podemos usar... agora é tudo na mao da punheta

-- PlayerClan
INSERT INTO PlayerClan (player_id, clan_id, clan_role) VALUES (10, 1, 'Leader');
INSERT INTO PlayerClan (player_id, clan_id, clan_role) VALUES (20, 1, 'Member');
--Aqui é chill, pode ser qualquer cena

-- PlayerChest (Baús que os jogadores possuem)
INSERT INTO PlayerChest (chest_id, player_id) VALUES (201, 10);
INSERT INTO PlayerChest (chest_id, player_id) VALUES (202, 10);
--Metemos tipo 4? Devia haver um limitador sei la

-- PlayerCardLevel (Coleção dos jogadores)
INSERT INTO PlayerCardLevel (player_id, item_id, current_level) VALUES (10, 3, 2); -- TugaKing tem Knight lvl 2
INSERT INTO PlayerCardLevel (player_id, item_id, current_level) VALUES (10, 5, 1); -- TugaKing tem Giant lvl 1
INSERT INTO PlayerCardLevel (player_id, item_id, current_level) VALUES (20, 3, 1); -- NoobMaster tem Knight lvl 1
--Esta cena nao da para sacar la da coleçao de cima???

-- Stats (Torneios)
INSERT INTO Stats (player_id, tournament_id, win_streak, ranking_position) VALUES (10, 1, 5, 1);
--Por player


-- Daqui para baixo é chat (Eu sei que nao da para usar triggers)

-- ==========================================
-- 5. DECKS E BATALHAS (Com Triggers)
-- ==========================================

-- Deck
-- Inicializamos average_elixir a 0. O Trigger vai atualizar isto ao inserir cartas.
INSERT INTO Deck (deck_id, deck_number, average_elixir, player_id) VALUES (1, 1, 0.0, 10);

-- CardDeck (Preencher o deck do TugaKing)
-- Knight (3 elixir) + Archers (3 elixir) + Giant (5 elixir) + Fireball (4 elixir)
-- Total: 15 / 4 cartas = 3.75 elixir médio
INSERT INTO CardDeck (item_id, deck_id) VALUES (3, 1);
INSERT INTO CardDeck (item_id, deck_id) VALUES (4, 1);
INSERT INTO CardDeck (item_id, deck_id) VALUES (5, 1);
INSERT INTO CardDeck (item_id, deck_id) VALUES (6, 1);

-- Result (Batalhas)
-- TugaKing (10) vs NoobMaster (20)
INSERT INTO Result (battle_id, player_id1, player_id2, loser_id, winner_id) 
VALUES (1001, 10, 20, 20, 10);

-- Outra batalha
INSERT INTO Result (battle_id, player_id1, player_id2, loser_id, winner_id) 
VALUES (1002, 20, 10, 20, 10);