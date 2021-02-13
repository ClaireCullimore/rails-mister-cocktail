# Cocktail.create(name: "Moscule Mule")
# Cocktail.create(name: "Cosmopolitan")

# Ingredient.create(name: "rum")
# Ingredient.create(name: "vodka")

require 'json'
require 'open-uri'

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
data = open(url).read
ingredients = JSON.parse(data)['drinks']

puts 'start'

ingredients.each do |i|
  Ingredient.create!(name: i['strIngredient1'])
end

puts 'end'
