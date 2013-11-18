class Cookbook

	attr_accessor :recipes

	def initialize(title)
		@title = title
		@recipes = []
	end

	def add_recipe(recipe)
		@recipes << recipe
	end

	def list_recipes
		@recipes.each { |recipe| 
			puts recipe.recipe_title}
	end

	def print_cookbook
		puts "This book contains these recipes:"
		@recipes.each { |recipe| 
			puts recipe.recipe_title 
		}
	end

end

class Recipe
	attr_accessor :recipe_title, :ingredients, :steps

	def initialize(recipe_title, ingredients, steps)
		@recipe_title = recipe_title
		@ingredients = ingredients
		@steps = steps
	end

	def print_recipe
		puts "Title: #{@recipe_title}"
		puts "Ingredients: #{@ingredients}"
		puts "Steps: #{@steps}"
	end

end


mex_cuisine = Cookbook.new("Mexican Cuisine")

burrito = Recipe.new("Bean and Cheese Burrito", ["tortilla", "bean", "cheese"], ["heat beans", "heat tortilla", "place beans in tortilla", "sprinkle cheese on top", "roll up"])
chips_n_salsa = Recipe.new("Chips and Salsa", ["tortilla chips", "Salsa"], ["place chips in bowl", "pour salsa over"])
puts burrito
puts chips_n_salsa

mex_cuisine.add_recipe(burrito)
mex_cuisine.add_recipe(chips_n_salsa)

mex_cuisine.list_recipes
burrito.print_recipe
mex_cuisine.print_cookbook




