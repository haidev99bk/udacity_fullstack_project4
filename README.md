# INTRO

This application is provided by Udacity. This app is prepared with CI/CD configuration

# Result Evidences:

- BE link: http://udagram-api-dev5.us-east-1.elasticbeanstalk.com/
- FE link: http://myawsbucket-hainv46.s3-website-us-east-1.amazonaws.com/home

- Circle success:
  ![image][./evidences/circle-success.png]

# AWS

- CORS config

```
[
    {
        "AllowedHeaders": [
            "*",
            "Content-Type",
            "Authorization",
            "Access-Control-Allow-Origin",
            "Access-Control-Allow-Headers",
            "Access-Control-Allow-Methods"
        ],
        "AllowedMethods": [
            "POST",
            "GET",
            "PUT",
            "DELETE",
            "HEAD"
        ],
        "AllowedOrigins": [
            "*"
        ],
        "ExposeHeaders": []
    }
]
```

- debug:

```
eb logs
```

# Local run

## Test connection

```
## Assuming the endpoint is: mypostgres-database-1.c5szli4s4qq9.us-east-1.rds.amazonaws.com
psql -h mydbinstance.csxbuclmtj3c.us-east-1.rds.amazonaws.com -U [username] postgres
## It will open the "postgres=>" prompt if the connection is successful.
## Provide the database password when prompted.
```

## 1-BE

node: 18

```
source set_env.sh
cd udagram-api/
rm -rf node_modules/
rm -rf package-lock.json

# Install the package dependencies, and ignore the warnings

npm install .

# Generate the "www/" folder contaning the autogenerated files.

npx tsc
npm run start

# If everything works fine with the "npm run start"

npm run dev
```

2-FE

node: 16

```
source set_env.sh
cd udagram-frontend/
rm -rf node_modules/
rm -rf package-lock.json
# Install the package dependencies FORCEFULLY, and ignore the warnings
npm install -f
# Build your application by compiling it into static files
ionic build / npm run build
# Run the application locally
ionic serve / npm run start
```

# Start deploy manually

- Create Elastic Beanstalk

```
eb init
# The "eb create" command will create an EC2 instance, an S3 bucket to store your source code, logs, and other artifacts, and other AWS resources
eb create --single --keyname mykeypair --instance-types t2.medium (no need --keyname part)
# deploy
eb deploy
```

Then configure all env properties in the created env of EB

# update .yml files to auto deploy
