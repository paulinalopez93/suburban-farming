puts 'Creating products...'

simon = User.create(email:"simon@gmail.com", encrypted_password:"hola123", id:"1")

#vegetables

Product.create!(name: "Tomato", price: 5, details: "A delicious red tomato", category: "vegetables", user_id:simon.id)

# Product.create!(name: "Broccoli", price: 5, details: "A delicious piece of broccoli", category: "vegetables")

# Product.create!(name: "Corn", price: 5, details: "Yummy corn", category: "vegetables")

# Product.create!(name: "Mushrooms", price: 5, details: "Fun mushrooms", category: "vegetables")

# Product.create!(name: "Carrots", price: 5, details: "A delicious orange carrot", category: "vegetables")

# Product.create!(name: "Peas", price: 5, details: "Delicious tiny peas", category: "vegetables")

# Product.create!(name: "Brussels sprouts", price: 5, details: "A delicious brussel sprout", category: "vegetables")

# Product.create!(name: "Cauliflower", price: 5, details: "A delicious cauliflower", category: "vegetables")

# Product.create!(name: "Asparagus", price: 5, details: "Yummy Asparagus", category: "vegetables")

# Product.create!(name: "Green beans", price: 5, details: "Tiny green beans", category: "vegetables")

# #fruits

# Product.create!(name: "Bananas", price: 5, details: "A delicious yellow banana", category: "fruits")

# Product.create!(name: "Apples", price: 5, details: "A delicious red apple", category: "fruits")

# Product.create!(name: "Grapes", price: 5, details: "Tiny green grapes", category: "fruits")

# Product.create!(name: "Strawberries", price: 5, details: "Strawberries full of flavor", category: "fruits")

# Product.create!(name: "Oranges", price: 5, details: "A delicious orange orange", category: "fruits")

# Product.create!(name: "Watermelon", price: 5, details: "A refreshing watermelon", category: "fruits")

# Product.create!(name: "Lemons", price: 5, details: "Yummy Lemons", category: "fruits")

# Product.create!(name: "Blueberries", price: 5, details: "The best berries! Blueberries!", category: "fruits")

# Product.create!(name: "Peaches", price: 5, details: "A delicious peach", category: "fruits")

# Product.create!(name: "Pineapple", price: 5, details: "A delicious pineapple", category: "fruits")

# #eggs
# Product.create!(name: "Brown eggs", price: 5, details: "Brown eggs from chickens", category: "eggs")

# Product.create!(name: "White eggs", price: 5, details: "White eggs from chickens", category: "eggs")

# #wine
# Product.create!(name: "White wine", price: 5, details: "Deliciuos white wine", category: "wine")

# Product.create!(name: "Red wine", price: 5, details: "Deliciuos red wine", category: "wine")

# #herbs
# Product.create!(name: "Parsley", price: 5, details: "Deliciuos parsley", category: "herbs")

# Product.create!(name: "Mint", price: 5, details: "Minty mint", category: "herbs")

# Product.create!(name: "Basil", price: 5, details: "Perfect basil", category: "herbs")

# Product.create!(name: "Sage", price: 5, details: "Lucky sage", category: "herbs")

puts 'Finished!'
