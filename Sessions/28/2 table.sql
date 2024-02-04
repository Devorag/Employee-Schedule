use RecipeDb
go 
drop table if exists CookbookRecipe
drop table if exists Cookbook 
drop table if exists MealCourseRecipe
drop table if exists MealCourse
drop table if exists Meal
drop table if exists Course
drop table if exists RecipeSteps
drop table if exists RecipeIngredient
drop table if exists Recipe 
drop table if exists Steps
drop table if exists Cuisine 
drop table if exists Ingredient
drop table if exists Users
go 
create table dbo.Users(
    UsersId int not null identity primary key,
    FirstName varchar(100) not null 
        constraint ck_User_FirstName_cannot_be_Blank check(FirstName <> ''),
    LastName varchar(100) not null 
        constraint ck_User_LastName_cannot_be_blank check(LastName <> '')
        constraint u_user_firstName_LastName unique(FirstName, LastName),
    UserName as concat(upper(substring(FirstName, 1, 1)), lower(lastname)) persisted
 )
go 
create table dbo.ingredient(
    IngredientId int not null identity primary key,
    IngredientName varchar(100) not null 
        constraint ck_ingredient_ingredientName_cannot_be_blank check(IngredientName <> '')
        constraint u_Ingredient_IngredientName unique,
    IngredientPicture as concat('Ingredient', '_', replace(IngredientName, ' ', '_'), '_.jpg') persisted 
)
go 
create table dbo.Cuisine(
    CuisineId int not null identity primary key,
    CuisineType varchar(100) not null 
        constraint ck_Cuisine_CuisineType_cannot_be_Blank check(CuisineType <> '')
)
go  
create table dbo.Steps(
    StepsId int not null identity primary key,
    Instructions  varchar(500) not null 
        constraint Ck_Steps_Instructions_cannot_be_blank check(Instructions <> '')
)
go 
create table dbo.Recipe(
    RecipeId int not null identity primary key, 
    CuisineID int not null 
        constraint f_Cuisine_Recipe foreign key references Cuisine(CuisineId),
    UsersId int not null 
        constraint f_User_Recipe foreign key references Users(UsersId),
    RecipeName varchar(100) not null 
        constraint ck_recipe_recipeName_Cannot_be_blank check(RecipeName <> '')
        constraint u_Recipe_RecipeName unique,
    Calories int not null 
        constraint ck_recipe_calories_must_be_greater_than_zero check(Calories > 0),
    DateDrafted date not null 
        constraint ck_Recipe_DateDrafted_Cannot_be_future_Date check(DateDrafted < getdate()),
    DatePublished date null 
        constraint ck_Recipe_DatePublished_Cannot_be_future_Date check(DatePublished < getdate()),
    DateArchived date null 
        constraint ck_Recipe_DateArchived_Cannot_be_future_Date check(DateArchived < getdate()),
    RecipeStatus as 
        case 
            when datearchived is not null then 'Archived'
            when datearchived is null and datepublished is not null then 'Published'
            when datearchived is null and datepublished is null then 'Drafted' 
        end,
    RecipePicture as concat('Recipe', '_', replace(RecipeName, ' ', '_'), '_.jpg') persisted
)
go 
create table dbo.RecipeIngredient(
    RecipeIngredientId int not null identity primary key,
    RecipeId int not null  
        constraint F_Recipe_RecipeIngredient foreign key references Recipe(RecipeId),
    IngredientId int not null 
        constraint f_Ingredients_RecipeIngredient foreign key references Ingredient(IngredientId),
    MeasurementAmount int null 
        constraint ck_recipe_MeasurementAmount_must_be_greater_than_zero check(MeasurementAmount > -1),
    MeasurementType varchar(50) null 
        constraint ck_recipe_measurementtype_cannot_be_Blank check(MeasurementType <> ''),
    IngredientSequence int not null 
        constraint ck_RecipeIngredient_IngredientSequence_must_be_greater_than_zero CHECK(IngredientSequence > 0),
    constraint u_RecipeIngredient_RecipeId_IngredientId unique(RecipeID, IngredientId)
)
go 
create table dbo.RecipeSteps(
    RecipeStepsId int not null identity primary key,
    RecipeId int not null 
        constraint f_Recipe_RecipeSteps foreign key references Recipe(RecipeID),
    StepsId int not null 
        constraint f_Steps_RecipeSteps foreign key references steps(StepsId),
    StepSequence int not null 
        constraint ck_RecipeSteps_StepSequence_must_be_Greater_than_zero check(StepSequence > 0)
    constraint u_RecipeSteps_RecipeId_StepSequence unique(RecipeId, StepSequence)
)
go
create table dbo.Course(
    CourseId int not null identity primary key,
    CourseType varchar(100) not null 
        constraint ck_Course_CourseType_cannot_be_blank check(CourseType <> '')
        constraint u_course_coursetype unique
)
go
create table dbo.Meal(
    MealId int not null identity primary key,
    UsersId int not null 
        constraint f_Users_Meal foreign key references Users(UsersId),
    MealName varchar(100) not null 
        constraint ck_meal_medalname_cannot_be_blank check(MealName <> '')
        constraint u_Meal_MealName unique,
    Active bit not null,
    DateCreated date not null DEFAULT getdate()
        constraint ck_meal_dateCreated_cannot_be_future_Date check(DateCreated < getdate()),
    MealPicture as concat('Meal', '_', replace(MealName, ' ', '_'), '_.jpg') PERSISTED 
)
go 
create table dbo.MealCourse(
    MealCourseId int not null identity primary key,
    MealId int not null 
        constraint f_MealCourse_Meal foreign key references Meal(MealId),
    CourseId int not null 
        constraint f_MealCourse_Course foreign key references Course(CourseId),
    CourseSequence int not null 
        constraint ck_Course_CourseSequence_must_be_greater_than_Zero check(CourseSequence > 0),
    constraint u_MealCourse_MealId_CourseID unique(MealId, CourseID),
    constraint u_MealCourse_MealId_CourseSequence UNIQUE(MealId, CourseSequence)
)
go 
create table dbo.MealCourseRecipe(
    MealCourseRecipeId int not null identity primary key,
    MealCourseId int not null 
        constraint f_MealCourseRecipe_MealCourse foreign key REFERENCES MealCourse(MealCourseId),
    RecipeId int not null 
        constraint f_MealCourseRecipe_Recipe foreign key references Recipe(RecipeId),
    CourseCategory char(9) null 
        constraint ck_MealCourseRecipe_CourseCategory_must_be_main_or_side Check(CourseCategory in ('side dish', 'main dish')),
        constraint u_MealCourseRecipe_MealCourseId_RecipeId unique(MealCourseId, RecipeId)
)
go
create table dbo.Cookbook(
    CookbookId int not null identity primary key,
    UsersId int not null 
        constraint f_cookbook_users foreign key references Users(UsersId),
    CookbookName varchar(200) not null
        CONSTRAINT ck_Cookbook_CookbookName_cannot_Be_Blank check(CookbookName <> '')
        constraint u_Cookbook_CookbookName unique,
    Price decimal 
        constraint ck_Cookbook_Price_must_be_greater_than_Zero check(Price > 0),
    Active bit not null default 1, 
    DateCreated date not null default getdate(),
    CookbookPicture as concat('Cookbook', '_', replace(CookbookName, ' ', '_'), '_.jpg') persisted
)
go 
create table dbo.CookbookRecipe(
    CookbookRecipeId int not null identity primary key,
    RecipeId int not null 
        constraint f_CookbookRecipe_Recipe foreign key references Recipe(RecipeId),
    CookbookId int not null 
        constraint f_CookbookRecipe_Cookbook foreign key references Cookbook(CookbookID),
    RecipeSequence int not null 
        constraint ck_CookbookRecipe_RecipeSequence_must_be_Greater_than_Zero check(RecipeSequence > 0)
    constraint u_CookbookRecipe_RecipeId_CookbookId unique(RecipeId, CookbookId),
    constraint u_CookbookRecipe_CookbookId_RecipeSequence unique(CookbookId, RecipeSequence)
)
go 
