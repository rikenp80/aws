aws rds create-db-cluster-parameter-group --db-cluster-parameter-group-name reimaginedbparameters12 `
    --db-parameter-group-family aurora-postgresql12 `
    --description 'Default parameters with customizations needed for reimagine' `
    --tags Key=BusinessUnit,Value=PeopleReady Key=CostCenter,Value=9000 Key=Environment,Value=Development


aws rds modify-db-cluster-parameter-group `
    --db-cluster-parameter-group-name reimaginedbparameters12 `
    --parameters "ParameterName=rds.logical_replication,ParameterValue=1,ApplyMethod=pending-reboot" `
        "ParameterName=wal_sender_timeout,ParameterValue=0,ApplyMethod=pending-reboot"