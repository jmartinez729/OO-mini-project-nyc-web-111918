class RecipeCard
  attr_reader :rating, :user
  attr_accessor :recipe, :date

  @@all = []

  def self.all
    @@all
  end

  def initialize(recipe, date=Time.now, rating, user)
    @recipe = recipe
    @date = date
    @rating = rating
    @user = user

    @@all << self
  end

end #end of RecipeCard class
