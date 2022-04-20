cls
aws rds describe-db-clusters --db-cluster-identifier reimagine-dev-canada

cls
aws rds describe-db-clusters --db-cluster-identifier new-env-dev-canada

cls
aws rds describe-db-clusters --db-cluster-identifier from-snap-reimagine-dev-canada

cls
aws rds describe-db-clusters --db-cluster-identifier restored1-reimagine-dev-canada


cls
aws rds describe-db-instances --filters "Name=db-cluster-id,Values=reimagine-dev-canada"

cls
aws rds describe-db-instances --filters "Name=db-cluster-id,Values=new-env-dev-canada"

cls
aws rds describe-db-instances --filters "Name=db-cluster-id,Values=from-snap-reimagine-dev-canada"

cls
aws rds describe-db-instances --filters "Name=db-cluster-id,Values=restored1-reimagine-dev-canada"




aws rds delete-db-instance --db-instance-identifier restored-reimagine-dev-canada-instance1
aws rds delete-db-instance --db-instance-identifier restored-reimagine-dev-canada-instance2
#aws rds delete-db-instance --db-instance-identifier 
aws rds delete-db-cluster --db-cluster-identifier restored1-reimagine-dev-canada --no-skip-final-snapshot --final-db-snapshot-identifier final-restored1-reimagine-dev-canada
#aws rds modify-db-cluster --db-cluster-identifier reimagine-dev-canada --deletion-protection/--no-deletion-protection