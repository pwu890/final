Restaurant.delete_all
cozy_noodle = Restaurant.create("name" => "Cozy Noodle", "city_id" => "evan.id", "state" => "IL", "genre_id" => "asia.id", "photo_url" => "http://media-cdn.tripadvisor.com/media/photo-s/03/34/39/a4/cozy-noodle-rice.jpg")
found = Restaurant.create("name" => "Found", "city_id" => "evan.id", "state" => "IL", "genre_id" => "amer.id", "photo_url" => "http://www.foundkitchen.com/wp-content/uploads/2013/03/chicagomag_video_poster.jpg")
le_petit_paris = Restaurant.create("name" => "Le Petit Paris", "city_id" => "chi.id", "state" => "IL", "genre_id" => "fren.id", "photo_url" => "http://pics3.city-data.com/businesses/p/0/2/1/4/5500214.JPG")
farmhouse = Restaurant.create("name" => "Farmhouse", "city_id" => "evan.id", "state" => "IL", "genre_id" => "amer.id", "photo_url" => "http://cdn.cstatic.net/images/gridfs/51deeacff92ea15e23026f69/9264102634_036f1c2c2c_b.jpg")

City.delete_all
evan = City.create("name" => "Evanston", "state" => "IL")
chi = City.create("name" => "Chicago", "state" => "IL")

Genre.delete_all
amer = Genre.create("name" => "American")
fren = Genre.create("name" => "French")
asia = Genre.create("name" => "Asian")

User.delete_all
phoebe = User.create("username" => "instantphoebe", "password" => "clomps", "name" => "Phoebe Wu")
tim = User.create("username" => "tim", "password" => "othy", "name" => "Tim Noce")

Review.delete_all
Review.create("user_id" => phoebe["id"], "rest_id" => cozy_noodle["id"], "rating" => 3, "content" => "Satisfying, but salty food.")
Review.create("user_id" => phoebe["id"], "rest_id" => farmhouse["id"], "rating" => 4, "content" => "Tasty, but expensive.")
