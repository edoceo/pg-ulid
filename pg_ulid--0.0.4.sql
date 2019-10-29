/**
 * Installs the pg_ulid extension
 */

CREATE FUNCTION ulid_create()
 RETURNS text
 LANGUAGE C
 VOLATILE STRICT
 AS '$libdir/pg_ulid';


-- CREATE FUNCTION ulid_create;
-- CREATE TYPE ulid AS {
-- 	a int8,
-- 	b int8,
-- }

-- CREATE FUNCTION base36_filter(cstring)
-- RETURNS base36
-- AS '$libdir/base36'
-- LANGUAGE C IMMUTABLE STRICT;
--
-- CREATE FUNCTION base36_out(base36)
-- RETURNS cstring
-- AS '$libdir/base36'
-- LANGUAGE C IMMUTABLE STRICT;
--
-- CREATE TYPE base36 (
--   INPUT          = base36_in,
--   OUTPUT         = base36_out,
--   LIKE           = integer
-- );


-- CREATE FUNCTION ulid_create() RETURNS ulid
-- AS '$libdir/pg_ulid'
-- LANGUAGE C IMUTABLE STRICT;
--
-- CREATE FUNCTION ulid_filter() RETURNS bool
-- AS '$libdir/pg_ulid'
-- LANGUAGE C IMUTABLE STRICT;

-- CREATEA FUNCTION ulid_format() RETURNS text
-- AS '$libdir/pg_ulid'
-- LANGUAGE C IMUTABLE STRICT;
--
