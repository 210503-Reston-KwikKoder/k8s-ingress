# Demo for setting up centralized logging

## Install [graylog](https://docs.graylog.org/en/4.0/pages/installation/docker.html) with docker compose on a server.
The docker-compose.yml file in docker-stuff has what you need.

You will need to change:
- GRAYLOG_ROOT_PASSWORD_SHA2=[use this tool to generate a new password hash (length is 256)](https://www.browserling.com/tools/sha2-hash)
- GRAYLOG_HTTP_EXTERNAL_URI=http://<SERVER_PUBLIC_IP>:9000/

One the containers are up you can navigate to http://<SERVER_PUBLIC_IP>:9000/

Default username is `admin`

Password is whatever you generated your hash from.

# ASP.NET project setup

## Nuget Packages:
```
dotnet add package Serilog
dotnet add package Serilog.AspNetCore
dotnet add package Serilog.Enrichers.Environment
dotnet add package Serilog.Settings.Configuration
dotnet add package Serilog.Sinks.Debug
dotnet add package serilog.sinks.graylog
```
All the log setup is done in program.cs to make things easy.

You should move the contents from appsettings.json to appsettings.development.json and appsettings.production.json. appsettings.json should be reserved for connection strings and api keys. 

The kwikkoder services all have this implimented with some tweaks to the configurations

Note you can use the default ILogger that gets injected into every controller to easily log things.
