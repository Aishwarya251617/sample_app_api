CREATE TABLE "schema_migrations" ("version" varchar NOT NULL PRIMARY KEY);
CREATE TABLE "ar_internal_metadata" ("key" varchar NOT NULL PRIMARY KEY, "value" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE TABLE "users" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar, "email" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "password_digest" varchar, "remember_digest" varchar, "admin" boolean DEFAULT 'f', "activation_digest" varchar, "activated" boolean DEFAULT 'f', "activated_at" datetime, "reset_digest" varchar, "reset_sent_at" datetime);
CREATE UNIQUE INDEX "index_users_on_email" ON "users" ("email");
CREATE TABLE "microposts" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "content" text DEFAULT NULL, "user_id" integer DEFAULT NULL, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "picture" varchar, "intern" varchar);
CREATE INDEX "index_microposts_on_user_id" ON "microposts" ("user_id");
CREATE INDEX "index_microposts_on_user_id_and_created_at" ON "microposts" ("user_id", "created_at");
CREATE TABLE "relationships" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "follower_id" integer, "followed_id" integer);
CREATE INDEX "index_relationships_on_follower_id" ON "relationships" ("follower_id");
CREATE INDEX "index_relationships_on_followed_id" ON "relationships" ("followed_id");
CREATE UNIQUE INDEX "index_relationships_on_follower_id_and_followed_id" ON "relationships" ("follower_id", "followed_id");
CREATE TABLE "products" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar, "quantity" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE TABLE "koi_bi" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "pass" integer, "kuch_bhi" varchar, "untrodden" varchar, "labs" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE TABLE 'testing' (name string, id integer);
INSERT INTO "schema_migrations" (version) VALUES
('20170606085647'),
('20170606121450'),
('20170606122731'),
('20170609092320'),
('20170613155902'),
('20170614063147'),
('20170617072633'),
('20170619054234'),
('20170620091253'),
('20170620131048'),
('20170622105339'),
('20170622105652'),
('20170622110018'),
('20170622111602');


