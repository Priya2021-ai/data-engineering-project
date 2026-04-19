CREATE DATABASE SCOPED CREDENTIAL cred_pri
WITH IDENTITY = 'Managed Identity';

select * FROM
sys.database_scoped_credentials;

CREATE EXTERNAL DATA SOURCE source_silver
WITH
(
LOCATION = 'https://dataengineer01.blob.core.windows.net/cleaneddata-s',
CREDENTIAL = cred_pri
);

CREATE EXTERNAL DATA SOURCE source_gold
WITH
(
    LOCATION = 'https://dataengineer01.blob.core.windows.net/servedata-g',
     CREDENTIAL= cred_pri
);

