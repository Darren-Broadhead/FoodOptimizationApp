USE [master]
GO

/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [FoodAppLogin]    Script Date: 2024/09/19 12:09:25 ******/
CREATE LOGIN [FoodAppLogin] WITH PASSWORD=N'UeB1qB4fVLzyus4eBYROMLCl4STLrLed+QynoAGRjkU=', DEFAULT_DATABASE=[FoodOptimizationDb], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO

ALTER LOGIN [FoodAppLogin] DISABLE
GO


