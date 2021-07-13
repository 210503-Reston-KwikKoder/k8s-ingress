# Demo for setting up centralized logging

## Install [graylog](https://docs.graylog.org/en/4.0/pages/installation/docker.html) with docker compose on a server.
The docker-compose.yml file in docker-stuff has what you need.

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

Note you can use the default ILogger that gets injected into every controller to easily log things.
