use RecipeDb
go 
drop table if exists Recipe 
drop table if exists User 
drop table if exists Directions 
drop table if exists RecipeStatus 
drop table if exists Cuisine 
drop table if exists Ingredient
go 
create table dbo.ingredient(
    IngredientId int not null identity primary key,
    IngredientName varchar(100) not null constraint ck_ingredient_ingredientName_cannot_be_blank check(IngredientName <> '')
    constraint u_Ingredient_IngredientName unique 
)
go 
create table dbo.Cuisine(
    CuisineId int not null identity primary key,
    CuisineType varchar(100) not null constraint ck_Cuisine_CuisineType_cannot_be_Blank check(CuisineType <> '')
)
go 
create table dbo.RecipeStatus(
    StatusId int not null identity primary key,
    StatusDesc varchar(100) not null constraint ck_Status_StatusDesc_must_Be_drafted_published_or_archived check(StatusDesc in ('Drafted', 'Published', 'Archived'))
)
go 
create table dbo.Directions(
    DirectionId int not null identity primary key,
    Directions  varchar(500) not null constraint Ck_directions_cannot_be_blank check(Directions <> '')
)
go 
create table dbo.User(
    UserId int not null identity primary key,
    FirstName varchar(100) not null constraint ck_User_FirstName_cannot_be_Blank check(FirstName <> ''),
    LastName varchar(100) not null constraint ck_User_LastName_cannot_be_blank check(LastName <> '')
    constraint u_user_firstName_LastName unique(FirstName, LastName)
 )
go 
create table dbo.Recipe(
    RecipeId int not null identity primary key, 
    CuisineID int not null constraint f_Cuisine_Recipe foreign key references Cuisine(CuisineId),
    StatusId int not null constraint f_Status_Recipe foreign key references Status(StatusId),
    DirectionsId int not null constraint f_Directions_Recipe foreign key references Directions(DirectionId),
    UserId int not null constraint f_User_Recipe foreign key references User(UserId)
)
go 
create table dbo.RecipeIngredient(
    RecipeIngredientId int not null identity primary key,
    RecipeId int not null constraint F_Recipe_RecipeIngredient foreign key references Recipe(RecipeId)
    IngredientId int not null constraint f_Ingredients_RecipeIngredients foreign key references Ingredient(IngredientId)
)