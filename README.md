# ULID Extension for PostgreSQL

https://github.com/skeeto/ulid-c

Creates a ULID datatype as a 128bit integer, which we hope operates faster than text.

Creates some helper functions to create, compare and format

The ULID function is taken from [XXX]
and other inspiration from [THE GO ONE]

## Installation

Get this code, say `make`, copy the *.so* file to your PGHOME/xxx

```shell
git clone https://github.com/skeeto/ulid-c.git
make
```


```sql
CREATE EXTENSION ulid AS LOAD OBJECT pg_ulid.so;
```

## Usage

```sql
SELECT ulid_create();
SELECT ulid_create(now() - '37 days'::interval);
```

```sql
CREATE TABLE ulid_pk_example (
	id ulid not null default ulid_create(),
	meta jsonb
);
```

## ULID

https://duckduckgo.com/?q=postgresql+%22ulid%22&norw=1&t=brave&ia=software
https://github.com/postgres/postgres/search?utf8=%E2%9C%93&q=uuid&type=



http://big-elephants.com/2015-10/writing-postgres-extensions-part-i/

https://github.com/adjust/postgresql_extension_demo/tree/part_i

https://github.com/postgres/postgres/search?q=PointerGetDatum&unscoped_q=PointerGetDatum

https://github.com/postgres/postgres/blob/97c39498e5ca9208d3de5a443a2282923619bf91/src/include/utils/uuid.h

https://github.com/postgres/postgres/blob/af38498d4c9b840e0e454574519459edda3871db/src/backend/utils/adt/uuid.c

https://github.com/postgres/postgres/search?q=pg_uuid_t&unscoped_q=pg_uuid_t

https://github.com/postgres/postgres/search?q=UUIDPGetDatum&unscoped_q=UUIDPGetDatum

https://github.com/postgres/postgres/search?q=PG_RETURN_UUID_P&unscoped_q=PG_RETURN_UUID_P
https://github.com/postgres/postgres/search?utf8=%E2%9C%93&q=uuid&type=

http://big-elephants.com/2015-10/writing-postgres-extensions-part-i/
https://github.com/postgres/postgres/blob/b7ca57ac0e80b8b511780ef1f19fa2124c901efb/src/include/fmgr.h#L224
http://sebastian-mader.net/databases-gis/creating-building-and-using-postgresql-extensions-in-c-c/

## UUID
https://github.com/ulid/spec
https://duckduckgo.com/?q=ULID+library+in+C&atb=v110-1_b&ia=software
https://www.postgresql.org/docs/9.5/datatype.html
https://www.postgresql.org/docs/9.5/datatype-uuid.html
https://www.postgresql.org/docs/9.5/uuid-ossp.html
https://www.postgresql.org/docs/9.5/datatype-pseudo.html
https://github.com/skeeto/ulid-c/blob/master/ulid.c

https://www.postgresql.org/docs/10/datatype-uuid.html

http://big-elephants.com/2015-10/writing-postgres-extensions-part-ii/
https://www.postgresql.org/docs/10/sql-createtype.html
https://github.com/postgres/postgres/tree/master/contrib/uuid-ossp
https://www.google.com/search?hl=en&ei=OQSUXL7KHLas0PEPpOWHyAo&q=postgresql+extension+create+datatype&oq=postgresql+extension+create+datatype&gs_l=psy-ab.3..33i22i29i30.219475.223075..223235...0.0..1.151.1950.34j2....2..0....1..gws-wiz.......0i71j0i131j0i67j0i131i67j0j0i22i30j0i8i13i30j33i10.te5oV4DVmPg
