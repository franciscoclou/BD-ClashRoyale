PRAGMA foreign_keys = ON;

-- Shop
INSERT INTO Shop (shop_id, refresh_timestamp) VALUES
(1, '00:00:00'),
(2, '12:00:00');

-- ChestType
INSERT INTO ChestType (type_name, unlock_time_minutes) VALUES
('Wooden', 1),
('Silver', 180),
('Gold', 480),
('Magical', 720),
('Giant', 720),
('Legendary', 1440),
('Champion', 1440),
('Lightning', 1440);


-- Arena
INSERT INTO Arena (arena_id, arena_name, min_trophies, unlocked_cards_count) VALUES
(0, 'Training Camp', 0, 12),
(1, 'Goblin Stadium', 0, 6),
(2, 'Bone Pit', 300, 6),
(3, 'Barbarian Bowl', 600, 6),
(4, 'Spell Valley', 1000, 6),
(5, 'Builder''s Workshop', 1300, 6),
(6, 'P.E.K.K.A''s Playhouse', 1600, 6),
(7, 'Royal Arena', 2000, 6),
(8, 'Frozen Peak', 2300, 6),
(9, 'Jungle Arena', 2600, 6),
(10, 'Hog Mountain', 3000, 6),
(11, 'Electro Valley', 3400, 6),
(12, 'Spooky Town', 3800, 6),
(13, 'Rascal''s Hideout', 4200, 6),
(14, 'Serenity Peak', 4600, 6),
(15, 'Miner''s Mine', 5000, 6),
(16, 'Executioner''s Kitchen', 5500, 6),
(17, 'Royal Crypt', 6000, 6),
(18, 'Silent Sanctuary', 6500, 6),
(19, 'Dragon Spa', 7000, 6),
(20, 'Boot Camp', 7500, 6),
(21, 'Clash Fest', 8000, 6),
(22, 'PANCAKES!', 8500, 6),
(23, 'Valkalla', 9000, 6),
(24, 'Legendary Arena', 9500, 6);


-- Clan
INSERT INTO Clan (clan_id, clan_name, flag_id, clan_trophies) VALUES
(1, 'TugaPower', 101, 1200),
(2, 'RoyaleKings', 102, 3000),
(3, 'OsPadeiros', 103, 500);
--É suposto meter varios clas???????? Lost bro, maior parte temos de dar exemplos só ne

-- Tournament
INSERT INTO Tournament (tournament_id, tournament_name, tournament_type, start_date, end_date) VALUES
(1, 'Summer Cup', 'Elimination', '2023-06-01 10:00:00', '2023-06-01 12:00:00')
(2, 'Winter Royale Bash', 'Round Robin', '2026-01-15 19:00:00', '2026-01-22 19:00:00'),
(3, 'Desafio da Lâmina Silenciosa', 'Elimination', '2025-11-28 20:30:00', '2025-11-28 22:30:00'),
(4, 'Copa da Sombra Eterna', 'League', '2026-02-01 10:00:00', '2026-02-28 22:00:00');
--Torneio de exemplo, temos que criar o "Torneio do Lázaro maior Rei"👑

-- Battle
INSERT INTO Battle (battle_id, battle_duration, crowns_total) VALUES
(1, 180, 3),
(2, 120, 1),
(3, 65, 3),
(4, 300, 0),
(5, 235, 2),
(6, 150, 1),
(7, 45, 3),  
(8, 85, 3), 
(9, 110, 3),
(10, 95, 2),
(11, 180, 1), 
(12, 175, 2),
(13, 160, 1),
(14, 178, 1),
(15, 180, 2),
(16, 195, 1), 
(17, 210, 1),
(18, 245, 2), 
(19, 290, 1),
(20, 299, 1), 
(21, 300, 0), 
(22, 300, 0), 
(23, 300, 2), 
(24, 130, 3),
(25, 200, 1),
(26, 155, 2);

-- Items: Moedas, Gemas e Cartas (Item table grouped)
INSERT INTO Item (item_id, item_quantity) VALUES
-- Resources
(1, 1000000), -- Gold Resource
(2, 1000000), -- Gem Resource

-- Custo 1
(3, 1), -- Skeletons
(4, 1), -- Ice Spirit
(5, 1), -- Fire Spirit
(6, 1), -- Electro Spirit
(7, 1), -- Heal Spirit
(8, 1), -- Mirror (Variable Cost)

-- Custo 2
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

-- Custo 3
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

-- Custo 4
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

-- Custo 5
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

-- Custo 6
(96, 1), -- Royal Giant
(97, 1), -- Giant Skeleton
(98, 1), -- Elite Barbarians
(99, 1), -- Goblin Giant
(100, 1), -- Sparky
(101, 1), -- X-Bow
(102, 1), -- Rocket
(103, 1), -- Lightning

-- Custo 7
(104, 1), -- P.E.K.K.A
(105, 1), -- Mega Knight
(106, 1), -- Lava Hound
(107, 1), -- Royal Recruits
(108, 1), -- Barbarian Hut

-- Custo 8
(109, 1), -- Golem
(110, 1), -- Electro Giant

-- Custo 9
(111, 1); -- Three Musketeers

-- Gold / Gem links
INSERT INTO Gold (item_id) VALUES (1);
INSERT INTO Gem (item_id) VALUES (2);
--Foi o chat que fez, tou perdido preciso da vossa ajuda nesta parte de cima e de baixo. É assim?😭

-- Card (grouped)
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
(111, 'Three Musketeers', 'rare', 'ground', 9);


-- Price (Preços na Loja)
INSERT INTO Price (item_id, shop_id, price_value) VALUES
(3, 1, 100), -- Knight custa 100
(5, 1, 500); -- Giant custa 500
--Tou confuso, dá para meter chests mas como?? Não tem item id
--Vamos ficar reduzidos a gold coin e cards na shop basicamente

-- CardStats (Estatísticas por nível) -- grouped for item 20 (Knight)
INSERT INTO CardStats (item_id, card_level, health_points, damage_points) VALUES
-- ID 3: Skeletons
(3, 1, 67, 67), (3, 2, 74, 74), (3, 3, 81, 81), (3, 4, 89, 89), (3, 5, 98, 98),
-- ID 4: Ice Spirit
(4, 1, 190, 91), (4, 2, 209, 100), (4, 3, 230, 110), (4, 4, 253, 121), (4, 5, 278, 133),
-- ID 5: Fire Spirit
(5, 1, 190, 169), (5, 2, 209, 186), (5, 3, 230, 205), (5, 4, 253, 225), (5, 5, 278, 248),
-- ID 6: Electro Spirit
(6, 1, 190, 84), (6, 2, 209, 92), (6, 3, 230, 102), (6, 4, 253, 112), (6, 5, 278, 123),
-- ID 7: Heal Spirit
(7, 1, 190, 91), (7, 2, 209, 100), (7, 3, 230, 110), (7, 4, 253, 121), (7, 5, 278, 133),
-- ID 8: Mirror (Stats 0, copia outras)
(8, 1, 0, 0), (8, 2, 0, 0), (8, 3, 0, 0), (8, 4, 0, 0), (8, 5, 0, 0),
-- ID 9: Goblins
(9, 1, 167, 99), (9, 2, 184, 109), (9, 3, 202, 120), (9, 4, 222, 132), (9, 5, 244, 145),
-- ID 10: Spear Goblins
(10, 1, 110, 67), (10, 2, 121, 74), (10, 3, 133, 81), (10, 4, 146, 89), (10, 5, 161, 98),
-- ID 11: Bats
(11, 1, 67, 67), (11, 2, 74, 74), (11, 3, 81, 81), (11, 4, 89, 89), (11, 5, 98, 98),
-- ID 12: Bomber
(12, 1, 275, 271), (12, 2, 303, 298), (12, 3, 333, 328), (12, 4, 366, 361), (12, 5, 403, 397),
-- ID 13: Ice Golem
(13, 1, 625, 70), (13, 2, 688, 77), (13, 3, 756, 85), (13, 4, 832, 93), (13, 5, 915, 102),
-- ID 14: Zap (Feitiço)
(14, 1, 0, 159), (14, 2, 0, 175), (14, 3, 0, 192), (14, 4, 0, 211), (14, 5, 0, 232),
-- ID 15: Giant Snowball (Feitiço)
(15, 1, 0, 159), (15, 2, 0, 175), (15, 3, 0, 192), (15, 4, 0, 211), (15, 5, 0, 232),
-- ID 16: The Log (Feitiço)
(16, 1, 0, 240), (16, 2, 0, 264), (16, 3, 0, 290), (16, 4, 0, 319), (16, 5, 0, 351),
-- ID 17: Barbarian Barrel (Feitiço/Tropa)
(17, 1, 0, 200), (17, 2, 0, 220), (17, 3, 0, 242), (17, 4, 0, 266), (17, 5, 0, 293),
-- ID 18: Rage (Feitiço - sem dano direto no nível base antigo, ou baixo agora)
(18, 1, 0, 0), (18, 2, 0, 0), (18, 3, 0, 0), (18, 4, 0, 0), (18, 5, 0, 0),
-- ID 19: Wall Breakers
(19, 1, 275, 325), (19, 2, 303, 358), (19, 3, 333, 393), (19, 4, 366, 433), (19, 5, 403, 476),
-- ID 20: Knight
(20, 1, 1450, 167), (20, 2, 1595, 184), (20, 3, 1755, 202), (20, 4, 1930, 222), (20, 5, 2123, 244),
-- ID 21: Archers
(21, 1, 252, 89), (21, 2, 277, 98), (21, 3, 305, 108), (21, 4, 335, 118), (21, 5, 369, 130),
-- ID 22: Minions
(22, 1, 190, 84), (22, 2, 209, 92), (22, 3, 230, 102), (22, 4, 253, 112), (22, 5, 278, 123),
-- ID 23: Goblin Gang
(23, 1, 167, 99), (23, 2, 184, 109), (23, 3, 202, 120), (23, 4, 222, 132), (23, 5, 244, 145),
-- ID 24: Mega Minion
(24, 1, 695, 258), (24, 2, 765, 284), (24, 3, 841, 312), (24, 4, 925, 343), (24, 5, 1018, 377),
-- ID 25: Guards
(25, 1, 90, 100), (25, 2, 99, 110), (25, 3, 109, 121), (25, 4, 120, 133), (25, 5, 132, 146),
-- ID 26: Dart Goblin
(26, 1, 216, 108), (26, 2, 238, 119), (26, 3, 261, 131), (26, 4, 287, 144), (26, 5, 316, 158),
-- ID 27: Skeleton Army
(27, 1, 67, 67), (27, 2, 74, 74), (27, 3, 81, 81), (27, 4, 89, 89), (27, 5, 98, 98),
-- ID 28: Tombstone
(28, 1, 440, 0), (28, 2, 484, 0), (28, 3, 532, 0), (28, 4, 586, 0), (28, 5, 644, 0),
-- ID 29: Cannon
(29, 1, 742, 175), (29, 2, 816, 193), (29, 3, 898, 212), (29, 4, 988, 233), (29, 5, 1086, 256),
-- ID 30: Goblin Barrel (Status de spawn)
(30, 1, 0, 99), (30, 2, 0, 109), (30, 3, 0, 120), (30, 4, 0, 132), (30, 5, 0, 145),
-- ID 31: Skeleton Barrel (Dano de queda)
(31, 1, 600, 67), (31, 2, 660, 74), (31, 3, 726, 81), (31, 4, 799, 89), (31, 5, 878, 98),
-- ID 32: Firecracker
(32, 1, 252, 53), (32, 2, 277, 58), (32, 3, 305, 64), (32, 4, 335, 71), (32, 5, 369, 78),
-- ID 33: Arrows (Feitiço)
(33, 1, 0, 303), (33, 2, 0, 333), (33, 3, 0, 366), (33, 4, 0, 403), (33, 5, 0, 443),
-- ID 34: Clone
(34, 1, 0, 0), (34, 2, 0, 0), (34, 3, 0, 0), (34, 4, 0, 0), (34, 5, 0, 0),
-- ID 35: Tornado
(35, 1, 0, 70), (35, 2, 0, 77), (35, 3, 0, 85), (35, 4, 0, 93), (35, 5, 0, 102),
-- ID 36: Earthquake
(36, 1, 0, 68), (36, 2, 0, 75), (36, 3, 0, 82), (36, 4, 0, 91), (36, 5, 0, 100),
-- ID 37: Royal Delivery
(37, 1, 0, 362), (37, 2, 0, 398), (37, 3, 0, 438), (37, 4, 0, 482), (37, 5, 0, 530),
-- ID 38: Void
(38, 1, 0, 100), (38, 2, 0, 110), (38, 3, 0, 121), (38, 4, 0, 133), (38, 5, 0, 146),
-- ID 39: Princess
(39, 1, 216, 140), (39, 2, 238, 154), (39, 3, 261, 169), (39, 4, 287, 186), (39, 5, 316, 205),
-- ID 40: Ice Wizard
(40, 1, 590, 75), (40, 2, 649, 83), (40, 3, 714, 91), (40, 4, 785, 100), (40, 5, 864, 110),
-- ID 41: Miner
(41, 1, 1000, 160), (41, 2, 1100, 176), (41, 3, 1210, 194), (41, 4, 1331, 213), (41, 5, 1464, 234),
-- ID 42: Bandit
(42, 1, 750, 160), (42, 2, 825, 176), (42, 3, 908, 194), (42, 4, 998, 213), (42, 5, 1098, 234),
-- ID 43: Royal Ghost
(43, 1, 1000, 216), (43, 2, 1100, 238), (43, 3, 1210, 261), (43, 4, 1331, 287), (43, 5, 1464, 316),
-- ID 44: Fisherman
(44, 1, 720, 160), (44, 2, 792, 176), (44, 3, 871, 194), (44, 4, 958, 213), (44, 5, 1054, 234),
-- ID 45: Elixir Golem
(45, 1, 1400, 0), (45, 2, 1540, 0), (45, 3, 1694, 0), (45, 4, 1863, 0), (45, 5, 2050, 0),
-- ID 46: Little Prince
(46, 1, 700, 110), (46, 2, 770, 121), (46, 3, 847, 133), (46, 4, 932, 146), (46, 5, 1025, 161),
-- ID 47: Valkyrie
(47, 1, 1650, 221), (47, 2, 1815, 243), (47, 3, 1997, 267), (47, 4, 2196, 294), (47, 5, 2416, 323),
-- ID 48: Musketeer
(48, 1, 598, 181), (48, 2, 658, 199), (48, 3, 724, 219), (48, 4, 796, 241), (48, 5, 876, 265),
-- ID 49: Mini P.E.K.K.A
(49, 1, 1129, 598), (49, 2, 1242, 658), (49, 3, 1366, 724), (49, 4, 1503, 796), (49, 5, 1653, 876),
-- ID 50: Hog Rider
(50, 1, 1408, 264), (50, 2, 1549, 290), (50, 3, 1704, 319), (50, 4, 1874, 351), (50, 5, 2061, 386),
-- ID 51: Battle Ram
(51, 1, 756, 246), (51, 2, 832, 271), (51, 3, 915, 298), (51, 4, 1006, 327), (51, 5, 1107, 360),
-- ID 52: Flying Machine
(52, 1, 510, 142), (52, 2, 561, 156), (52, 3, 617, 172), (52, 4, 679, 189), (52, 5, 747, 208),
-- ID 53: Zappies
(53, 1, 440, 70), (53, 2, 484, 77), (53, 3, 532, 85), (53, 4, 586, 93), (53, 5, 644, 102),
-- ID 54: Furnace
(54, 1, 1000, 0), (54, 2, 1100, 0), (54, 3, 1210, 0), (54, 4, 1331, 0), (54, 5, 1464, 0),
-- ID 55: Bomb Tower
(55, 1, 1126, 184), (55, 2, 1239, 202), (55, 3, 1362, 223), (55, 4, 1499, 245), (55, 5, 1649, 269),
-- ID 56: Tesla
(56, 1, 954, 190), (56, 2, 1049, 209), (56, 3, 1154, 230), (56, 4, 1270, 253), (56, 5, 1397, 278),
-- ID 57: Goblin Cage
(57, 1, 800, 0), (57, 2, 880, 0), (57, 3, 968, 0), (57, 4, 1065, 0), (57, 5, 1171, 0),
-- ID 58: Goblin Drill
(58, 1, 1100, 0), (58, 2, 1210, 0), (58, 3, 1331, 0), (58, 4, 1464, 0), (58, 5, 1611, 0),
-- ID 59: Mortar
(59, 1, 1219, 200), (59, 2, 1341, 220), (59, 3, 1475, 242), (59, 4, 1622, 266), (59, 5, 1785, 293),
-- ID 60: Skeleton Dragons
(60, 1, 440, 133), (60, 2, 484, 146), (60, 3, 532, 161), (60, 4, 586, 177), (60, 5, 644, 195),
-- ID 61: Battle Healer
(61, 1, 1500, 123), (61, 2, 1650, 135), (61, 3, 1815, 149), (61, 4, 1997, 164), (61, 5, 2196, 180),
-- ID 62: Fireball (Feitiço)
(62, 1, 0, 572), (62, 2, 0, 629), (62, 3, 0, 692), (62, 4, 0, 761), (62, 5, 0, 837),
-- ID 63: Poison (Feitiço - Dano Total/seg)
(63, 1, 0, 75), (63, 2, 0, 83), (63, 3, 0, 91), (63, 4, 0, 100), (63, 5, 0, 110),
-- ID 64: Freeze (Feitiço)
(64, 1, 0, 95), (64, 2, 0, 105), (64, 3, 0, 115), (64, 4, 0, 126), (64, 5, 0, 139),
-- ID 65: Electro Wizard
(65, 1, 590, 192), (65, 2, 649, 211), (65, 3, 714, 232), (65, 4, 785, 255), (65, 5, 864, 281),
-- ID 66: Inferno Dragon
(66, 1, 1070, 30), (66, 2, 1177, 33), (66, 3, 1295, 36), (66, 4, 1424, 40), (66, 5, 1566, 44),
-- ID 67: Night Witch
(67, 1, 750, 260), (67, 2, 825, 286), (67, 3, 908, 315), (67, 4, 998, 346), (67, 5, 1098, 381),
-- ID 68: Lumberjack
(68, 1, 1060, 200), (68, 2, 1166, 220), (68, 3, 1283, 242), (68, 4, 1411, 266), (68, 5, 1552, 293),
-- ID 69: Hunter
(69, 1, 696, 69), (69, 2, 766, 76), (69, 3, 842, 83), (69, 4, 926, 92), (69, 5, 1019, 101),
-- ID 70: Magic Archer
(70, 1, 490, 111), (70, 2, 539, 122), (70, 3, 593, 134), (70, 4, 652, 148), (70, 5, 717, 163),
-- ID 71: Mother Witch
(71, 1, 560, 110), (71, 2, 616, 121), (71, 3, 678, 133), (71, 4, 745, 146), (71, 5, 820, 161),
-- ID 72: Phoenix
(72, 1, 1000, 200), (72, 2, 1100, 220), (72, 3, 1210, 242), (72, 4, 1331, 266), (72, 5, 1464, 293),
-- ID 73: Golden Knight
(73, 1, 1800, 160), (73, 2, 1980, 176), (73, 3, 2178, 194), (73, 4, 2396, 213), (73, 5, 2635, 234),
-- ID 74: Skeleton King
(74, 1, 2000, 180), (74, 2, 2200, 198), (74, 3, 2420, 218), (74, 4, 2662, 240), (74, 5, 2928, 264),
-- ID 75: Mighty Miner
(75, 1, 2100, 190), (75, 2, 2310, 209), (75, 3, 2541, 230), (75, 4, 2795, 253), (75, 5, 3075, 278),
-- ID 76: Giant
(76, 1, 3275, 211), (76, 2, 3603, 232), (76, 3, 3963, 255), (76, 4, 4359, 281), (76, 5, 4795, 309),
-- ID 77: Wizard
(77, 1, 598, 234), (77, 2, 658, 257), (77, 3, 724, 283), (77, 4, 796, 311), (77, 5, 876, 342),
-- ID 78: Witch
(78, 1, 696, 111), (78, 2, 766, 122), (78, 3, 842, 134), (78, 4, 926, 148), (78, 5, 1019, 163),
-- ID 79: Prince
(79, 1, 1615, 325), (79, 2, 1777, 358), (79, 3, 1954, 393), (79, 4, 2150, 433), (79, 5, 2365, 476),
-- ID 80: Baby Dragon
(80, 1, 1000, 133), (80, 2, 1100, 146), (80, 3, 1210, 161), (80, 4, 1331, 177), (80, 5, 1464, 195),
-- ID 81: Barbarians
(81, 1, 553, 159), (81, 2, 608, 175), (81, 3, 669, 192), (81, 4, 736, 211), (81, 5, 810, 232),
-- ID 82: Minion Horde
(82, 1, 190, 84), (82, 2, 209, 92), (82, 3, 230, 102), (82, 4, 253, 112), (82, 5, 278, 123),
-- ID 83: Rascals
(83, 1, 1500, 110), (83, 2, 1650, 121), (83, 3, 1815, 133), (83, 4, 1997, 146), (83, 5, 2196, 161),
-- ID 84: Royal Hogs
(84, 1, 695, 60), (84, 2, 765, 66), (84, 3, 841, 73), (84, 4, 925, 80), (84, 5, 1018, 88),
-- ID 85: Balloon
(85, 1, 1396, 798), (85, 2, 1536, 878), (85, 3, 1689, 966), (85, 4, 1858, 1062), (85, 5, 2044, 1168),
-- ID 86: Cannon Cart
(86, 1, 1000, 200), (86, 2, 1100, 220), (86, 3, 1210, 242), (86, 4, 1331, 266), (86, 5, 1464, 293),
-- ID 87: Inferno Tower
(87, 1, 1452, 30), (87, 2, 1597, 33), (87, 3, 1757, 36), (87, 4, 1933, 40), (87, 5, 2126, 44),
-- ID 88: Goblin Hut
(88, 1, 1100, 0), (88, 2, 1210, 0), (88, 3, 1331, 0), (88, 4, 1464, 0), (88, 5, 1611, 0),
-- ID 89: Executioner
(89, 1, 1010, 280), (89, 2, 1111, 308), (89, 3, 1222, 339), (89, 4, 1344, 373), (89, 5, 1479, 410),
-- ID 90: Bowler
(90, 1, 1600, 240), (90, 2, 1760, 264), (90, 3, 1936, 290), (90, 4, 2130, 319), (90, 5, 2343, 351),
-- ID 91: Graveyard (Spawn esqueletos)
(91, 1, 0, 67), (91, 2, 0, 74), (91, 3, 0, 81), (91, 4, 0, 89), (91, 5, 0, 98),
-- ID 92: Ram Rider
(92, 1, 1461, 220), (92, 2, 1607, 242), (92, 3, 1768, 266), (92, 4, 1945, 293), (92, 5, 2139, 322),
-- ID 93: Electro Dragon
(93, 1, 790, 159), (93, 2, 869, 175), (93, 3, 956, 192), (93, 4, 1052, 211), (93, 5, 1157, 232),
-- ID 94: Monk
(94, 1, 2000, 150), (94, 2, 2200, 165), (94, 3, 2420, 182), (94, 4, 2662, 200), (94, 5, 2928, 220),
-- ID 95: Archer Queen
(95, 1, 1000, 200), (95, 2, 1100, 220), (95, 3, 1210, 242), (95, 4, 1331, 266), (95, 5, 1464, 293),
-- ID 96: Royal Giant
(96, 1, 2544, 254), (96, 2, 2798, 279), (96, 3, 3078, 307), (96, 4, 3386, 338), (96, 5, 3725, 372),
-- ID 97: Giant Skeleton
(97, 1, 2700, 172), (97, 2, 2970, 189), (97, 3, 3267, 208), (97, 4, 3594, 229), (97, 5, 3953, 252),
-- ID 98: Elite Barbarians
(98, 1, 1100, 300), (98, 2, 1210, 330), (98, 3, 1331, 363), (98, 4, 1464, 399), (98, 5, 1611, 439),
-- ID 99: Goblin Giant
(99, 1, 2400, 140), (99, 2, 2640, 154), (99, 3, 2904, 169), (99, 4, 3194, 186), (99, 5, 3514, 205),
-- ID 100: Sparky
(100, 1, 1200, 1100), (100, 2, 1320, 1210), (100, 3, 1452, 1331), (100, 4, 1597, 1464), (100, 5, 1757, 1611),
-- ID 101: X-Bow
(101, 1, 1330, 26), (101, 2, 1463, 29), (101, 3, 1609, 31), (101, 4, 1770, 35), (101, 5, 1947, 38),
-- ID 102: Rocket (Feitiço)
(102, 1, 0, 1232), (102, 2, 0, 1355), (102, 3, 0, 1491), (102, 4, 0, 1640), (102, 5, 0, 1804),
-- ID 103: Lightning (Feitiço)
(103, 1, 0, 877), (103, 2, 0, 965), (103, 3, 0, 1061), (103, 4, 0, 1167), (103, 5, 0, 1284),
-- ID 104: P.E.K.K.A
(104, 1, 3458, 678), (104, 2, 3804, 746), (104, 3, 4184, 820), (104, 4, 4602, 902), (104, 5, 5062, 993),
-- ID 105: Mega Knight
(105, 1, 3300, 222), (105, 2, 3630, 244), (105, 3, 3993, 269), (105, 4, 4392, 295), (105, 5, 4832, 325),
-- ID 106: Lava Hound
(106, 1, 3150, 45), (106, 2, 3465, 50), (106, 3, 3812, 54), (106, 4, 4193, 60), (106, 5, 4612, 66),
-- ID 107: Royal Recruits
(107, 1, 440, 110), (107, 2, 484, 121), (107, 3, 532, 133), (107, 4, 586, 146), (107, 5, 644, 161),
-- ID 108: Barbarian Hut
(108, 1, 1500, 0), (108, 2, 1650, 0), (108, 3, 1815, 0), (108, 4, 1997, 0), (108, 5, 2196, 0),
-- ID 109: Golem
(109, 1, 4256, 259), (109, 2, 4682, 285), (109, 3, 5150, 313), (109, 4, 5665, 345), (109, 5, 6231, 379),
-- ID 110: Electro Giant
(110, 1, 3200, 159), (110, 2, 3520, 175), (110, 3, 3872, 192), (110, 4, 4259, 211), (110, 5, 4685, 232),
-- ID 111: Three Musketeers
(111, 1, 598, 181), (111, 2, 658, 199), (111, 3, 724, 219), (111, 4, 796, 241), (111, 5, 876, 265),

-- ChestInstance (Baús existentes)
INSERT INTO ChestInstance (chest_id, type_name) VALUES
(201, 'Silver'),
(202, 'Gold');
--Nao percebi esta mrd, pedi ao chat🤔

-- ItemChest (O que está dentro dos baús - potencial ou real)
INSERT INTO ItemChest (item_id, chest_id) VALUES
(1, 201), -- Gold no Silver Chest
(3, 201); -- Knight no Silver Chest
--Tipo... aqui é mrds random ne? nao precisamos de fazer todas as combinaçoes



-- Players
INSERT INTO Player (player_id, username, player_level, trophies, gold_balance, gems_balance, max_trophies, battles_won) VALUES
(10, 'TugaKing', 5, 1200, 5000, 100, 1250, 50),
(30, 'Lazaro', 10, 4000, 900000, 5000, 4100, 200),
(40, 'GhostUser', 1, 0, 0, 0, 0, 0),
(20, 'NoobMaster', 1, 0, 100, 0, 50, 1);

-- PlayerArena
-- Nota: TugaKing tem 1200 troféus, pode entrar na Arena 3 (Min 800)
-- NoobMaster tem 0 troféus, entra na Arena 1 (Min 0)
INSERT INTO PlayerArena (player_id, arena_id) VALUES
(10, 3),
(20, 1);
--Era bue mais facil com triggers mas nao podemos usar... agora é tudo na mao da punheta

-- PlayerClan
INSERT INTO PlayerClan (player_id, clan_id, clan_role) VALUES
(10, 1, 'Leader'),
(20, 1, 'Member'),
(30, 1, 'Builder');
--Aqui é chill, pode ser qualquer cena

-- PlayerChest (Baús que os jogadores possuem)
INSERT INTO PlayerChest (chest_id, player_id) VALUES
(201, 10),
(202, 10);
--Metemos tipo 4? Devia haver um limitador sei la

-- PlayerCardLevel (Coleção dos jogadores)
INSERT INTO PlayerCardLevel (player_id, item_id, current_level) VALUES
(10, 3, 2), -- TugaKing tem Knight lvl 2
(10, 5, 1), -- TugaKing tem Giant lvl 1
(20, 3, 1); -- NoobMaster tem Knight lvl 1
--Esta cena nao da para sacar la da coleçao de cima???

-- Stats (Torneios)
INSERT INTO Stats (player_id, tournament_id, win_streak, ranking_position) VALUES
(10, 1, 5, 1);
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
INSERT INTO CardDeck (item_id, deck_id) VALUES
(20, 1), -- Knight (3)
(39, 1), -- Princess (3)
(30, 1), -- Goblin Barrel (3)
(16, 1), -- The Log (2)
(23, 1), -- Goblin Gang (3)
(4, 1),  -- Ice Spirit (1)
(87, 1), -- Inferno Tower (5)
(102, 1); -- Rocket (6)

-- Result (Batalhas)
-- TugaKing (10) vs NoobMaster (20)
INSERT INTO Result (battle_id, player_id1, player_id2, loser_id, winner_id) VALUES
(1001, 10, 20, 20, 10),
(1003, 10, 30, 30, 10),
(1004, 30, 20, 20, 30),
(1002, 20, 10, 20, 10);
