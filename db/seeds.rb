puts 'Cleaning database...'
ProductOrder.destroy_all
Product.destroy_all
User.destroy_all


puts 'Creating products & user...'

simon = User.create!(email:"simon@gmail.com", password:"hola123", id:"132")

#vegetables

Product.create!(name: "Tomato", price: 3, details: "A delicious red tomato", category: "vegetables", user_id:simon.id, remote_photo_url: "https://images.unsplash.com/photo-1518977822534-7049a61ee0c2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80")

Product.create!(name: "Broccoli", price: 5, details: "A delicious piece of broccoli", category: "vegetables", user_id:simon.id, remote_photo_url:"https://images.unsplash.com/photo-1459411621453-7b03977f4bfc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=818&q=80")

Product.create!(name: "Corn", price: 2, details: "Yummy corn", category: "vegetables", user_id:simon.id, remote_photo_url:"https://images.unsplash.com/photo-1511817354854-e361703ac368?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1047&q=80")

Product.create!(name: "Mushrooms", price: 2, details: "Fun mushrooms", category: "vegetables", user_id:simon.id, remote_photo_url:"https://images.unsplash.com/photo-1512595765784-5ebad80772a3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60")

Product.create!(name: "Carrots", price: 1, details: "A delicious orange carrot", category: "vegetables", user_id:simon.id, remote_photo_url:"https://images.unsplash.com/photo-1551193270-975ab3ad07e9?ixlib=rb-1.2.1&auto=format&fit=crop&w=700&q=80")

Product.create!(name: "Peas", price: 4, details: "Delicious tiny peas", category: "vegetables", user_id:simon.id, remote_photo_url:"https://images.unsplash.com/photo-1563289469-f4b5ccd72e48?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60")

Product.create!(name: "Brussels sprouts", price: 5, details: "A delicious brussel sprout", category: "vegetables", user_id:simon.id, remote_photo_url:"https://images.unsplash.com/photo-1438118907704-7718ee9a191a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60")

Product.create!(name: "Cauliflower", price: 3, details: "A delicious cauliflower", category: "vegetables", user_id:simon.id, remote_photo_url:"https://images.unsplash.com/photo-1510627498534-cf7e9002facc?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60")

Product.create!(name: "Asparagus", price: 2, details: "Yummy Asparagus", category: "vegetables", user_id:simon.id, remote_photo_url:"https://images.unsplash.com/photo-1526678114169-b276d04ee180?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60")

Product.create!(name: "Green beans", price: 1, details: "Tiny green beans", category: "vegetables", user_id:simon.id, remote_photo_url:"https://images.unsplash.com/photo-1424593463432-4104fa2c015a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60")

#fruits

Product.create!(name: "Bananas", price: 4, details: "A delicious yellow banana", category: "fruits", user_id:simon.id, remote_photo_url:"https://images.unsplash.com/photo-1543218024-57a70143c369?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60")

Product.create!(name: "Apples", price: 3, details: "A delicious red apple", category: "fruits", user_id:simon.id, remote_photo_url:"https://images.unsplash.com/photo-1514894884401-c4be521f04ef?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60")

Product.create!(name: "Grapes", price: 2, details: "Tiny green grapes", category: "fruits", user_id:simon.id, remote_photo_url:"https://images.unsplash.com/photo-1423483641154-5411ec9c0ddf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60")

Product.create!(name: "Strawberries", price: 2, details: "Strawberries full of flavor", category: "fruits", user_id:simon.id, remote_photo_url:"https://images.unsplash.com/photo-1498663634537-fe747289b8a3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60")

Product.create!(name: "Oranges", price: 6, details: "A delicious orange orange", category: "fruits", user_id:simon.id, remote_photo_url:"https://images.unsplash.com/photo-1549888834-3ec93abae044?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60")

Product.create!(name: "Watermelon", price: 7, details: "A refreshing watermelon", category: "fruits", user_id:simon.id, remote_photo_url:"https://images.unsplash.com/photo-1515023115689-589c33041d3c?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60")

Product.create!(name: "Lemons", price: 1, details: "Yummy Lemons", category: "fruits", user_id:simon.id, remote_photo_url:"https://images.unsplash.com/photo-1432457990754-c8b5f21448de?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60")

Product.create!(name: "Blueberries", price: 5, details: "The best berries! Blueberries!", category: "fruits", user_id:simon.id, remote_photo_url:"https://images.unsplash.com/photo-1470072768013-bf9532016c10?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60")

Product.create!(name: "Peaches", price: 3, details: "A delicious peach", category: "fruits", user_id:simon.id, remote_photo_url:"https://images.unsplash.com/photo-1549571448-a8a53adbbbac?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60")

Product.create!(name: "Pineapple", price: 2, details: "A delicious pineapple", category: "fruits", user_id:simon.id, remote_photo_url:"https://images.unsplash.com/photo-1553505349-badf7108ec49?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60")

#eggs
Product.create!(name: "Brown eggs", price: 3, details: "Brown eggs from chickens", category: "eggs", user_id:simon.id, remote_photo_url:"https://images.unsplash.com/photo-1529570634977-ec042420117b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60")

Product.create!(name: "White eggs", price: 3, details: "White eggs from chickens", category: "eggs", user_id:simon.id, remote_photo_url:"https://images.unsplash.com/photo-1525671661040-b38bb04d4968?ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80")

#wine
Product.create!(name: "White wine", price: 8, details: "Deliciuos white wine", category: "wine", user_id:simon.id, remote_photo_url:"https://images.unsplash.com/photo-1508471608746-b7f6b8a5b0b0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60")

Product.create!(name: "Red wine", price: 13, details: "Deliciuos red wine", category: "wine", user_id:simon.id, remote_photo_url:"https://images.unsplash.com/photo-1544776527-68e63addedf7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60")

#herbs
Product.create!(name: "Parsley", price: 3, details: "Deliciuos parsley", category: "herbs", user_id:simon.id, remote_photo_url:"https://images.unsplash.com/photo-1528796940112-4979b4a98424?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60")

Product.create!(name: "Mint", price: 5, details: "Minty mint", category: "herbs", user_id:simon.id, remote_photo_url:"https://images.unsplash.com/photo-1517135399940-2855f5be7c4b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60")

Product.create!(name: "Basil", price: 6, details: "Perfect basil", category: "herbs", user_id:simon.id, remote_photo_url:"https://images.unsplash.com/photo-1536777206078-5e694d16c678?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60")



puts 'Finished!'
