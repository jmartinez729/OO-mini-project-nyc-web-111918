class RecipeIngredient
  attr_reader :recipe
  attr_accessor :ingredient

  @@all = []

  def self.all
    @@all
  end

  def initialize(ingredient, recipe)
    @ingredient = ingredient
    @recipe = recipe

    @@all << self
  end

end #end of RecipeIngredient class
