# Proyecto de práctica

Hay cosas que mejorar pero este proyecto es un proyecto de estudio.

## SQL-Server

> [!NOTE] 
> [Documentación del docker con SQL-Server](https://learn.microsoft.com/es-mx/sql/linux/quickstart-install-connect-docker?view=sql-server-ver15&tabs=cli&pivots=cs1-bash)

```shell
docker pull mcr.microsoft.com/mssql/server:2022-latest
```

```shell
docker run -e "ACCEPT_EULA=Y" -e "MSSQL_SA_PASSWORD=Testing123." -p 1433:1433 --name SQLServer --hostname SQLServer -d mcr.microsoft.com/mssql/server:2022-latest
```

```shell
docker exec -t SQLServer cat /var/opt/mssql/log/errorlog | grep connection

# 2025-01-22 17:54:51.54 Server      The maximum number of dedicated administrator connections for this instance is '1'
# 2025-01-22 17:54:55.73 Server      Dedicated admin connection support was established for listening locally on port 1434.
# 2025-01-22 17:54:55.74 spid29s     SQL Server is now ready for client connections. This is an informational message; no user action is required.
# 2025-01-22 17:54:56.08 spid58s     Always On: The availability replica manager is waiting for the instance of SQL Server to allow client connections. This is an
# informational message only. No user action is required.
```

```shell
docker exec -it SQLServer "bash"
```

```shell
/opt/mssql-tools18/bin/sqlcmd -S localhost -U sa -P "Testing123." -C
```

Deberiamos ver un promt `1>`

```shell
1> CREATE DATABASE TodoAppNET;
2> GO
```

```shell
1> SELECT Name from sys.databases;
2> GO

# Name                                                                                                                            
# -------------------------------------------------------------------------
# master                                                                                                                          
# tempdb                                                                                                                          
# model                                                                                                                           
# msdb                                                                                                                            
# TodoAppNET                                                                                                                      
# 
# (5 rows affected)
```

Aqui podemos crear tablas manualmente con: `USE TodoAppNET;` y luego escribimos el SQL.

> [!NOTE] 
> `localhost` == `127.0.0.1`

## Dotnet

Este comando sirve para generar las cosas faltantes de tipos, etc...

```shell
dotnet build
```

Ejecutar el programa

```shell
dotnet run
```

Si estas en `NixOS` puedes instalar el CLI de `entity framework` con el comando

```shell
dotnet tool install --create-manifest-if-needed dotnet-ef
```

Esto creara una carpeta `.config/dotnet-tools.json` con el siguiente contenido

```json
{
  "version": 1,
  "isRoot": true,
  "tools": {
    "dotnet-ef": {
      "version": "9.0.0",
      "commands": ["dotnet-ef"],
      "rollForward": false
    }
  }
}
```

Y ahora si podemos usar el comando:

```shell
dotnet ef migrations add <NOMBRE_MODELO>
```

Quitar una migración

```shell
dotnet ef migrations remove <NOMBRE_MODELO>
```

