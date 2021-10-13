CREATE TABLE "samplemodule$testentityassocaccount" (
	"id" BIGINT NOT NULL,
	"testtext" VARCHAR_IGNORECASE(200) NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", 
"entity_name", 
"table_name", 
"remote", 
"remote_primary_key")
 VALUES ('fc4f25aa-928b-4b8c-8f23-d47697dff2cc', 
'SampleModule.TestEntityAssocAccount', 
'samplemodule$testentityassocaccount', 
false, 
false);
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('fe68c5b7-7a24-4494-b9b2-6cbb0f633b16', 
'fc4f25aa-928b-4b8c-8f23-d47697dff2cc', 
'TestText', 
'testtext', 
30, 
200, 
'', 
false);
CREATE TABLE "samplemodule$testentityassocaccount_account" (
	"samplemodule$testentityassocaccountid" BIGINT NOT NULL,
	"administration$accountid" BIGINT NOT NULL,
	PRIMARY KEY("samplemodule$testentityassocaccountid","administration$accountid"),
	CONSTRAINT "uniq_samplemodule$testentityassocaccount_account_samplemodule$testentityassocaccountid" UNIQUE ("samplemodule$testentityassocaccountid"));
CREATE INDEX "idx_samplemodule$testentityassocaccount_account_administration$account_samplemodule$testentityassocaccount" ON "samplemodule$testentityassocaccount_account" ("administration$accountid" ASC,"samplemodule$testentityassocaccountid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('44022850-95df-4fa6-9b49-1e11379163f7', 
'SampleModule.TestEntityAssocAccount_Account', 
'samplemodule$testentityassocaccount_account', 
'fc4f25aa-928b-4b8c-8f23-d47697dff2cc', 
'3078a23e-13b2-4a9b-84e4-2881fdee53c6', 
'samplemodule$testentityassocaccountid', 
'administration$accountid', 
'idx_samplemodule$testentityassocaccount_account_administration$account_samplemodule$testentityassocaccount');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_samplemodule$testentityassocaccount_account_samplemodule$testentityassocaccountid', 
'44022850-95df-4fa6-9b49-1e11379163f7', 
'355eb312-cf1f-3b8c-8d15-40f893fc1771');
CREATE TABLE "samplemodule$subentity" (
	"id" BIGINT NOT NULL,
	"subtesttext" VARCHAR_IGNORECASE(200) NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", 
"entity_name", 
"table_name", 
"remote", 
"remote_primary_key")
 VALUES ('2270f3f5-c2a4-468f-a73e-eae9a6fec3bb', 
'SampleModule.SubEntity', 
'samplemodule$subentity', 
false, 
false);
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('0a879769-b3de-47f5-81f8-8645c62f946a', 
'2270f3f5-c2a4-468f-a73e-eae9a6fec3bb', 
'SubTestText', 
'subtesttext', 
30, 
200, 
'', 
false);
CREATE TABLE "samplemodule$subentity_testentityassocaccount" (
	"samplemodule$subentityid" BIGINT NOT NULL,
	"samplemodule$testentityassocaccountid" BIGINT NOT NULL,
	PRIMARY KEY("samplemodule$subentityid","samplemodule$testentityassocaccountid"),
	CONSTRAINT "uniq_samplemodule$subentity_testentityassocaccount_samplemodule$subentityid" UNIQUE ("samplemodule$subentityid"));
CREATE INDEX "idx_samplemodule$subentity_testentityassocaccount_samplemodule$testentityassocaccount_samplemodule$subentity" ON "samplemodule$subentity_testentityassocaccount" ("samplemodule$testentityassocaccountid" ASC,"samplemodule$subentityid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('dae8fda5-e2a3-4c55-a30a-b95653f23ef8', 
'SampleModule.SubEntity_TestEntityAssocAccount', 
'samplemodule$subentity_testentityassocaccount', 
'2270f3f5-c2a4-468f-a73e-eae9a6fec3bb', 
'fc4f25aa-928b-4b8c-8f23-d47697dff2cc', 
'samplemodule$subentityid', 
'samplemodule$testentityassocaccountid', 
'idx_samplemodule$subentity_testentityassocaccount_samplemodule$testentityassocaccount_samplemodule$subentity');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_samplemodule$subentity_testentityassocaccount_samplemodule$subentityid', 
'dae8fda5-e2a3-4c55-a30a-b95653f23ef8', 
'2f6c6f06-5aeb-38bf-9d42-81d2f47673d1');
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.2', 
"lastsyncdate" = '20211013 22:37:13';
