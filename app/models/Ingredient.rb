class Ingredient
  attr_reader :name

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name

    @@all << self
  end

  # def is_ingredient_allergen?
  #   #look through all the allergens
  #   #if the allergen name matches the ingredent name(which is self.name)
  #   #return true
  #   #any returns ture if the statment in the block is true.
  #   Allergen.all.any? { |allergen| allergen == self }
  #                       #name of the ingredient
  # end

end #end of Ingredient class
