CREATE TABLE Ingredients (
    Id INT PRIMARY KEY IDENTITY,
    Name NVARCHAR(100),
    QuantityAvailable INT
);

CREATE TABLE Recipes (
    Id INT PRIMARY KEY IDENTITY,
    Name NVARCHAR(100),
    PeopleServed INT
);

CREATE TABLE RecipeIngredients (
    RecipeId INT,
    IngredientId INT,
    QuantityNeeded INT,
    PRIMARY KEY (RecipeId, IngredientId),
    FOREIGN KEY (RecipeId) REFERENCES Recipes(Id),
    FOREIGN KEY (IngredientId) REFERENCES Ingredients(Id)
);
