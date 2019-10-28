EXTENSION = pg_ulid        # the extensions name
MODULES = pg_ulid
REGRESS = pg_ulid_test     # our test script file (without extension)
DATA = pg_ulid--0.0.3.sql   # script files to install

# postgres build stuff
PG_CONFIG = pg_config
PGXS := $(shell $(PG_CONFIG) --pgxs)

include $(PGXS)
