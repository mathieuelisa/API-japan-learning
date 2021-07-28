BEGIN;

DROP TABLE IF EXISTS "list", "card";


CREATE TABLE "list" (
    "id" INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    "name" TEXT NOT NULL,
    "created_at" TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP WITH TIME ZONE DEFAULT NULL
);

CREATE TABLE "card" (
    "id" INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    "name_FR" TEXT NOT NULL,
    "name_EN" TEXT NOT NULL,
    "name_JP" TEXT NOT NULL,
    "list_id" INT NOT NULL REFERENCES "list"("id") ON DELETE CASCADE,
    "created_at" TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP WITH TIME ZONE DEFAULT NULL
);

INSERT INTO "list" ("name") VALUES
('House'),
('Kitchen'),
('Bedroom'),
('Animals'),
('Numbers'),
('Colors'),
('Polite'),
('Food'),
('Body'),
('Calendar'),
('Insults');

INSERT INTO "card" ("name_FR","name_EN","name_JP","list_id") VALUES
(1, 'Maison', 'House', 'Uchi', 1),
(2, 'Ascenseur','Elevato','Erebeetaa', 1),
(3, 'Four','Four','Oobun', 2),
(4, 'Oreiller','Hear','Makura', 1),
(5, 'Refrigerateur','Fridge', 'Reizouko', 2),
(6, 'Lit','Bed', 'Beddo', 3),
(7, 'Araignée','Spider', 'Kumo', 4);
(8, 'Rouge','Red', 'Seki', 6);
(9, 'Bleu','Blue', 'Sei', 6);
(10, 'Jaune','Yellow', 'Kiro', 6);
(11, 'Noir','Black', 'Koku', 6);
(12, 'Vert','Green', 'Ryoku', 6);
(13, 'Violet','Purple', 'Murasaki', 6);
(14, 'Marron','Brown', 'Chairo', 6);
(14, 'Gris','Grey', 'Haiiro', 6);
(14, 'Orange','Orange', 'Orenji', 6);
(14, 'Rose','Pink', 'Pinku', 6);
(15, 'Blanc','White', 'Shiro', 6);
(16, 'Un','One', 'Ichi', 5);
(17, 'Deux','Two', 'Ni', 5);
(18, 'Trois','Three', 'San', 5);
(19, 'Quatre','Four', 'Yon', 5);
(20, 'Cinq','Five', 'Go', 5);
(21, 'Six','Six', 'Roku', 5);
(22, 'Sept','Seven', 'Nana', 5);
(23, 'Huit','Eight', 'Hachi', 5);
(24, 'Neuf','Nine', 'Kyu', 5);
(25, 'Dix','Ten', 'Ju', 5);
(26, 'Cent','One hundred', 'Hyaku', 5);
(27, 'Mille','Thousand', 'Sen', 5);
(28, 'Pain','Bread', 'Pan', 8);
(29, 'Oeuf','Egg', 'Tamago', 8);
(30, 'Eau','Water', 'Mizu', 8);
(31, 'Jus de fruit','Juice', 'Jusu', 8);
(32, 'Poisson','Fish', 'Sakana', 8);
(33, 'Pomme','Apple', 'Ringo', 8);
(34, 'Riz','Rice', 'Gohan', 8);
(35, 'Viande','Meat', 'Niku', 8);
(36, 'Legume','Vegetable', 'Yasai', 8);
(37, 'Oignon','Onions', 'Tamanegi', 8);
(38, 'Fraise','Strawsberry', 'Ichigo', 8);
(39, 'Citron','Citrus', 'Remon', 8);
(40, 'Banane','Banana', 'Banana', 7);
(41, 'Merci','Thank you', 'Arigato', 7);
(42, 'Je vous en prie','Youre welcome', 'Douzo', 7);
(43, 'Bonjour','Good Morning', 'Konnichi wa', 7);
(44, 'Bonsoir','Good evening', 'Konbanwa', 7);
(45, 'Bonne nuit','Good night', 'Oyasumi nasai', 7);
(46, 'Pardon','Excuse me', 'Sumimasen', 7);
(47, 'Sil vous plait','Please', 'Onegaishimasu', 7);
(48, 'A bientot','See you soon', 'Mata aimashou', 7);
(48, 'Enchante','Nice to meet you', 'Hajimemashite', 7);
(48, 'Aurevoir','Bye', 'Sayonara', 7);
(49, 'Ventre','Stomach', 'Hara', 9);
(49, 'Genou','Knee', 'Hiza', 9);
(50, 'Epaule','Shoulder', 'Kata', 9);
(51, 'Hanche','Hip', 'Koshi', 9);
(52, 'Poignet','Wrist', 'Kote', 9);
(53, 'Cou','Neck', 'Kubi', 9);
(54, 'Poitrine','Chest', 'Mune', 9);
(55, 'Main','Hand', 'Te', 9);
(56, 'Bras','Arm', 'Ude', 9);
(57, 'Lundi','Monday', 'Getsu-Yobi', 10);
(58, 'Mardi','Tuesday', 'Ka-Yobi', 10);
(59, 'Mercredi','Wednesday', 'Sui-Yobi', 10);
(60, 'Jeudi','Thursday', 'Moku-Yobi', 10);
(61, 'Vendredi','Friday', 'Kin-Yobi', 10);
(62, 'Samedi','Saturday', 'Do-Yobi', 10);
(63, 'Dimanche','Sunday', 'Nichi-Yobi', 10);
(63, 'Hier','Yesterday', 'Kino', 10);
(63, 'Demain','Tomorrow', 'Ashita', 10);
(63, 'Aujourdhui','Today', 'Kyou', 10);
(64, 'Cuillere','Spoon', 'Supun', 2);
(65, 'Idiot','Idiot', 'Baka', 11);
(66, 'Connard','Asshole', 'Bakayaro', 11);
(67, 'Merde','Shit', 'Kuso', 11);
(68, 'Ferme la','Shut up', 'Urusai', 11);
(69, 'Ta gueule','Shut up', 'Damare', 11);
(70, 'Enculé','Fuck off', 'Onore', 11);
(71, 'Creve','Die', 'Shine', 11);
(72, 'Enfoiré','Motherfucker', 'Kisama', 11);
(73, 'Putain','Fuck', 'Fakku', 11);



COMMIT;