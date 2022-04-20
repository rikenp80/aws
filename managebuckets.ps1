cls
aws s3 ls s3://pr-cloud-database/2021/08/16/23/

aws s3 rm s3://pr-cloud-database/2021 --recursive --quiet

aws s3 cp s3://pr-cloud-database/dumps/config_BusinessUnit_20210422_135028.dump C:\Users\rpatel3\Documents\dumps

aws s3 cp s3://pr-cloud-database/dumps/config_BusinessUnit_20210422_135028.dump C:\Users\rpatel3\Documents\dumps


aws s3api get-object --bucket pr-cloud-database --key dumps/jobs_20210408_202630.dump --outfile C:\Users\rpatel3\Documents\dumps

aws s3api put-object --bucket pr-cloud-database --key dumps/database-1.cluster-c514w15qevsg/
