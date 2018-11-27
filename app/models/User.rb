class User
  attr_reader :name
  attr_accessor :recipe, :recipe_card

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name

    # @recipe_cards = []
    @@all << self
  end

  def recipes
    RecipeCard.all.map do |recipe_card|
      #if the recipe this recipe_ingredient instance belongs to is the same recipe
        #as the one we are searching over
      if recipe_card.user == self
        #return all the ingredients in that recipe
        recipe_card.recipe
      end
    end
  end

  def add_recipe_card(recipe, date, rating)
    RecipeCard.new(recipe, date, rating, self)
  end
  #declare_allergen
  #ingredient instance as an argument
   #user_1("nuts")
   def declare_allergen(ingredient)
     Allergen.new(self, ingredient)
   end

   def allergens
     #return all of the ingredients this user is allergic
     #RecipeIngredient.all.select do |recipe_ingredient_inst|
     #   recipe_ingredient_inst.recipe == self
     # end
     Allergen.all.select { |allergen| allergen.user == self}
   end

   #should return the top three highest rated recipes for this user.
   def top_three_recipes
     
   end

end #end of User class
