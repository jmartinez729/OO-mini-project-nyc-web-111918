require_relative '../config/environment.rb'
require 'pry'

user_1 = User.new("John")
user_2 = User.new("Matt")

recipe_1 = Recipe.new("chicken noodle soup")
recipe_2 = Recipe.new("pizza")
recipe_3 = Recipe.new("pie")
recipe_4 = Recipe.new("cookies")


current_time = Time.now.to_s.split(" ")[0]

recipe_card_1 = RecipeCard.new(recipe_1, current_time, 5, user_1)
recipe_card_2 = RecipeCard.new(recipe_2, current_time, 3, user_2) #pizza, contains cheese, sauce, dough
recipe_card_3 = RecipeCard.new(recipe_2, current_time, 3, user_1)
recipe_card_4 = RecipeCard.new(recipe_2, current_time, 3, user_1)
recipe_card_5 = RecipeCard.new(recipe_2, current_time, 3, user_1)


ingredient_1 = Ingredient.new("chicken")
ingredient_2 = Ingredient.new("noodles")
ingredient_3 = Ingredient.new("cheese")
ingredient_4 = Ingredient.new("sauce")
ingredient_5 = Ingredient.new("dough")

allergen_1 = Allergen.new(user_1, ingredient_5) #dough
allergen_2 = Allergen.new(user_2, ingredient_3) #cheese

array_of_ingredients = [ingredient_3, ingredient_4, ingredient_5]

recipe_ingredient_1 = RecipeIngredient.new(ingredient_1, recipe_1) #chicken, chicken noodle soup
recipe_ingredient_2 = RecipeIngredient.new(ingredient_3, recipe_2) #cheese, pizza
recipe_ingredient_3 = RecipeIngredient.new(ingredient_4, recipe_2) #sauce, pizza
recipe_ingredient_4 = RecipeIngredient.new(ingredient_5, recipe_2) #dough, pizza

binding.pry
