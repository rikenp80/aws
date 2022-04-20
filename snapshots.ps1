cls
#aws rds describe-db-cluster-snapshots --filters "Name=snapshot-type,Values=automated" --query 'DBClusterSnapshots[*].[DBClusterSnapshotArn]'
aws rds describe-db-cluster-snapshots --filters "Name=snapshot-type,Values=manual" --query 'DBClusterSnapshots[*].[SourceDBClusterSnapshotArn]'

cls
#aws rds describe-db-cluster-snapshots --filters "Name=snapshot-type,Values=automated" --query 'DBClusterSnapshots[*].[DBClusterSnapshotArn]'
aws rds describe-db-cluster-snapshots --db-cluster-snapshot-identifier copy-ps-reimagine-dev-canada-2021-09-17-06-13






aws rds copy-db-cluster-snapshot --source-db-cluster-snapshot-identifier "rds:reimagine-dev-canada-2021-09-17-06-13" --target-db-cluster-snapshot-identifier "copy-reimagine-dev-canada-2021-09-17-06-13" --copy-tags


aws rds restore-db-cluster-from-snapshot `
    --db-cluster-identifier restored-reimagine-uat-canada `
    --snapshot-identifier autocopy-reimagine-uat-canada-2021-09-18-06-11 `
    --engine aurora-postgresql `
    --db-subnet-group-name "rds database subnet group" `
    --copy-tags-to-snapshot


aws rds create-db-instance --db-instance-identifier restored-reimagine-uat-canada-instance1 --db-instance-class db.t3.medium --engine aurora-postgresql --db-subnet-group-name "rds database subnet group" --db-cluster-identifier restored-reimagine-uat-canada

