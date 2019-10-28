/**
 * PostgreSQL Extension for ULID
 * @see https://github.com/skeeto/ulid-c
 */


#include "postgres.h"
#include "fmgr.h"
#include "utils/builtins.h"

#include "ulid-c/ulid.c"

PG_MODULE_MAGIC;

PG_FUNCTION_INFO_V1(ulid_create);
// PG_FUNCTION_INFO_V1(ulid_filter);
// PG_FUNCTION_INFO_V1(ulid_format);


Datum
ulid_create(PG_FUNCTION_ARGS)
{
	//int32 ret_ulid_size = VARHDRSZ + 26;
	//text *ret_ulid = (text *) palloc(ret_ulid_size);

	// Generate a ULID Here
	// int64 t = PG_GETARG_INT64(0);
	int flags = 0;
	char ulid[27];

	struct ulid_generator ulidgen[1];
	int r = ulid_generator_init(ulidgen, flags);
	if (r != 0 && (flags & ULID_SECURE)) {
		fprintf(stderr, "ulidgen: failed to get secure entropy\n");
		exit(EXIT_FAILURE);
	}

	ulid_generate(ulidgen, ulid);

	PG_RETURN_TEXT_P(cstring_to_text(ulid));

}
