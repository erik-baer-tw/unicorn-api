### Run Postgressql server locally via docker compose : 

```docker compose -f utils/composePGDB.yaml up -d```

## Create the Database:

Connect to your local Postgressql Server using a preferred client (e.g. psql or PGAdmin), then run this command to create the Database and App-Schema:

```   
CREATE DATABASE UnicornApiDatabase; 
 
USE UnicornApiDatabase;
 
CREATE SCHEMA UnicornApiSchema;
```


### Seed the database:
```bash utils/seedDB.sh```

### Run the Application:
In the root directory of the project, execute ```dotnet run```

### Access Swagger UI Endpoint:
```locahost:5000/swagger```
