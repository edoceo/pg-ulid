# ULID Extension for PostgreSQL

Creates a ULID datatype as a 128bit integer, which we hope operates faster than text.

Creates some helper functions to create, compare and format

The ULID function is taken from [XXX]
and other inspiration from [THE GO ONE]

## Installation

Get this code, say `make`, copy the *.so* file to your PGHOME/xxx

```shell
sudo apt install build-essential postgresql-server-dev-NN
git clone https://github.com/skeeto/ulid-c.git
make
sudo make install-strip
```


```sql
CREATE EXTENSION pg_ulid;
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


## Dependencies

* https://github.com/ulid/spec
* https://github.com/skeeto/ulid-c



## See Also

* http://big-elephants.com/2015-10/writing-postgres-extensions-part-i/
http://big-elephants.com/2015-10/writing-postgres-extensions-part-ii/
http://sebastian-mader.net/databases-gis/creating-building-and-using-postgresql-extensions-in-c-c/
https://github.com/adjust/postgresql_extension_demo/tree/part_i

* https://github.com/postgres/postgres/tree/master/contrib/uuid-ossp





* https://www.postgresql.org/docs/current/sql-createtype.html
* https://www.postgresql.org/docs/current/datatype-uuid.html




