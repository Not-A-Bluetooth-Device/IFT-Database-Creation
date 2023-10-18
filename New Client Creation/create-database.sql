-- This file walks you through the creation of a new client database.
-- Each client will have their own DB with a devices and a log table.
-- The database will have a name that is in the standard format: tbd-[client-id]
-- Where [client-id] is the 3-characther alpha-numeric code assigned to the client.

SET @client_id = 'dam';
SET @client_id = 'rba';
SET @db_name = CONCAT('tbd-',@client_id);
SELECT @db_name;
CREATE DATABASE @db_name;