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
('Animaux');

INSERT INTO "card" ("name_FR","name_EN","name_JP","list_id") VALUES
('Maison', 'House', 'Uchi', 1),
('Ascenseur','Elevato','Erebeetaa', 1),
('Four','Four','Oobun', 2),
('Oreiller','Hear','Makura', 1),
('Refrigerateur','Fridge', 'Reizouko', 2),
('Lit','Bed', 'Beddo', 3),
('Araignée','Spider', 'Kumo', 4);


COMMIT;