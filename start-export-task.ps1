﻿aws rds start-export-task --export-task-identifier export-custom-snapshots --source-arn arn:aws:rds:ca-central-1:497886394954:cluster-snapshot:reimagine-dev-canada-snapshot-202108111817 --s3-bucket-name pr-cloud-database --iam-role-arn arn:aws:iam::497886394954:role/rds-export-snapshot --kms-key-id arn:aws:kms:ca-central-1:497886394954:key/49d34b93-03fd-45b0-84b8-dc9e5e94f5e4