eb list 
eb use udagram-api-dev5 
eb setenv  POSTGRES_USERNAME=postgres POSTGRES_PASSWORD=myPassword POSTGRES_HOST=database-2.crgaaaxfzzoq.us-east-1.rds.amazonaws.com POSTGRES_DB=postgres AWS_BUCKET=arn:aws:s3:::myawsbucket-hainv46 AWS_REGION=us-east-1 AWS_PROFILE=default JWT_SECRET=mysecretstring URL=http://udagram-api-dev5.us-east-1.elasticbeanstalk.com