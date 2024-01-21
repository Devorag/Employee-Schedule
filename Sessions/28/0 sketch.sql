/*
ingredients 
    IngredientId
    Name varchar(300)
    unique name
Cuisine
    CuisineId
    CuisineType Varchar(100)
Status
    StatusId
    StatusName varcahr(100)
Steps
    StepsID
    Instructions varchar(500)
    StepSequence int
Recipe
    IngerdientId
    CuisineId
    StatusId
    UserId 
    RecipeName varchar(200)
    IngredientAmount int 
    Calories int 
    MeasurementType varchar(50)
    StatusDate default date 
    unique name 
Course
    CourseId
    CourseType varchar(100)
RecipeCourse
    RecipeCourseID
    RecipeID
    CourseId 
Meal
    MealId 
    UserId
    MealName varchar(100)
    Active bit 
    DateCreated default date 
    unique name 
CourseMeal
    CourseMealId
    CourseID
    MealId 
    CourseSequence int 
Cookbook   
    CookbookID 
    UserID
    Name varchar(100)
    Price decimal 
    DateCreated default date 
    unique name 
RecipeCookbook
    RecipeCookbookId
    RecipeID
    CookbookID
Picture
    PictureId
    PictureType varchar(200)
User
    UserId 
    FirstName varchar(100)
    LastName varchar(100)
    UserName varchar(100)s