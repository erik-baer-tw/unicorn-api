### command to start MS SQL docker container locally on Mac M1 : 
```docker run -e "ACCEPT_EULA=1" -e "MSSQL_SA_PASSWORD=MyPass@word" -e "MSSQL_PID=Developer" -e "MSSQL_USER=SA" -p 1433:1433 -d --name=sql mcr.microsoft.com/azure-sql-edge```

## Creating the DB:
Connect to MS SQL Server using your preferred client (e.g. sqlcmd or Azure Data Studio), then run this command to create the Database and App-Schema:

```   
CREATE DATABASE UnicornApiDatabase; 
GO 
 
USE UnicornApiDatabase;
GO
 
CREATE SCHEMA UnicornApiSchema;
GO
```


### Seeding the database:
```bash utils/seedDB.sh```

### run the Application:
In the root directory of the project, execute ```dotnet run```

### Swagger UI Endpoint:
```locahost:5000/swagger```
