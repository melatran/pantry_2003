require 'date'

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

  def date
    Date.today.strftime("%m-%d-%Y")
  end

  def sort_ingredient_name_and_amount(recipe) #new ingredient hash
    recipe.ingredients_required.map do |ingredient, quantity|
      details = Hash.new
      details[:ingredeint] = ingredient.name
      details[:amount] = quantity.to_s + " " + ingredient.unit
      details
    end
  end

  def summary
    @recipes.map do |recipe|
      summary = Hash.new
      summary[:name] = recipe.name
      summary[:details][:ingredients] = sort_ingredient_name_and_amount(recipe)
      summary[:details][:total_calories] = recipe.total_calories
      summary
    end
  end
end
