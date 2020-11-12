require 'open-uri'
require 'json'

url = open('https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list')
json = JSON.parse(url.read)

json['drinks'].each do |ingredient|
  name = ingredient["strIngredient1"]
  Ingredient.create(name: name)
  puts "Creating ingredient"
end

puts "Finished"

20.times do
  Cocktail.create(
    name: Faker::Beer.name
  )
end
