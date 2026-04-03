-- init.sql
-- This script runs automatically when the postgres container is first initialized.

-- 1. Create the extension. The 'IF NOT EXISTS' prevents errors if the script runs multiple times.
CREATE EXTENSION IF NOT EXISTS vector;

-- Optional: You might also want to create a schema or default table structure here
-- depending on how you plan to use the vector data.
-- Example:
-- CREATE TABLE embeddings (
--     id SERIAL PRIMARY KEY,
--     vector vector(1536) -- Adjust 1536 based on your embedding model
-- );
