ALTER USER airbyte replication;

-- WAL: Write-Ahead Log
SHOW wal_level;
SHOW max_wal_senders;
SHOW max_replication_slots;


ALTER SYSTEM SET wal_level = logical;

-- Create Replication Slot

SELECT pg_Create_logical_replication_slot('airbyte_slot', 'pgoutput');

-- Foreach Table
ALTER TABLE tb REPLICA IDENTITY DEFAULT;

CREATE PUBLICATION airbyte_publication FOR TABLE groceries;

select * from pg_replication_slots;