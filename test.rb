class Recipe
    attr_accessor :ingredients
    
    def initialize
      @ingredients = []
    end
    
    def add_ingredient(ingredient)
      ingredients << ingredient 
    end
        
end

puts "What ingredients do you want to make a meal out of?"

recipe = Recipe.new
user_input = gets.chomp
recipe.add_ingredient(user_input)

erb :food, locals: {recipe: recipe}
