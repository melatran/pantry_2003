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

  def highest_calorie_meal
    @recipes.max_by do |recipe|
      recipe.total_calories
    end
  end
end
