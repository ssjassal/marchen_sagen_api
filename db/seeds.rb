# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Story.create([
   {
      title: Faker::HarryPotter.quote,
      category: Faker::StarWars.planet,
      content:Faker::Lorem.paragraph(2, false, 4),
      author: Faker::Pokemon.name,
      description: Faker::ChuckNorris.fact,
      date: Faker::Date.between(2.days.ago, Date.today),
      img: Faker::LoremPixel.image
   },
   {
      title: Faker::HarryPotter.quote,
      category: Faker::StarWars.planet,
      content:Faker::Lorem.paragraph(2, false, 4),
      author: Faker::Pokemon.name,
      description: Faker::ChuckNorris.fact,
      date: Faker::Date.between(2.days.ago, Date.today),
      img: Faker::LoremPixel.image
   },
   {
      title: Faker::HarryPotter.quote,
      category: Faker::StarWars.planet,
      content:Faker::Lorem.paragraph(2, false, 4),
      author: Faker::Pokemon.name,
      description: Faker::ChuckNorris.fact,
      date: Faker::Date.between(2.days.ago, Date.today),
      img: Faker::LoremPixel.image
   },
   {
      title: Faker::HarryPotter.quote,
      category: Faker::StarWars.planet,
      content:Faker::Lorem.paragraph(2, false, 4),
      author: Faker::Pokemon.name,
      description: Faker::ChuckNorris.fact,
      date: Faker::Date.between(2.days.ago, Date.today),
      img: Faker::LoremPixel.image
   },
   {
      title: Faker::HarryPotter.quote,
      category: Faker::StarWars.planet,
      content:Faker::Lorem.paragraph(2, false, 4),
      author: Faker::Pokemon.name,
      description: Faker::ChuckNorris.fact,
      date: Faker::Date.between(2.days.ago, Date.today),
      img: Faker::LoremPixel.image
   },
   {
      title: Faker::HarryPotter.quote,
      category: Faker::StarWars.planet,
      content:Faker::Lorem.paragraph(2, false, 4),
      author: Faker::Pokemon.name,
      description: Faker::ChuckNorris.fact,
      date: Faker::Date.between(2.days.ago, Date.today),
      img: Faker::LoremPixel.image
   },
   {
      title: Faker::HarryPotter.quote,
      category: Faker::StarWars.planet,
      content:Faker::Lorem.paragraph(2, false, 4),
      author: Faker::Pokemon.name,
      description: Faker::ChuckNorris.fact,
      date: Faker::Date.between(2.days.ago, Date.today),
      img: Faker::LoremPixel.image
   },
   {
      title: Faker::HarryPotter.quote,
      category: Faker::StarWars.planet,
      content:Faker::Lorem.paragraph(2, false, 4),
      author: Faker::Pokemon.name,
      description: Faker::ChuckNorris.fact,
      date: Faker::Date.between(2.days.ago, Date.today),
      img: Faker::LoremPixel.image
   },
   {
      title: Faker::HarryPotter.quote,
      category: Faker::StarWars.planet,
      content:Faker::Lorem.paragraph(2, false, 4),
      author: Faker::Pokemon.name,
      description: Faker::ChuckNorris.fact,
      date: Faker::Date.between(2.days.ago, Date.today),
      img: Faker::LoremPixel.image
   },
   {
      title: Faker::HarryPotter.quote,
      category: Faker::StarWars.planet,
      content:Faker::Lorem.paragraph(2, false, 4),
      author: Faker::Pokemon.name,
      description: Faker::ChuckNorris.fact,
      date: Faker::Date.between(2.days.ago, Date.today),
      img: Faker::LoremPixel.image
   }
])
Storyteller.create([
   {
      name:Faker::Name.name,
      email:Faker::Internet.email,
      img:Faker::LoremPixel.image,
      username:FFaker::DragonBall.character,
      password:Faker::Internet.password
   },
   {
      name:Faker::Name.name,
      email:Faker::Internet.email,
      img:Faker::LoremPixel.image,
      username:Faker::DragonBall.character,
      password:Faker::Internet.password
   },
   {
      name:Faker::Name.name,
      email:Faker::Internet.email,
      img:Faker::LoremPixel.image,
      username:Faker::DragonBall.character,
      password:Faker::Internet.password
   },
   {
      name:Faker::Name.name,
      email:Faker::Internet.email,
      img:Faker::LoremPixel.image,
      username:Faker::DragonBall.character,
      password:Faker::Internet.password
   },
   {
      name:Faker::Name.name,
      email:Faker::Internet.email,
      img:Faker::LoremPixel.image,
      username:Faker::DragonBall.character,
      password:Faker::Internet.password
   }
])
Snippet.create([
   {
      storyteller_id: 2,
      story_id: 4,
      snip: Faker::Lorem.paragraph(2, false, 3)
   },
   {
      storyteller_id: 4,
      story_id: 2,
      snip: Faker::Lorem.paragraph(2, false, 5)
   },
   {
      storyteller_id: 1,
      story_id: 10,
      snip: Faker::Lorem.paragraph(2, false, 2)
   },
   {
      storyteller_id: 3,
      story_id: 6,
      snip: Faker::Lorem.paragraph(2, false, 7)
   },
   {
      storyteller_id: 5,
      story_id: 8,
      snip: Faker::Lorem.paragraph(2, false, 10)
   },
   {
      storyteller_id: 2,
      story_id: 4,
      snip: Faker::Lorem.paragraph(2, false, 8)
   },
   {
      storyteller_id: 3,
      story_id: 9,
      snip: Faker::Lorem.paragraph(2, false, 3)
   }
])
