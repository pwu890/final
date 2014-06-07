City.delete_all
evan = City.create("name" => "Evanston", "state" => "IL")
chi = City.create("name" => "Chicago", "state" => "IL")

Genre.delete_all
amer = Genre.create("name" => "American")
fren = Genre.create("name" => "French")
asia = Genre.create("name" => "Asian")
mexi = Genre.create("name" => "Mexican")
ital = Genre.create("name" => "Italian")
span = Genre.create("name" => "Spanish")
medi = Genre.create("name" => "Mediterranean")

Restaurant.delete_all
cozy_noodle = Restaurant.create("name" => "Cozy Noodle", "city_id" => evan.id, "state" => "IL", "genre_id" => asia.id, "photo_url" => "cozy.jpg")
found = Restaurant.create("name" => "Found", "city_id" => evan.id, "state" => "IL", "genre_id" => amer.id, "photo_url" => "found.jpg")
le_petit_paris = Restaurant.create("name" => "Le Petit Paris", "city_id" => chi.id, "state" => "IL", "genre_id" => fren.id, "photo_url" => "paris.jpg")
farmhouse = Restaurant.create("name" => "Farmhouse", "city_id" => evan.id, "state" => "IL", "genre_id" => amer.id, "photo_url" => "farmhouse.jpg")

User.delete_all
phoebe = User.create("username" => "instantphoebe", "password" => "clomps", "name" => "Phoebe Wu")
tim = User.create("username" => "tim", "password" => "othy", "name" => "Tim Noce")

Review.delete_all
Review.create("user_id" => phoebe["id"], "rest_id" => cozy_noodle["id"], "rest_rating" => 4, "rest_content" => "Good ambiance.", "food_rating" => 3, "food_content" => "A good staple.")
Review.create("user_id" => phoebe["id"], "rest_id" => farmhouse["id"], "rest_rating" => 4, "rest_content" => "Nice rustic vibe.", "food_rating" => 4, "food_content" => "Farm to table trendy.")
