cls
aws pi describe-dimension-keys `
   --service-type RDS `
   --identifier db-OQH2M2TWM3ICDJVV3WVQ3NE25I `
   --start-time 2021-08-06T18:00:00Z `
   --end-time   2021-08-06T19:00:00Z `
   --metric db.load.avg `
   --group-by '{\"Group\":\"db.sql\"}' 


cls
aws pi get-resource-metrics `
    --service-type RDS `
    --identifier db-FTCBEZSUWQYPKYZQ6NWQ7KSIAM `
    --start-time 2021-08-17T12:00:00Z `
    --end-time 2021-08-17T14:00:00Z `
    --period-in-seconds 3600 `
    --metric-queries file://C:\\Users\\rpatel3\\Documents\\query.json



cls
aws pi get-resource-metrics `
   --service-type RDS `
   --identifier db-FTCBEZSUWQYPKYZQ6NWQ7KSIAM `
   --start-time 2021-08-17T18:00:00Z `
   --end-time   2021-08-17T19:00:00Z `
   --period-in-seconds 300 `
   --metric-queries file://C:\\Users\\rpatel3\\Documents\\query.json



aws cloudwatch put-metric-data --metric-name sql_load --namespace AWS/RDS --value 0.035 --timestamp 2021-07-25T20:00:00-04:00 --dimensions db_id="pi-3875727193",statement="autovacuum: VACUUM pg_catalog.pg_statistic"


aws cloudwatch get-metric-statistics --namespace AWS/RDS --metric-name sql_load `
--statistics "Sum" "Maximum" "Minimum" "Average" "SampleCount" `
--dimensions Name=db_id,Value=6BF717579EAD92615B9EE5F61458065434F3266E Name=sql_statement,Value='autovacuum: VACUUM ANALYZE task-manager.lock' `
--start-time 2021-08-04T11:00:00.000Z --end-time 2021-08-04T20:00:00.000Z --period 60
