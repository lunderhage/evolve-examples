# Evolve Database Migration Examples

These are examples to show the benefits of rolling out your databases along with your application using database deltas with the Evolve Library/Tool.

## Prerequisites

* SQL Server Powershell module
```> Install-Module -Name SqlServer```
* Evolve (NuGet)
```> Install-Package Evolve```

The scripts for each database assumes the following:
* SQL Server 2017 (Windows or Linux) running on localhost port 1433.
* Cockroach (cluster or single node) running on localhost port 26257.

## Scripts

Each example has three scripts:

* Create-Database.ps1: For creating database (and maybe database user).
* Drop-Database.ps1: Drop The database and start over.
* Migrate-Database.ps1: Run the database migrations with Evolve.

## Tags
Each migration has its own commit which is tagged in order to make it easy to run only a part of the migrations for demo purposes and to be able to follow what happens in the database. 

## More Documentation

Evolve Documentation: https://evolve-db.netlify.app/

Evolve Github Repo: https://github.com/lecaillon/Evolve
