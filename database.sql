CREATE TABLE "songs" (
	"id" serial primary key,
	"rank" integer,
	"artist" varchar(80) not null,
	"track" varchar(120) not null,
	"published" date
);

INSERT INTO "songs" ("track", "rank", "artist", "published")
VALUES ('Wonderwall', 357, 'Oasis', '1-1-1996');

INSERT INTO "songs" ("rank", "track", "artist", "published")
VALUES (301, 'Under the Bridge', 'Red Hot Chili Peppers', '1-1-1992'),
(4, 'Toss a Coin to your Witcher', 'The Bard', '1/1/2010');

-- We can add less info than what is available as long as we add all required data
INSERT INTO "songs"("rank", "artist", "track") VALUES(502, 'Elvis Presley', 'Good Luck Charm');


-- GET ITEMS OUT OF DATABASE

SELECT * FROM "songs";

-- I wanted to only see artist and track
SELECT "artist", "track" FROM "songs";

-- I wanted the first 10 entries
SELECT * FROM "songs" LIMIT 10;

-- WHERE selects specific data
SELECT * FROM "songs"
WHERE "id" = 1;

SELECT * FROM "songs"
WHERE "artist" = 'Oasis';

SELECT * FROM "songs"
WHERE "track" LIKE '%on%' LIMIT 10;

-- Look up On start
SELECT * FROM "songs"
WHERE "track" LIKE '%On%' LIMIT 10;


SELECT "track", "artist", "published" FROM "songs"
WHERE "published" > '1/1/1980';

SELECT "track", "artist", "published" FROM "songs"
WHERE "published" > '1/1/1980'
ORDER BY "published" ASC LIMIT 20;

SELECT "track", "artist", "published" FROM "songs"
WHERE "published" > '1/1/1980'
ORDER BY "published" DESC LIMIT 20;

/*
WHERE condition AND, OR & NOT
*/
SELECT * FROM "songs"
WHERE ("artist" LIKE '%a%' AND "published" > '1-1-2000')
OR "id" > 400;

-- How do I update things
UPDATE "songs" SET "artist"='Chris Black' WHERE "id" = 1;

UPDATE "songs" SET "rank" = 1 WHERE "track" = 'Wonderwall';

SELECT * FROM "songs" WHERE "track" = 'Wonderwall';

-- How do I delete
SELECT * FROM "songs" WHERE "artist" = 'Kanye West';

DELETE FROM "songs" WHERE "id" = '2';
DELETE FROM "songs" WHERE "id" = 2;

