class CookBook
  attr_reader :recipes

  def initialize
    @recipes = []
  end

  def add_recipe(recipe)
    @recipes << recipe
  end

  def ingredients
    ingredients = @recipes.map do |recipe|
      recipe.ingredients
    end.flatten
    ingredients.map do |ingredient|
      ingredient.name
    end.uniq
  end
end
