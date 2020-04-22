class Ingredient
  attr_reader :name, :unit, :calories
  
  def initialize(ingredient_info)
    @name = ingredient_info[:name]
    @unit = ingredient_info[:unit]
    @calories = ingredient_info[:calories]
  end
end
