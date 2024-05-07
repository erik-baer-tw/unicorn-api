### command to start MS SQL docker container locally on Mac M1 : 
```docker run -e "ACCEPT_EULA=1" -e "MSSQL_SA_PASSWORD=MyPass@word" -e "MSSQL_PID=Developer" -e "MSSQL_USER=SA" -p 1433:1433 -d --name=sql mcr.microsoft.com/azure-sql-edge```

### Seeding the database:
```bash scripts/seedDB.sh```

### Swagger UI Endpoint:
```locahost:5000/swagger```
