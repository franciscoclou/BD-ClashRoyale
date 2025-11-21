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
INSERT INTO Item (item_id, item_quantity) VALUES (3, 1); -- Knight
INSERT INTO Item (item_id, item_quantity) VALUES (4, 1); -- Archers
INSERT INTO Item (item_id, item_quantity) VALUES (5, 1); -- Giant
INSERT INTO Item (item_id, item_quantity) VALUES (6, 1); -- Fireball
--Se for assim depois chapa-se as cartas todas, queremos 5000 queries🙏

INSERT INTO Card (item_id, card_name, rarity, card_type, elixir_cost) 
VALUES (3, 'Knight', 'common', 'ground', 3);

INSERT INTO Card (item_id, card_name, rarity, card_type, elixir_cost) 
VALUES (4, 'Archers', 'common', 'ground', 3);

INSERT INTO Card (item_id, card_name, rarity, card_type, elixir_cost) 
VALUES (5, 'Giant', 'rare', 'ground', 5);

INSERT INTO Card (item_id, card_name, rarity, card_type, elixir_cost) 
VALUES (6, 'Fireball', 'rare', 'spell', 4);



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