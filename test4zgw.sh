#!/bin/bash
cases="s3tests.functional.test_s3:test_bucket_list_empty \
  s3tests.functional.test_s3:test_bucket_list_distinct \
  s3tests.functional.test_s3:test_bucket_list_object_time \
  s3tests.functional.test_s3:test_object_write_to_nonexist_bucket \
  s3tests.functional.test_s3:test_object_read_notexist \
  s3tests.functional.test_s3:test_object_requestid_on_error \
  s3tests.functional.test_s3:test_object_head_zero_bytes \
  s3tests.functional.test_s3:test_object_write_check_etag \
  s3tests.functional.test_s3:test_object_write_read_update_read_delete \
  s3tests.functional.test_s3:test_object_write_file \
  s3tests.functional.test_s3:test_bucket_head \
  s3tests.functional.test_s3:test_object_raw_put \
  s3tests.functional.test_s3:test_bucket_create_exists \
  s3tests.functional.test_s3:test_bucket_configure_recreate \
  s3tests.functional.test_s3:test_list_buckets_invalid_auth \
  s3tests.functional.test_s3:test_bucket_create_naming_good_starts_alpha \
  s3tests.functional.test_s3:test_bucket_create_naming_good_starts_digit \
  s3tests.functional.test_s3:test_bucket_create_naming_good_contains_period \
  s3tests.functional.test_s3:test_bucket_create_naming_good_contains_hyphen"
S3_USE_SIGV4=1 S3TEST_CONF=test4zgw.conf virtualenv/bin/nosetests $cases -a auth_aws4
