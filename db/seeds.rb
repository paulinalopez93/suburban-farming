# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Creating restaurants...'

Product.create(name: "Tomato", price: 5, details: "A delicious red tomato", category: "vegetable")

Product.create(name: "Broccoli", price: 5, details: "A delicious piece of broccoli")

Product.create(name: "Corn", price: 5, details: "Yummy corn")

Product.create(name: "Mushrooms", price: 5, details: "Fun mushrooms")

Product.create(name: "Carrots", price: 5, details: "A delicious orange carrot")

Product.create(name: "Peas", price: 5, details: "Delicious tiny peas")

Product.create(name: "Brussels sprouts", price: 5, details: "A delicious brussel sprout")

Product.create(name: "Cauliflower", price: 5, details: "A delicious cauliflower")

Product.create(name: "Asparagus", price: 5, details: "Yummy Asparagus")

Product.create(name: "Green beans", price: 5, details: "Tiny green beans")

Product.create(name: "Bananas", price: 5, details: "A delicious yellow banana")

Product.create(name: "Apples", price: 5, details: "A delicious red apple")

Product.create(name: "Grapes", price: 5, details: "Tiny green grapes")

Product.create(name: "Strawberries", price: 5, details: "Strawberries full of flavor")

Product.create(name: "Oranges", price: 5, details: "A delicious orange orange")

Product.create(name: "Watermelon", price: 5, details: "A refreshing watermelon")

Product.create(name: "Lemons", price: 5, details: "Yummy Lemons")

Product.create(name: "Blueberries", price: 5, details: "The best berries! Blueberries!")

Product.create(name: "Peaches", price: 5, details: "A delicious peach")

Product.create(name: "Pineapple", price: 5, details: "A delicious pineapple")

puts 'Finished!'
