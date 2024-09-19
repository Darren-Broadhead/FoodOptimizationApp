Things to note...

1. I create the solution in .net 7 and not 8 as I had to previously remove 8 off my home machine but most functionality would the same.
2. Even though I used EF core 7, I am not necessarily using DB or code first implementation and thus there are no migrations present. (I could have possibly gone this rout but chose not to).
3. I have tried to make it as easy as possible by scripting each requirement from the database perspective in their own SQL script files in order in the DatabaseScripts folder.
4. Should there be an issue with any of the schema creation, please just manually create the FoodOptimizationDb, then the FoodAppLogin Login, then the FoodAppLogin User with password
	P455w0rd, as this should mean that the connection string in the appsettings.json file should not need to change except for the port that it is running on perhaps. (mine was on port 55569).
	You can then just proceed by running the 03CreateTables.sql SQL script, and then the insert scripts in order respectively.
5. Should you wish to reset the ingredients in the database in order to run the application multiple times, you can run the 07UpdateResetIngredientsQuantitiesAvailable.sql file.
6. The entry point of the application is FoodOptimizationApp.API. By running (or debugging) this, it should automatically also startup a browser with swagger.
	You can hit the endpoint also by using Postman and hitting the https://localhost:7271/api/Food/optimal endpoint. (FYI it is a get request).