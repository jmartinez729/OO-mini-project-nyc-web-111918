require 'pry'

class Recipe
  attr_reader :name

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name

    @@all << self
  end

  def recipe_ingredients
    RecipeIngredient.all.select do |recipe_ingredient_inst|
      recipe_ingredient_inst.recipe == self
    end
  end

  def ingredients #returns all of the ingredients in this recipe.
     recipe_ingredients.map do |recipe_ingredient|
       recipe_ingredient.ingredient
     end
  end

  def all_ingredients_that_are_allergens
    Allergen.all.map { |allergen| allergen.ingredient }
  end

  def allergens
    #looping through all the ingredients
    #asking your self is this an allergen?
    #is this ingredient in a list of all of the allergens
    #ruby method that checks this. include?
    ingredients.select do |ingredient|
      all_ingredients_that_are_allergens.include?(ingredient)
    end
  end

  #something that returns all ingredients
  #something that finds ingredients that are also allergens
  # Allergen.all.map{|allergen|allergen.ingredient}

  def add_one_ingredient(ingredient)
    RecipeIngredient.new(ingredient, self)
  end

  def add_array_of_ingredients(ingredients)
    ingredients.each do |ingredient|
      add_one_ingredient(ingredient)
    end
  end

  def recipe_card
    #select all recipe_cards that this recipe is on
    RecipeCard.all.select do |recipe_card|
      recipe_card.recipe == self
    end
  end

  def users
    #select(map?) users who have this recipe
    self.recipe_card.map do |recipe_card| #RecipeCard instance
      recipe_card.user
    end
    #returning list of those users
  end

end #end of Recipe class
