puts "🌱 Seeding spices..."

Genre.create(name: "Action")
Genre.create(name: "Cooking")
Genre.create(name: "Drama")
Genre.create(name: "Fantasy")
Genre.create(name: "Horror")
Genre.create(name: "Science Fiction")
Genre.create(name: "Telenovela")

Show.create(title: "Star Trek: The Original Series", seasons: 3, episodes: 79, language: "English", ongoing: "F", genre_id: 6 )
Show.create(title: "Stargate SG-1", seasons: 10, episodes: 214, language: "English", ongoing: "F", genre_id: 6 )
Show.create(title: "Battlestar Galactica", seasons: 4, episodes: 76, language: "English", ongoing: "F", genre_id: 6 )
Show.create(title: "The Mandalorian", seasons: 3, episodes: 24, language: "English", ongoing: "T", genre_id: 6 )
Show.create(title: "The Great British Bake Off", seasons: 13, episodes: 13, language: "English", ongoing: "T", genre_id: 2 )
Show.create(title: "Casa de Las Flores", seasons: 3, episodes: 34, language: "Spanish", ongoing: "F", genre_id: 7 )


puts "✅ Done seeding!"
