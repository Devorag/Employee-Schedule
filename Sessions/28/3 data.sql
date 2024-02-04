use RecipeDb 
go 
delete CookbookRecipe
delete cookbook
delete MealCourseRecipe
delete MealCourse
delete Meal 
delete course 
delete RecipeSteps
delete RecipeIngredient
delete Recipe 
delete Steps
Delete Cuisine 
delete Users 
delete Ingredient 
go 
insert Users(FirstName, LastName)
select 'Devorah', 'Mozes'
union select 'Baila', 'Diena'
union select 'Dina', 'Azoulay'
union select 'Malky', 'Svei'
union select 'Miri', 'Weinberger'
union select 'Shira', 'Korb'
union select 'Lolly', 'Ludzker'
union select 'Leah', 'Katz'
union select 'Miriam', 'Gross'

insert Ingredient(IngredientName)
select 'sugar'
union select 'oil'
union select 'flour'
union select 'eggs'
union select 'baking soda'
union select 'baking powder'
union select 'chocolate chips'
union select 'granny smith apples'
union select 'vanilla yogurt'
union select 'orange juice'
union select 'honey'
union select 'ice cubes'
union select 'club bread'
union select 'butter'
union select 'shredded cheese'
union select 'garlic cloves'
union select 'black pepper'
union select 'vanilla pudding'
union select 'whipped cream cheese'
union select 'sour cream cheese'
union select 'peanut butter'
union select 'confectioners sugar'
union select 'margarine'
union select 'rice chex'
union select 'water'
union select 'tomato sauce'
union select 'eggplants'
union select 'chickpeas'
union select 'tomatoes'
union select 'pasta'
union select 'peppers'
union select 'onions'
union select 'chicken cutlets'
union select 'bread crumbs'
union select 'honey'
union select 'duck sauce'
union select 'soy sauce'
union select 'sesame seeds'

insert Cuisine(CuisineType)
select 'French'
union select 'American'
union select 'Chinese'
union select 'Indian'
union select 'Greek'
union select 'English'
union select 'Italian'
union select 'Dutch'

insert Steps(Instructions)
select 'boil water'
union select 'add tomato sauce'
union select 'toss in vegetables'
union select 'add in spices'
union select 'let simmer for half hour'
union select  'add in pasta'
union select  'cook for 2 hours with pot covered' 
union select 'preheat oven to 450'
union select  'cut all vegetables into very thin slices'
union select  'mix well with oil, salt, and pepper'
union select  'reheat oven to 400' 
union select  'coat chicken cutlets'
union select  'heat oil in frying pan'
union select  'fry chicken cutlets'
union select  'mix all the remainding ingredients' 
union select  'coat fried chicken cutlets with sauce'
union select 'cook for one hour'
union select 'Melt margarine' 
union select 'Add peanut butter and chocolate chips'
union select 'Mix in rice chex cereal'
union select 'Allow to cool'
union select 'Shake in ziploc bag with confectioners sugar'
union select 'freeze' 
union select 'Cream butter with sugars'
union select 'Add eggs and mix well'
union select 'Slowly add rest of ingredients and mix well'
union select 'fill muffin pans 3/4 full and bake for 30 minutes'
union select 'Slit bread every 3/4 inch'
union select 'Combine all ingredients in bowl'
union select 'fill slits with cheese mixture'
union select 'wrap bread into a foil and bake for 30 minutes.'
union select 'Peel the apples and dice'
union select 'Combine all ingredients in bowl except for apples and ice cubes'
union select 'mix until smooth'
union select 'add apples and ice cubes'
union select 'pour into glasses'
union select 'combine sugar, oil and eggs in a bowl'
union select 'mix well'
union select 'add flour, vanilla sugar, baking powder and baking soda'
union select 'beat for 5 minutes'
union select 'add chocolate chips'
union select 'freeze for 1-2 hours'
union select 'roll into balls and place spread out on a cookie sheet'
union select 'bake on 350 for 10 min.'

--I realized after this table that I should've done this using a CTE but this works also so please accept!!!!
insert Recipe(CuisineID, UsersId, RecipeName, Calories, DateDrafted, DatePublished, DateArchived)
select (select c.cuisineId from Cuisine c where c.CuisineType = 'American'), u.usersID,  'Chocolate Chip Cookies', 450, '01-03-2023', null, '11-11-2023' from users u where u.lastname = 'Diena'
union select (select c.cuisineId from Cuisine c where c.CuisineType = 'French'), u.usersId, 'Apple yogurt smoothie', 125, '04-05-2021', '12-10-2021', null from users u where u.LastName = 'Azoulay'
union select (select c.cuisineId from Cuisine c where c.CuisineType = 'English'), u.usersId, 'Cheese bread', 350, '11-10-2017', '01-01-2018', '02-02-2019' from users u where u.lastname = 'Weinberger'
union select (select c.CuisineId from cuisine c where c.CuisineType = 'American'), u.usersId, 'Butter muffins', 375, '01-01-2016', '03-03-2016', null from users u where u.LastName = 'Svei'
union select (select c.cuisineId from Cuisine C where c.CuisineType = 'American'), u.usersId, 'Muddy Buddies', 300, '01-01-2019', '04-04-2019', '05-05-2020' from users u where u.lastname = 'Svei'
union select (select c.cuisineId from cuisine c where c.CuisineType = 'French'), u.usersId, 'Ministroni soup', 200, '08-12-2023', null, '01-03-2024' from users u where u.lastname = 'Korb'
union select (select c.cuisineId from cuisine c where c.cuisineType = 'Indian'), u.usersId, 'Roasted Vegetables', 150, '07-06-2015', '06-06-2016', null from users u where u.lastname = 'Mozes'
union select (select c.cuisineId from cuisine c where c.CuisineType = 'Chinese'), u.usersId, 'Sesame Chicken', 325, '01-01-2021', '03-04-2021', '11-11-2021' from users u where u.lastname = 'Katz'
;
with x as(
    select RecipeName = 'Chocolate Chip Cookies', ingredientName = 'sugar', measurementAmount = 1, MeasurementType = 'cup', IngredientSequence = 1
    union select 'Chocolate Chip Cookies', 'oil', 1/2, 'cup', 2
    union select 'Chocolate Chip Cookies', 'eggs', 3, null, 3
    union select 'Chocolate Chip Cookies', 'flour', 2, 'cup', 4
    union select 'Chocolate Chip Cookies', 'vanilla sugar', 1, 'tsp', 5
    union select 'Chocolate Chip Cookies', 'Baking Powder', 2, 'tsp', 6
    union select 'Chocolate Chip Cookies', 'Baking Soda', 1/2, 'tsp', 7
    union select 'chocolate chip cookies', 'chocolate chips', 1, 'cup', 8
    union select 'Apple Yogurt Smoothie', 'granny smith apples', 3, null, 1
    union select 'Apple Yogurt Smoothie', 'vanilla yogurt', 2, 'cup', 2
    union select 'Apple Yogurt Smoothie', 'sugar', 2, 'tsp', 3
    union select 'Apple Yogurt Smoothie', 'orange juice', 1/2, 'cup', 4
    union select 'Apple Yogurt Smoothie', 'honey', 2, 'tbsp', 5
    union select 'Apple Yogurt Smoothie', 'ice cubes', 5, null, 6
    union select 'Cheese Bread', 'club bread', 1, null, 1
    union select 'Cheese Bread', 'butter', 4, 'oz', 2
    union select 'Cheese Bread', 'shredded cheese', 8, 'oz', 3
    union select 'Cheese Bread', 'garlic cloves', 2, null, 4
    union select 'Cheese Bread', 'Black pepper', 1/4, 'tsp', 5
    union select 'Cheese Bread', 'Salt', null, 'pinch', 6
    union select 'Butter Muffins', 'butter', 1, 'Stick', 1
    union select 'Butter Muffins', 'sugar', 3, 'cup', 2
    union select 'Butter Muffins', 'vanilla pudding', 2, 'tbsp', 3
    union select 'Butter Muffins', 'whipped cream cheese', 8, 'oz', 4 
    union select 'Butter Muffins', 'eggs', 4, null, 5
    union select 'Butter Muffins', 'flour', 1, 'cup', 6
    union select 'Butter Muffins', 'baking powder', 2, 'tsp', 7
    union select 'Muddy Buddies', 'margarine', 1, 'stick', 1
    union select 'Muddy Buddies', 'rice chex', 9, 'cup', 2 
    union select 'Muddy Buddies', 'chocolate chips', 16, 'oz', 3 
    union select 'Muddy Buddies', 'peanut butter', 1/2, 'cup', 4 
    union select 'Muddy Buddies', 'Confectioners sugar', 1, 'cup', 5 
    union select 'Ministroni soup', 'water', 6, 'cup', 1 
    union select 'Ministroni soup', 'tomato sauce', 3, 'cup', 2 
    union select 'Ministroni soup', 'black pepper', 1, 'tsp', 3 
    union select 'Ministroni soup', 'pasta', 1, 'cup', 4 
    union select 'Ministroni soup', 'tomatoes', 2, null, 5 
    union select 'Ministroni soup', 'eggplant', 1, null, 6 
    union select 'Ministroni soup', 'mushrooms', 2, 'cup', 7 
    union select 'Ministroni soup', 'chickpeas', 8, 'oz', 8 
    UNION select 'Roasted Vegetables', 'peppers', 3, null, 1 
    union select 'Roasted Vegetables', 'eggplant', 1, null, 2 
    union select 'Roasted Vegetables', 'mushrooms', 2, null, 3 
    union select 'Roasted Vegetables', 'tomatoes', 3, null, 4 
    union select 'Roasted Vegetables', 'onion', 1, null, 5
    union select 'Roasted Vegetables', 'oil', 2, 'tbsp', 6
    union select 'Roasted Vegetables', 'salt', 2, 'tbsp', 7 
    union select 'Roasted Vegetables', 'black pepper', 1, 'tsp', 8 
    union select 'Sesame Chicken', 'chicken cutlets', 8, null, 1 
    union select 'Sesame Chicken', 'bread crumbs', 1, 'cup', 2 
    union select 'Sesame Chicken', 'honey', 1, 'cup', 3 
    union select 'Sesame Chicken', 'duck sauce', 1, 'cup', 4 
    union select 'Sesame Chicken', 'soy sauce', 1/2, 'cup', 5 
    union select 'Sesame Chicken', 'sesame seeds', 1, 'cup', 6 
    union select 'Sesame Chicken', 'oil', null, null , 7 
)
insert RecipeIngredient(RecipeId, IngredientId, MeasurementAmount, MeasurementType, IngredientSequence)
select r.recipeId, i.ingredientId, x.Measurementamount, x.MeasurementType, x.IngredientSequence
from x 
join recipe r 
on r.RecipeName = x.RecipeName 
join ingredient i 
on i.IngredientName = x.ingredientName 
; 
with x as(
    select RecipeName = 'Chocolate Chip Cookies', Instructions = 'combine sugar, oil, and eggs in a bowl', StepSequence = 1 
    union select 'Chocolate Chip Cookies', 'mix well', 2
    union select 'Chocolate Chip Cookies', 'add flour, vanilla sugar, baking powder, and baking soda', 3
    union select 'Chocolate Chip Cookies', 'beat for 5 minutes', 4
    union select 'Chocolate Chip Cookies', 'mix well', 5
    union select 'Chocolate Chip Cookies', 'add chocolate chips', 6
    union select 'Chocolate Chip Cookies', 'freeze for 1-2 hours', 7
    union select 'Chocolate Chip Cookies', 'roll into balls and place spread out on a cookie sheet', 8
    union select 'Chocolate Chip Cookies', 'bake on 350 for 10 min.', 9
    union select 'Apple Yogurt Smoothie', 'peel the apples and dice', 1
    union select 'Apple Yogurt Smoothie', 'peel the apples and dice', 2
    union select 'Apple Yogurt Smoothie', 'combine all ingredients in bowl except for apples and ice cubes', 3
    union select 'Apple Yogurt Smoothie', 'mix until smooth', 4
    union select 'Apple Yogurt Smoothie', 'add apples and ice cubes', 5
    union select 'Apple Yogurt Smoothie', 'peel the apples and dice', 6
    union select 'Apple Yogurt Smoothie', 'pour into glasses', 7
    union select 'Cheese Bread', 'slit bread every 3/4 inch', 1
    union select 'Cheese Bread', 'combine all ingredients in bowl', 2
    union select 'Cheese Bread', 'fill slits with cheese mixture', 3
    union select 'Cheese Bread', 'wrap bread into a foil and bake for 30 minutes.', 4
    union select 'Butter Muffins', 'Cream butter with sugars', 1
    union select 'Butter Muffins', 'add eggs and mix well', 2
    union select 'Butter Muffins', 'Cream butter with sugars', 3
    union select 'Butter Muffins', 'slowly add rest of ingredients and mix well', 4
    union select 'Butter Muffins', 'fill muffin pans 3/4 full and bake for 30 minutes.', 5
    union select 'Muddy Buddies', 'melt margarine', 1
    union select 'Muddy Buddies', 'add peanuts butter and chocolate chips', 2
    union select 'Muddy Buddies', 'mix in rice chex cereal', 3
    union select 'Muddy Buddies', 'allow to cool', 4
    union select 'Muddy Buddies', 'Shake in ziploc bag with confectioners sugar', 5
    union select 'Muddy Buddies', 'freeze', 6 
    union select 'Ministroni soup', 'boil water', 1
    union select 'Ministroni soup', 'add tomato sauce', 2
    union select 'Ministroni soup', 'toss in vegetables', 3
    union select 'Ministroni soup', 'add in spices', 4
    union select 'Ministroni soup', 'let simmer for half hour', 5
    union select 'Ministroni soup', 'add in pasta', 6
    union select 'Ministroni soup', 'cook for 2 hours with pot covered', 7
    union select 'Roasted Vegetables', 'preheat oven to 450', 1
    union select 'Roasted Vegetables', 'cut all vegetables into very thin slices', 2
    union select 'Roasted Vegetables', 'mix well with oil, salt and pepper', 3
    union select 'Sesame Chicken', 'preheat oven to 400', 1
    union select 'Sesame Chicken', 'coat chicken cutlets', 2
    union select 'Sesame Chicken', 'heat oil in frying pan', 3
    union select 'Sesame Chicken', 'fry chicken cutlets', 4
    union select 'Sesame Chicken', 'mix all the remainding ingredients', 5
    union select 'Sesame Chicken', 'coat fried chicken cutlets with sauce', 6
    union select 'Sesame Chicken', 'cook for one hour', 7
)
insert RecipeSteps(RecipeId, StepsId, StepSequence)
select r.recipeId, s.stepsId, x.StepSequence
from x 
join recipe r 
on r.RecipeName  = x.RecipeName 
join steps s 
on s.Instructions = x.Instructions 

insert Course(CourseType)
select 'appetizer'
union select 'main course'
union select 'dessert'
union select 'palate cleanser'


insert Meal(UsersId, MealName, Active)
select u.usersId, 'Breakfast Bash', 1 from users u where u.lastname = 'Katz'
union select u.usersID, 'Brunch o'' lunch', 1 from users u where u.lastname = 'Mozes'
union select u.usersId, 'noon refreshments', 0 from users u where u.lastname = 'Mozes'
union select u.usersId, 'Supper Crunch', 1 from users u where u.lastname = 'Azoulay' 
;
with x as(
    select MealName = 'Breakfast Bash', CourseType = 'appetizer', CourseSequence = 1
    union select 'Breakfast Bash', 'main course', 2
    union select 'Brunch o'' lunch', 'appetizer', 1
    union select 'Brunch o'' lunch', 'main course', 2
    union select 'Brunch o'' lunch', 'dessert', 3
    union select 'noon refreshments', 'appetizer', 1
    union select 'noon refreshments', 'palate cleanser', 4
    union select 'supper crunch', 'appetizer', 1
    union select 'supper crunch', 'main course', 2
    union select 'supper crunch', 'dessert', 3
)
insert MealCourse(MealId, CourseId, CourseSequence)
select m.mealId, c.CourseId, x.coursesequence
from x
join meal m 
on m.Mealname = x.mealname 
join course c 
on c.CourseType = x.CourseType 

;
with x as(
    select MealName = 'Breakfast Bash', CourseType = 'appetizer', RecipeName = 'Apple Yogurt Smoothie', CourseCategory = null 
    union select 'Breakfast Bash', 'main course', 'Butter Muffins', 'side dish'
    union select 'Breakfast Bash', 'main course', 'Cheese Bread', 'main dish'
    union select 'Brunch o'' lunch', 'appetizer', 'Ministroni soup', null
    union select 'Brunch o'' lunch', 'main course', 'Cheese Bread', 'side dish'
    union select 'Brunch o'' lunch', 'dessert', 'Chocolate Chip Cookies', null 
    union select 'noon refreshments', 'appetizer', 'Apple Yogurt Smoothie', null
    union select 'noon refreshments', 'palate cleanser', 'Muddy Buddies', null
    union select 'supper crunch', 'appetizer', 'Ministroni Soup', null
    union select 'supper crunch', 'main course', 'Sesame Chicken', 'main dish'
    union select 'supper crunch', 'main course', 'Roasted Vegetables', 'side dish'
    union select 'supper crunch', 'dessert', 'Chocolate Chip Cookies', null 
)
insert MealCourseRecipe(MealCourseId, RecipeId, CourseCategory)
select mc.MealCourseId, r.recipeId, x.coursecategory
from x 
join recipe r 
on r.RecipeName = x.RecipeName 
join meal m 
on m.MealName = x.MealName 
join course c 
on c.coursetype = x.CourseType 
join MealCourse mc 
on mc.courseID = c.CourseId 
and mc.mealId = m.mealId 

insert cookbook(UsersId, CookbookName, Price)
select u.usersID, 'Treats for two', 30 from users u where u.LastName = 'Korb'
union select u.usersId, 'The Cook''s Secret', 35 from users u where u.lastname = 'Korb'
union select u.usersId, 'Taste It', 40 from users u where u.lastname = 'Svei' 
union select u.usersID, 'Njoy', 25 from users u where u.LastName = 'Weinberger'
;
with  x as(
    SELECT CookbookName = 'Treats for two', RecipeName = 'Chocolate Chip Cookies', RecipeSequence = 1
    union select 'Treats for two', 'Apple Yogurt Smoothie', 2
    union select 'Treats for two', 'Cheese Bread', 3
    union select 'Treats for two', 'Butter Muffins', 4 
    union select 'The Cook''s Secret', 'Cheese Bread', 1
    union select 'The Cook''s Secret', 'Ministroni Soup', 2
    union select 'The Cook''s Secret', 'Muddy Buddies', 3
    union select 'The Cook''s Secret', 'Sesame Chicken', 4
    union select 'Taste It', 'Chocolate Chip Cookies', 1 
    union select 'Taste It', 'Butter Muffins', 2
    union select 'Taste It', 'Muddy Buddies', 3 
    union select 'Taste It', 'Roasted Vegetables', 4 
    union select 'Taste It', 'Sesame Chicken', 5
    union select 'Njoy', 'Ministroni soup', 1
    union select 'Njoy', 'Apple Yogurt Smoothie', 2
    union select 'Njoy', 'Roasted Vegetables', 3
    union select 'Njoy', 'Sesame Chicken', 4
)
insert CookbookRecipe(CookbookID, RecipeId, RecipeSequence)
select c.CookbookID, r.recipeId, x.RecipeSequence 
from x 
join cookbook c 
on c.CookbookName = x.CookbookName 
join recipe r 
on r.RecipeName = x.RecipeName 
