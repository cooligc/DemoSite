--
-- The Archetype is configured with "hibernate.hbm2ddl.auto" value="create-drop" in "persistence.xml".
--
-- This will cause hibernate to populate the database when the application is started by processing the files that
-- were configured in the hibernate.hbm2ddl.import_files property.
--
-- This file is responsible for loading the the pricelist data in multiple currencies.  Implementors can change this file
-- to load their initial catalog.
--


--INSERT INTO BLC_PRICE_DATA(PRICE_DATA_ID,RETAIL_PRICE,SALE_PRICE) values(1,'16.99','4.99');
--INSERT INTO BLC_PRICE_DATA(PRICE_DATA_ID,RETAIL_PRICE,SALE_PRICE) values(2,'7.99','6.99');
--INSERT INTO BLC_PRICE_DATA(PRICE_DATA_ID,RETAIL_PRICE,SALE_PRICE) values(3,'9.99','9.99');
--
--INSERT INTO BLC_SKU_PRICE_DATA(PRICE_DATA_ID,SKU_ID,MAP_KEY) VALUES (1,17,'USD');
--INSERT INTO BLC_SKU_PRICE_DATA(PRICE_DATA_ID,SKU_ID,MAP_KEY) VALUES (2,17,'EUR');
--INSERT INTO BLC_SKU_PRICE_DATA(PRICE_DATA_ID,SKU_ID,MAP_KEY) VALUES (3,17,'GBP');

INSERT INTO BLC_CURRENCY(CURRENCY_CODE,FRIENDLY_NAME,DEFAULT_FLAG) VALUES('USD', 'US Dollar',true);
INSERT INTO BLC_CURRENCY(CURRENCY_CODE,FRIENDLY_NAME,DEFAULT_FLAG) VALUES('EUR', 'EURO Dollar',false);
INSERT INTO BLC_CURRENCY(CURRENCY_CODE,FRIENDLY_NAME,DEFAULT_FLAG) VALUES('GBP', 'GB Pound',false);

INSERT INTO BLC_PRICE_LIST (PRICE_LIST_ID,CURRENCY_CODE,FRIENDLY_NAME,PRICE_KEY,USE_DEFAULT_FLAG) VALUES (1,'USD','US Dollar','USD',true);
INSERT INTO BLC_PRICE_LIST (PRICE_LIST_ID,CURRENCY_CODE,FRIENDLY_NAME,PRICE_KEY,USE_DEFAULT_FLAG) VALUES (2,'EUR','EUR Dollar','EUR',false);
INSERT INTO BLC_PRICE_LIST (PRICE_LIST_ID,CURRENCY_CODE,FRIENDLY_NAME,PRICE_KEY,USE_DEFAULT_FLAG) VALUES (3,'GBP','GB Pound','GBP',false);
--
--INSERT INTO BLC_FULFILLMENT_OPTION_FIXED (FULFILLMENT_OPTION_ID, PRICE,CURRENCY_CODE) VALUES (1, 5.00,'EUR');
--INSERT INTO BLC_FULFILLMENT_OPTION_FIXED (FULFILLMENT_OPTION_ID, PRICE,CURRENCY_CODE) VALUES (2, 10.00,'EUR');
--INSERT INTO BLC_FULFILLMENT_OPTION_FIXED (FULFILLMENT_OPTION_ID, PRICE,CURRENCY_CODE) VALUES (3, 20.00,'EUR');



INSERT INTO BLC_LOCALE (LOCALE_CODE, DEFAULT_FLAG, FRIENDLY_NAME, CURRENCY_CODE) VALUES ('fr', FALSE, 'French', 'EUR');
INSERT INTO BLC_LOCALE (LOCALE_CODE, DEFAULT_FLAG, FRIENDLY_NAME, CURRENCY_CODE) VALUES ('en_UK', FALSE,'English (United Kingdom)', 'GBP');
INSERT INTO BLC_LOCALE (LOCALE_CODE, DEFAULT_FLAG, FRIENDLY_NAME, CURRENCY_CODE) VALUES ('es_MX', FALSE, 'Spanish (Mexico)', 'USD');
INSERT INTO BLC_LOCALE (LOCALE_CODE, DEFAULT_FLAG, FRIENDLY_NAME, CURRENCY_CODE) VALUES ('es_SP', FALSE, 'Spanish (Spain)', 'EUR');
INSERT INTO BLC_LOCALE (LOCALE_CODE, DEFAULT_FLAG, FRIENDLY_NAME, CURRENCY_CODE) VALUES ('fr_FR', FALSE,'French (France)', 'EUR');
