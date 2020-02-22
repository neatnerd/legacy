# Legacy migration by means of microservices
## Introduction

This repository was created to demonstrate how migration of legacy systems can be done without the standard ETL approach.

## Set-up

You will be trying to run some enterprise systems that were never meant for containers, have some patience and remember, legacy systems are very

### Oracle setup

First of all big shout out to the most developer friendly database in the world. This is the only reason, why Oracle is the only database that requires a special guide on how to setup

1. Download file for corresponding version [here](https://www.oracle.com/database/technologies/oracle-database-software-downloads.html). For this example version `12.1.0.1` was tested. And you need an Oracle account by the way. File itself is several GBs
2. Put the file in the corresponding folder, e.g. for version `12.1.0.1`, it should go to `/init-db/account/images/OracleDatabase/SingleInstance/dockerfiles/12.2.0.1`.
3. Build the image by running the following command:
```bash
./buildDockerImage.sh -v 12.2.0.1 -s
```
4. Verify that you have image available by running:
`docker images`, you should see `oracle/database` image


### Key configurations

#### Data folder

Data folder is located in repo - /data of the repository, do mind the size of it. It was done to somehow speed up startup, otherwise it takes ages to allocate all database files. If you want to start from scratch, clean all sub-folders

#### Credentials

> **WARNING**: Never store credentials in plain text in repository or somewhere else. This is a test example and has no intention to be for productive use

1. Oracle/Account:
    * username: analyst
    * password: analyst
1. TX/Postgres
    * username: db2inst1
    * password: admin
1. CRM/DB2
    * username: postgres
    * password: postgres


## Startup

To get started run the _docker-compose_:

```bash
docker-compose up
```