CREATE EXTENSION pg_ulid;

SELECT ulid_create();
-- SELECT ulid_create('2015-04-20T04:20:00.000+000');
-- SELECT ulid_create(now() - '40 years'::interval);
-- SELECT ulid_format('');
-- SELECT ulid_filter('x');

