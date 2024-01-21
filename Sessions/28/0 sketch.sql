/*
ingredients 
    IngredientId primary key 
    IngredientName varchar(100)
    unique name
Cuisine
    CuisineId primary key 
    CuisineType Varchar(100)
RecipeStatus
    StatusId primary key 
    StatusDesc varchar(100) must be drafted, published, archived 
Directions
    DirectionsId primary key 
    Directions varchar(500)
    StepSequence int
User 
    UserId primary key 
    FirstName varchar(100)
    LastName varchar(100)
    UserName varchar(100) 
    unique firstname, lastname
Recipe
    RecipeId primary key 
    CuisineId foreign key 
    RecipeStatusId foreign key 
    DirectionId foreign key 
    UserId 
    RecipeName varchar(200)
    IngredientAmount int 
    Calories int 
    MeasurementType varchar(50)
    StatusDate default date 
    unique name 
RecipeIngredient
    RecipeIngredientId primary key 
    RecipeId foreign key 
    IngredientId foreign key 
Course
    CourseId primary key 
    CourseType varchar(100)
RecipeCourse
    RecipeCourseID primary key 
    RecipeID foreign key 
    CourseId foreign key
Meal
    MealId primary key 
    UserId foreign key 
    MealName varchar(100)
    Active bit 
    DateCreated default date 
    unique name 
CourseMeal
    CourseMealId primary key 
    CourseID foreign key 
    MealId foreign key 
    CourseSequence int 
Cookbook   
    CookbookID primay key 
    UserID foreign key 
    Name varchar(100)
    Price decimal 
    Active bit 
    DateCreated default date 
    unique userId, name 
RecipeCookbook
    RecipeCookbookId primary key
    RecipeID foreign key 
    CookbookID foreign key 
Picture
    PictureId primary key 
    PictureType varchar(200)
