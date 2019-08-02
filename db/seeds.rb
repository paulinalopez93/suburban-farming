
puts 'Cleaning database...'
ProductOrder.destroy_all
Product.destroy_all
User.destroy_all
Hub.destroy_all

puts 'Creating products & user...'

simon = User.create!(name: "Simon", email:"simon@gmail.com", password:"hola123", address: "Calle Juan de Vera 15 Madrid", created_at: "2019-07-23 09:07:56")
simon.remote_photo_url = "https://d2v9y0dukr6mq2.cloudfront.net/video/thumbnail/VGqRaYUogil0szy2p/portrait-of-black-man-on-white-background_bjceb86ve_thumbnail-full07.png"
simon.save!

alex = User.create!(name: "Alex", email:"alex@gmail.com", password:"hola123", address: "Calle de Alcala 125 Madrid")
alex.remote_photo_url = "https://i.pinimg.com/originals/0c/62/ed/0c62ed5d8b790774a54c390a34da0b2e.jpg"
alex.save!

adam = User.create!(name: "Adam", email:"adam@gmail.com", password:"hola123", address: "Calle de Lagasca 56 Madrid")
adam.remote_photo_url = "https://d2v9y0dukr6mq2.cloudfront.net/video/thumbnail/VWWAFy05eikrfulkr/videoblocks-portrait-of-different-gender-people-morphing-into-other-different-appearance-of-man-and-woman-isolated-over-white-background-facemorph-concept_bdxdo-vkf_thumbnail-full01.png"
adam.save!

adel= User.create!(name: "Adel", email:"adel@gmail.com", password:"hola123", address: "Calle de Hortaleza 100 Madrid")
adel.remote_photo_url = "https://ak0.picdn.net/shutterstock/videos/29117140/thumb/1.jpg"
adel.save!

paulina = User.create!(name: "Paulina", email:"paulina@gmail.com", password:"hola123", address: "Calle de Manuela Malasana 10 Madrid")
paulina.remote_photo_url = "https://media.istockphoto.com/videos/portrait-of-young-woman-against-white-background-video-id1057552666?s=640x640"
paulina.save!

alfredo = User.create!(name: "Alfredo", email:"alfredo@gmail.com", password:"hola123", address: "Calle de Benigno Soto 9 Madrid" )
alfredo.remote_photo_url = "https://image.freepik.com/free-photo/portrait-handsome-man-isolated-white-background_38019-394.jpg"
alfredo.save!

sofia = User.create!(name: "Sofia", email:"sofia@gmail.com", password:"hola123", address: "Calle de Ponzano 11 Madrid")
sofia.remote_photo_url = "https://ak8.picdn.net/shutterstock/videos/24954458/thumb/7.jpg"
sofia.save!

cristina = User.create!(name: "Cristina", email:"cristina@gmail.com", password:"hola123", address: "Calle Juan de Mariana 15 Madrid")
cristina.remote_photo_url = "https://backgrounddownload.com/wp-content/uploads/2018/09/white-background-portraits-6.jpg"
cristina.save!

mariana = User.create!(name: "Mariana", email:"mariana@gmail.com", password:"hola123", address: "Calle del Marques de Casa Riera 4 Madrid")
mariana.remote_photo_url = "https://image.shutterstock.com/image-photo/portrait-mature-business-woman-smile-260nw-255741205.jpg"
mariana.save!

jorge = User.create!(name: "Jorge", email:"jorge@gmail.com", password:"hola123", address: "Calle de Velarde 18 Madrid")
jorge.remote_photo_url = "http://guessthelighting.com/wp-content/uploads/2012/02/steve_jobs_albert-watson.jpg"
jorge.save!

Hub.create!(address: "Calle Juan de Mariana 15 Madrid", name: "South Hub")

Hub.create!(address: "Calle de Ruiz de Alarcon 23 Madrid", name: "North Hub")

Hub.create!(address: "Calle Serrano 100 Madrid", name: "Center Hub")



#vegetables


Product.create!(name: "Tomato", price_cents: 3, details: "Summer time means tomato time! They are complex in flavor. A marriage between sweet and acidic while at the same time fruity. The best way to serve these juicy tomatoes is to slice and serve them with fresh mozzarella, basil, extra virgin olive oil and some red pepper flakes to add a kick to the classic Caprese Salad.", category: "vegetables", user_id:paulina.id , created_at: "2019-07-29 09:07:56",  remote_photo_url: "https://images.unsplash.com/photo-1546470427-227e2f27f02c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2775&q=80")


Product.create!(name: "Broccoli", price_cents: 5, details: "Broccoli is in season year around and its harvested by hand with a crisp texture and full flavor. Broccoli can be used in many dishes such as whole grain pasta primavera, casseroles such as brown rice and broccoli casserole, or roasted with a little oil and seasonings.", category: "vegetables", user_id:alex.id, remote_photo_url:"https://images.unsplash.com/photo-1553175005-a1129d5c188c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=802&q=80")

Product.create!(name: "Corn", price_cents: 2, details: "Corn is carefully grown to be tender and bursting with flavor. We carefully select different varieties to be grown so that they are sweet and juicy.", category: "vegetables", user_id:adam.id, remote_photo_url:"https://images.unsplash.com/photo-1554402100-8d1d9f3dff80?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80")

Product.create!(name: "Mushrooms", price_cents: 2, details: "Mushrooms are very versatile and equally tasty, fresh or cooked. Use raw in salads, sautéed, breaded or as an ingredient to enrich sauces, soups, stuffing or entrées.", category: "vegetables", user_id:adel.id, remote_photo_url:"https://images.unsplash.com/photo-1504545102780-26774c1bb073?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=730&q=80")

Product.create!(name: "Carrots", price_cents: 1, details: "These tasty, ready-to-eat carrots are perfect for a warm pot of chicken noodle soup or served as a side dish to a steamy entrée. Rich in antioxidants and flavor, our carrots are an excellent on-the-go snack that’s as nutritious as it is delicious.", category: "vegetables", user_id:paulina.id, remote_photo_url:"https://images.unsplash.com/photo-1550081699-79c1c2e48a77?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80")

Product.create!(name: "Peas", price_cents: 4, details: "Peas are mildly flavored and can be served raw or cooked. Prepare traditionally as part of a stir-fry or blanch and serve cold.", category: "vegetables", user_id:alfredo.id, remote_photo_url:"https://images.unsplash.com/photo-1553460165-3628ccff14d2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1647&q=80")

Product.create!(name: "Brussel sprouts", price_cents: 5, details: "A delicious brussel sprout", category: "vegetables", user_id:sofia.id, remote_photo_url:"https://images.unsplash.com/photo-1438118907704-7718ee9a191a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80")

Product.create!(name: "Cauliflower", price_cents: 3, details: "Cauliflower has gained some popularity do to its versatility. Fresh cauliflower is perfect for tasty soups, au gratins, or a simple side entree. Wrap them in foil and throw them on the grill and call it a day. ", category: "vegetables", user_id:cristina.id, remote_photo_url:"https://images.unsplash.com/photo-1510627498534-cf7e9002facc?ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80")

Product.create!(name: "Asparagus", price_cents: 2, details: "A beautiful bunch of asparagus harvested straight from our garden. This perennial vegetable can live for as long as 20 years and produce abundantly year after year. We harvest them by hand and make sure we pick them at their most sweet and tender stage. Roast for 6 to 8 minutes and serve with your favorite protein or on top of salads and even drizzle it with your favorite sauce!", category: "vegetables", user_id:mariana.id, remote_photo_url:"https://images.unsplash.com/photo-1515471209610-dae1c92d8777?ixlib=rb-1.2.1&auto=format&fit=crop&w=766&q=80")

Product.create!(name: "Green beans", price_cents: 1, details: "Green beans are low in calories and a good source of both fiber and vitamin C. They’re a seasonal favorite and can be steamed or sautéed or blanched and served in a cold salad. Our family favorite is turning them into a tasty, healthy Asian style salad!", category: "vegetables", user_id:jorge.id, remote_photo_url:"https://images.unsplash.com/uploads/141143339879512fe9b0d/f72e2c85?ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80")

#fruits


Product.create!(name: "Bananas", price_cents: 4, details: "Bananas are rich in fibre, potassium and other vitamins and minerals.We responsibly grow our bananas and we hand pick them gently in order to keep their sweet flavor and not to bruise the bananas. They are great in smoothies, desserts, perfect with yogurt, honey and chia seeds for breakfast…the possibilities are endless.", category: "fruits", user_id:simon.id, created_at: "2019-07-25 09:07:56", remote_photo_url:"https://images.unsplash.com/photo-1557760560-170fec41d767?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80")


Product.create!(name: "Apples", price_cents: 3, details: "Apples offer a mildly sweet flavor and flora aroma. They’re great for snacking on as they are low in calories, have a high water content and offers a fair amount of vitamins A, B and C. They are perfect for us in a fruit, green or chopped salad. Add diced apples to fruit salsas and chutneys. Slice and add to burgers, paninis and crostinis. ", category: "fruits", user_id:alex.id, remote_photo_url:"https://images.unsplash.com/photo-1474564862106-1f23d10b9d72?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1668&q=80")

Product.create!(name: "Grapes", price_cents: 2, details: "Tiny green grapes", category: "fruits", user_id:adam.id, remote_photo_url:"https://images.unsplash.com/photo-1515779122185-2390ccdf060b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80")

Product.create!(name: "Strawberries", price_cents: 2, details: "Strawberries full of flavor", category: "fruits", user_id:paulina.id, remote_photo_url:"https://images.unsplash.com/photo-1543528176-61b239494933?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1653&q=80")

Product.create!(name: "Oranges", price_cents: 6, details: "Our oranges are juicy and sweet which makes them the perfect snack and adding a special tang for many recipes or simply having freshly squeezed orange juice for breakfast, lunch and dinner!", category: "fruits", user_id:paulina.id, remote_photo_url:"https://images.unsplash.com/photo-1512578000375-660f001ef96d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80")

Product.create!(name: "Watermelon", price_cents: 7, details: "Nothing screams summer like watermelon. Cut in half whichever way you like, then scoop out the seeds and slice into wedges. It’s also great for juicing.", category: "fruits", user_id:alfredo.id, remote_photo_url:"https://images.unsplash.com/photo-1504406438164-c0e042535100?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80")

Product.create!(name: "Lemons", price_cents: 1, details: "Yummy Lemons", category: "fruits", user_id:sofia.id, remote_photo_url:"https://images.unsplash.com/photo-1501621178796-25b923c8b5de?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80")

Product.create!(name: "Blueberries", price_cents: 5, details: "The best berries! Blueberries!", category: "fruits", user_id:cristina.id, remote_photo_url:"https://images.unsplash.com/photo-1502741338009-cac2772e18bc?ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80")

Product.create!(name: "Peaches", price_cents: 3, details: "A delicious peach", category: "fruits", user_id:mariana.id, remote_photo_url:"https://images.unsplash.com/photo-1521243495304-138a02be58e2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80")

Product.create!(name: "Pineapple", price_cents: 2, details: "A delicious pineapple", category: "fruits", user_id:jorge.id, remote_photo_url:"https://images.unsplash.com/photo-1478005344131-44da2ded3415?ixlib=rb-1.2.1&auto=format&fit=crop&w=2848&q=80")

#eggs

Product.create!(name: "Brown eggs", price_cents: 3, details: "Brown eggs from chickens", category: "eggs", created_at: "2019-07-30 09:07:56", user_id:simon.id, remote_photo_url:"https://images.unsplash.com/photo-1516448620398-c5f44bf9f441?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1647&q=80")

Product.create!(name: "White eggs", price_cents: 3, details: "White eggs from chickens", category: "eggs", user_id:alfredo.id, remote_photo_url:"https://images.unsplash.com/photo-1489726933853-010eb1484d1a?ixlib=rb-1.2.1&auto=format&fit=crop&w=2090&q=80")

#wine
Product.create!(name: "White wine", price_cents: 8, details: "This bright and aromatic wine offers enticing layers of lemon and lime zest, as well as lovely notes of honeydew and nectarine. On the palate, refreshing acidity mingles with a subtle undercurrent of sweet fruit that carries through to a refreshing, vibrant finish.", category: "wine", user_id:adel.id, remote_photo_url:"https://images.unsplash.com/photo-1561916542-c981c30f0cdb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=738&q=80")

Product.create!(name: "Red wine", price_cents: 13, details: "Our red wine has a signature style that is dark in color, with rich fruit and ripe, velvety tannins – as approachable in youth as in maturity. We farm Cabernet grapes in eight of Napa’s 16 sub-appellations, with diversification enabling us to make the best possible wine in a given year. Our Cabernet offers layered, lush aromas and flavors, including cocoa, cassis and ripe dark berries.", category: "wine", user_id:alex.id, remote_photo_url:"https://images.unsplash.com/photo-1546944517-4f38480ff03c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=676&q=80")

#herbs
Product.create!(name: "Parsley", price_cents: 3, details: "Parsley has a vibrant, aromatic flavour. Parsley is typically added toward the end of cooking as heat can destory its flavor. Parsley can be added to dishes with garlic to help soften the dish and alleviate any issues that may occur with bad breath.", category: "herbs", user_id:simon.id, remote_photo_url:"https://images.unsplash.com/photo-1553217420-e8f8dde808f7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1627&q=80")

Product.create!(name: "Mint", price_cents: 5, details: "Mint so refreshing that you won't know what hit you", category: "herbs", user_id:cristina.id, remote_photo_url:"https://images.unsplash.com/photo-1509727841791-40d09ad9b7fc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80")

Product.create!(name: "Basil", price_cents: 6, details: "Fresh basil has an initial subtle peppery flavour. The taste then evolves into a slightly sweet, aromatic flavour.
When cooking with basil it should be added at the end of cooking. Heat removes the flavour and if cooked for too long can result in bitterness. Basil pairs exquisitely with lemon, tomato and garlic", category: "herbs", user_id:paulina.id, remote_photo_url:"https://images.unsplash.com/photo-1527964105263-1ac6265a569f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80")



puts 'Finished!'
