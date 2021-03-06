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
('Insults'),
('Verbs'),
('Place');

INSERT INTO "card" ("name_FR","name_EN","name_JP","list_id") VALUES
('Maison','House','Uchi', 1),
('Ascenseur','Elevato','Erebeetaa', 1),
('Oreiller','Hear','Makura', 1),
('Garage','Garage','Shako', 1),
('Jardin','Garden','Niwa', 1),
('Entrée','Entrance','Genkan', 1),
('Escaliers','Stairs','Kaidan', 1),
('Lampe','Lamp','Ranpu', 1),
('Miroir','Mirror','Kagami', 1),
('Porte','Door','To', 1),
('Toilette','WC','Toire', 1),
('Salle de bain','Bathroom','Furoba', 1),
('Chambre','Bedroom','Shinshitsu', 1),
('Table','Table','Teeburu', 1),
('Television','TV','Terebi', 1),
('Telephone','Phone','Denwa', 1),
('Radio','Radio','Rajio', 1),
('Couteau','Knife','Naifu', 2),
('Cuillere','Spoon','Supun', 2),
('Fourchette','Fork','Foku', 2),
('Verre','Glass','Kappu', 2),
('Four','Four','Oobun', 2),
('Assiette','Plate','Sara', 2),
('Refrigerateur','Fridge','Reizouko', 2),
('Lit','Bed', 'Beddo', 3),
('Araignée','Spider','Kumo', 4),
('Chien','Dog','Inu', 4),
('Cheval','Horse','Uma', 4),
('Corbeau','Crow','Karasu', 4),
('Crabe','Crab','Kani', 4),
('Dragon','Dragon','Ryuu', 4),
('Grenouille','Frog','Kaeru', 4),
('Lapin','Rabbit','Usagi', 4),
('Lion','Lion','Raion', 4),
('Oiseau','Bird','Tori', 4),
('Porc','Pig','Buta', 4),
('Poulet','Chicken','Niwatori', 4),
('Requin','Shark','Same', 4),
('Serpent','Snake','Hebi', 4),
('Singe','Monkey','Saru', 4),
('Tigre','Tiger','Taiga', 4),
('Chat','Cat','Neko', 4),
('Un','One','Ichi', 5),
('Deux','Two','Ni', 5),
('Trois','Three','San', 5),
('Quatre','Four','Yon', 5),
('Cinq','Five','Go', 5),
('Six','Six','Roku', 5),
('Sept','Seven','Nana', 5),
('Huit','Eight','Hachi', 5),
('Neuf','Nine','Kyu', 5),
('Dix','Ten','Ju', 5),
('Cent','One hundred','Hyaku', 5),
('Mille','Thousand','Sen', 5),
('Rouge','Red','Aka', 6),
('Bleu','Blue','Ao', 6),
('Jaune','Yellow','Kiro', 6),
('Noir','Black','Kuro', 6),
('Vert','Green','Midori', 6),
('Violet','Purple','Sumire', 6),
('Marron','Brown','Chairo', 6),
('Gris','Grey','Haiiro', 6),
('Orange','Orange','Orenji', 6),
('Rose','Pink','Pinku', 6),
('Blanc','White','Shiro', 6),
('Merci','Thank you','Arigato', 7),
('Merci beaucoup','Thank you so much','Arigato gozaimasu', 7),
('Je vous en prie','Youre welcome', 'Douzo', 7),
('Bonjour','Good Morning','Konnichi wa', 7),
('Bonsoir','Good evening','Konbanwa', 7),
('Bonne nuit','Good night','Oyasumi nasai', 7),
('Excusez moi','Excuse me','Sumimasen', 7),
('Pardon','Sorry','Gomen nasai', 7),
('Sil vous plait','Please','Onegaishimasu', 7),
('A bientot','See you soon','Mata aimashou', 7),
('Enchante','Nice to meet you','Hajimemashite', 7),
('Aurevoir','Bye','Sayounara', 7),
('Salut','Bye Bye','Ja ne', 7),
('Pain','Bread','Pan', 8),
('Oeuf','Egg','Tamago', 8),
('Beurre','Butter','Bataa', 8),
('Croissant','Croissant','Kurowassan', 8),
('Moutarde','Mustard','Masutaado', 8),
('Pate','Pasta','Pasuta', 8),
('Poivre','Pepper','Koshou', 8),
('Champagne','Champagne','Shanpen', 8),
('Sel','Salt','Shio', 8),
('Eau','Water','Mizu', 8),
('The','Tea','Ocha', 8),
('Lait','Milk','Gyuunyuu', 8),
('Jus','Juice','Jusu', 8),
('Coca','Coca','Kora', 8),
('Biere','beer','Biiru', 8),
('Vin','Wine','Wain', 8),
('Poisson','Fish','Sakana', 8),
('Pomme','Apple','Ringo', 8),
('Banane','Banana','Banana', 8),
('Ananas','Pineapple','Painappuru', 8),
('Cerise','Cherry','Sakuranbo', 8),
('Champignon','Mushroom','Masshuruumu', 8),
('Concombre','Cucumber','Kyuuri', 8),
('Kiwi','Kiwi','Kiui', 8),
('Mangue','Mango','Mangoo', 8),
('Melon','Melon','Meron', 8),
('Pasteque','Watermelon','Suika', 8),
('Raisin','Grape','Budou', 8),
('Viande','Meat','Niku', 8),
('Legume','Vegetable','Yasai', 8),
('Oignon','Onions','Tamanegi', 8),
('Fraise','Strawsberry','Ichigo', 8),
('Citron','Citrus','Remon', 8),
('Ventre','Stomach', 'Hara', 9),
('Genou','Knee', 'Hiza', 9),
('Epaule','Shoulder','Kata', 9),
('Hanche','Hip','Koshi', 9),
('Poignet','Wrist','Kote', 9),
('Cou','Neck','Kubi', 9),
('Pied','Foot','Ashi', 9),
('Poitrine','Chest','Mune', 9),
('Main','Hand','Te', 9),
('Bras','Arm','Ude', 9),
('Tete','Head','Atama', 9),
('Visage','Face','Kao', 9),
('Nez','Nose','Hana', 9),
('Jambe','Leg','Ashi', 9),
('Dos','Back','Senaka', 9),
('Oreille','ear','Mimi', 9),
('Bouche','Mouth','Kuchi', 9),
('Oeil','eye','Me', 9),
('Lundi','Monday','Getsu-Yobi', 10),
('Mardi','Tuesday','Ka-Yobi', 10),
('Mercredi','Wednesday','Sui-Yobi', 10),
('Jeudi','Thursday','Moku-Yobi', 10),
('Vendredi','Friday','Kin-Yobi', 10),
('Samedi','Saturday','Do-Yobi', 10),
('Dimanche','Sunday','Nichi-Yobi', 10),
('Hier','Yesterday','Kino', 10),
('Demain','Tomorrow','Ashita', 10),
('Aujourdhui','Today','Kyou', 10),
('Cuillere','Spoon','Supun', 2),
('Idiot','Idiot','Baka', 11),
('Connard','Asshole','Bakayaro', 11),
('Merde','Shit','Kuso', 11),
('Ferme la','Shut up','Urusai', 11),
('Ta gueule','Shut up','Damare', 11),
('Enculé','Fuck off','Onore', 11),
('Creve','Die','Shine', 11),
('Enfoiré','Motherfucker','Kisama', 11),
('Putain','Fuck','Fakku', 11),
('Appeler','Call','Yobu', 12),
('Ecrire','Write','Kaku', 12),
('Gagner','Win','Katsu', 12),
('Laver','Wash','Arau', 12),
('Lire','Read','Yomu', 12),
('Manger','Eat','Taberu', 12),
('Montrer','Show','Miseru', 12),
('Mourir','Die','Shinu', 12),
('Nage','Swing','Oyogu', 12),
('Parler','Speak','Hanasu', 12),
('Reflechir','Think','Kangaeru', 12),
('Repondre','Answer','Kotaeru', 12),
('Rire','Laugh','Warau', 12),
('Voir','See','Miru', 12),
('Ouvrir','Open','Wasureru', 12),
('Hotel', 'Motel', 'Hoteru', 13),
('Banque', 'Bank', 'Ginkou', 13),
('Restaurant', 'Restaurant', 'Resutoran', 13),
('Station de metro', 'Subway station', 'Eki', 13),
('Librairie', 'Library', 'Honya', 13),
('Ecole', 'School', 'Gakkou', 13),
('Hopital', 'Hospital', 'Byoin', 13),
('Bureau de poste', 'Post office', 'Yubinkyoku', 13),
('Supermarché', 'Supermarket', 'Supamaketto', 13),
('Bibliotheque', 'Library', 'Toshokan', 13),
('Cinema', 'Movie theater', 'Eigakan', 13);




COMMIT;