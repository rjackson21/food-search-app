class Recipe
    attr_accessor :ingredients
    
    def initialize
      @ingredients = []
    end
    
    def add_ingredient(ingredient)
      ingredients << ingredient 
    end
end
    
chickpea_curry = Recipe.new
    
chickpea_curry.add_ingredient("chickpea")
chickpea_curry.add_ingredient("curry")
chickpea_curry.add_ingredient("potato")
chickpea_curry.add_ingredient("coconut milk")
    
p chickpea_curry