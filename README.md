### Start MS SQL docker container locally on Mac M1 : 
```docker run -e "ACCEPT_EULA=1" -e "MSSQL_SA_PASSWORD=MyPass@word" -e "MSSQL_PID=Developer" -e "MSSQL_USER=sa" -p 1433:1433 -d --name=sql mcr.microsoft.com/azure-sql-edge```

Or just use the provided docker-compose file:
```docker compose -f utils/composeDB.yaml up -d```

## Create the DB:
Connect to your local MS SQL Server using a preferred client (e.g. sqlcmd or Azure Data Studio), then run this command to create the Database and App-Schema:

```   
CREATE DATABASE UnicornApiDatabase; 
GO 
 
USE UnicornApiDatabase;
GO
 
CREATE SCHEMA UnicornApiSchema;
GO
```


### Seed the database:
```bash utils/seedDB.sh```

### Run the Application:
In the root directory of the project, execute ```dotnet run```

### Access Swagger UI Endpoint:
```locahost:5000/swagger```
