puts "🌱 Seeding spices..."

Genre.create(category: "Action-Adventure")
Genre.create(category: "Cooking")
Genre.create(category: "Drama")
Genre.create(category: "Fantasy")
Genre.create(category: "Horror")
Genre.create(category: "Science Fiction")
Genre.create(category: "Sitcom")
Genre.create(category: "Telenovela")
Genre.create(category: "True Crime")

Show.create(title: "Star Trek: The Original Series", seasons: 3, number_of_episodes: 79, original_language: "English", ongoing: "F", genre_id: 6 )
Show.create(title: "Stargate SG-1", seasons: 10, number_of_episodes: 214, original_language: "English", ongoing: "F", genre_id: 6 )
Show.create(title: "Battlestar Galactica", seasons: 4, number_of_episodes: 76, original_language: "English", ongoing: "F", genre_id: 6 )
Show.create(title: "The Mandalorian", seasons: 3, number_of_episodes: 24, original_language: "English", ongoing: "T", genre_id: 6 )
Show.create(title: "The Great British Bake Off", seasons: 13, number_of_episodes: 13, original_language: "English", ongoing: "T", genre_id: 2 )

puts "✅ Done seeding!"
