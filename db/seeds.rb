# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).


puts '***** Destroying Seeds *****'
User.destroy_all
Pet.destroy_all

puts '***** Creating User *****'

user = User.create(email: 'test@test.com', password: '123456', first_name: 'First', last_name: 'User')

puts '***** 🐱‍👤Creating 30 pets *****'

pet = Pet.new(
  user_id: user.id,
  pet_type: "Cat",
  name: "Pearl",
  sex: "female",
  pedigree_number: Faker::IDNumber.valid,
  description: "Pearl is an affectionate but very shy kitten. She needs time,
  patience and a lot of affection to be conquered. Your blue eyes hypnotize anyone cat.",
  on_heat: true,
  birthday: Faker::Date.birthday,
  breed: "Angora",
  address: "Avenida da Liberdade, Lisboa"
)
pet.photo.attach(
  io: File.open(Rails.root.join("app/assets/images/cat_angora.png")),
  filename: 'pet.jpg'
)

pet = Pet.new(
  user_id: user.id,
  pet_type: "Cat",
  name: "Pucci",
  sex: "Male",
  description: "Pucci, doesn't like to expose himself. Taking pictures is not his thing!
  But it's a really fun and smart kitten. He loves to eat fresh hake and take a nap after meals",
  on_heat: false,
  birthday: Faker::Date.birthday,
  breed: "Abyssinian",
  address: "Rua da Junqueira, Lisboa"
)
pet.photo.attach(
  io: File.open(Rails.root.join("app/assets/images/cat_abyssinian.png")),
  filename: 'pet.jpg'
)

pet = Pet.new(
  user_id: user.id,
  pet_type: "Cat",
  name: "Gucci",
  sex: "Female",
  pedigree_number: Faker::IDNumber.valid,
  description: "Gucci, is vain and likes a lot of pampering.
  It has sea eyes that delight any cat. Its fur is silky and shiny.
  He loves being at the window to peek at whoever passes by.",
  on_heat: false,
  birthday: Faker::Date.birthday,
  breed: "American Bobtail",
  address: "Rua cidade de Rabat, Lisboa"
)
pet.photo.attach(
  io: File.open(Rails.root.join("app/assets/images/cat_american_bobtail.png")),
  filename: 'pet.jpg'
)

pet = Pet.new(
  user_id: user.id,
  pet_type: "Cat",
  name: "Sebastian",
  sex: "Male",
  pedigree_number: Faker::IDNumber.valid,
  description: "A natural seducer, Sebastian loves to give kisses, massage her stomach and share food.
  Is very detailed and likes to give pleasure to his partner.",
  on_heat: false,
  birthday: Faker::Date.birthday,
  breed: "Bengal",
  address: "Praça Carlos Alberto, Porto"
)
pet.photo.attach(
  io: File.open(Rails.root.join("app/assets/images/cat_bengal.png")),
  filename: 'pet.jpg'
)

pet = Pet.new(
  user_id: user.id,
  pet_type: "Cat",
  name: "Top Choc",
  sex: "Male",
  pedigree_number: Faker::IDNumber.valid,
  description: "A fantastic kitten. Don't be intimidated by being black, it's not unlucky!
  Top Chocis is calm and likes classical music.",
  on_heat: false,
  birthday: Faker::Date.birthday,
  breed: "Bombay",
  address: "Rua da Prata, Porto"
)
pet.photo.attach(
  io: File.open(Rails.root.join("app/assets/images/cat_bombay.png")),
  filename: 'pet.jpg'
)

pet = Pet.new(
  user_id: user.id,
  pet_type: "Cat",
  name: "Celine",
  sex: "Female",
  pedigree_number: Faker::IDNumber.valid,
  description: "Her eyes are sweet as honey. A fluffy and irresistible fur.
  She is a very sweet and friendly kitten. She likes to be accompanied and play with balls.",
  on_heat: false,
  birthday: Faker::Date.birthday,
  breed: "Chartreux",
  address: "Fontes Pereira de Melo, Lisboa"
)
pet.photo.attach(
  io: File.open(Rails.root.join("app/assets/images/cat_chartreux.png")),
  filename: 'pet.jpg'
)

pet = Pet.new(
  user_id: user.id,
  pet_type: "Cat",
  name: "Gina",
  sex: "Female",
  description: "Gina, is a sassy cat. Sweet from birth, she likes to be spoiled with small delicacies.
  She's addicted to beds.",
  on_heat: true,
  birthday: Faker::Date.birthday,
  breed: "European Shorthair",
  address: "Praça Marques de Pombal, Porto"
)
pet.photo.attach(
  io: File.open(Rails.root.join("app/assets/images/cat_european_shorthair.png")),
  filename: 'pet.jpg'
)

pet = Pet.new(
  user_id: user.id,
  pet_type: "Cat",
  name: "Champagne",
  sex: "Male",
  pedigree_number: Faker::IDNumber.valid,
  description: "Don't be fooled by his grumpy air. is a gentleman, able to provide moments of great fun.
  He loves having company and being in the garden by the pool on sunny days.",
  on_heat: false,
  birthday: Faker::Date.birthday,
  breed: "Exotic",
  address: "Rua dos Fanqueiros, Lisboa"
)
pet.photo.attach(
  io: File.open(Rails.root.join("app/assets/images/cat_exotic.png")),
  filename: 'pet.jpg'
)

pet = Pet.new(
  user_id: user.id,
  pet_type: "Cat",
  name: "Ruca",
  sex: "Male",
  pedigree_number: Faker::IDNumber.valid,
  description: "He prefers to sleep in the morning and enjoy the unknown at night.
  He likes adventures and meeting all kinds of kittens. is nice and is looking forward to meeting you!",
  on_heat: false,
  birthday: Faker::Date.birthday,
  breed: "Korat",
  address: "Praça da República, Porto"
)
pet.photo.attach(
  io: File.open(Rails.root.join("app/assets/images/cat_korat.png")),
  filename: 'pet.jpg'
)

pet = Pet.new(
  user_id: user.id,
  pet_type: "Cat",
  name: "Purrfection",
  sex: "Male",
  pedigree_number: Faker::IDNumber.valid,
  description: "Take one look at my eyes and tell me you don't see purrfection.
  My rising sign is Leo. I'm a hurricane of seduction, I'll make you purr all night.",
  on_heat: false,
  birthday: Faker::Date.birthday,
  breed: "Maine Coon",
  address: "Rua Miguel Bombarda, Lisboa"
)
pet.photo.attach(
  io: File.open(Rails.root.join("app/assets/images/cat_maine_coon.png")),
  filename: 'pet.jpg'
)

pet = Pet.new(
  user_id: user.id,
  pet_type: "Cat",
  name: "Ava",
  sex: "Female",
  pedigree_number: Faker::IDNumber.valid,
  description: "I love spending my days in the sun, belly up.
  I was born to be served and live in refinement. I like green-eyed blondes.",
  on_heat: false,
  birthday: Faker::Date.birthday,
  breed: "Manx",
  address: "Praça D. João I, Porto"
)
pet.photo.attach(
  io: File.open(Rails.root.join("app/assets/images/cat_manx.png")),
  filename: 'pet.jpg'
)

pet = Pet.new(
  user_id: user.id,
  pet_type: "Cat",
  name: "Lala",
  sex: "Female",
  pedigree_number: Faker::IDNumber.valid,
  description: "Hi my name is Lala, I am very careful with my nails, I spend the day sharpening them on my sofa.
  I like being at home and having routines. If you want a queen you have to earn it,
  but if you want a purr buddy just give me some catnip.",
  on_heat: false,
  birthday: Faker::Date.birthday,
  breed: "Munchkin",
  address: "Rua das Galerias de Paris, Porto"
)
pet.photo.attach(
  io: File.open(Rails.root.join("app/assets/images/cat_munchkin.png")),
  filename: 'pet.jpg'
)

pet = Pet.new(
  user_id: user.id,
  pet_type: "Cat",
  name: "Nívea",
  sex: "Female",
  pedigree_number: Faker::IDNumber.valid,
  description: "I'm a homely cat. My favorite season of the year is winter. I love watching the snow.
  I'm often mistaken for Purina's Gourmet food advertising cat.
  And by coincidence it's my favorite brand, I can't resist it.",
  on_heat: true,
  birthday: Faker::Date.birthday,
  breed: "Persian",
  address: "Rua do Salitre, Lisboa"
)
pet.photo.attach(
  io: File.open(Rails.root.join("app/assets/images/cat_persian.png")),
  filename: 'pet.jpg'
)

pet = Pet.new(
  user_id: user.id,
  pet_type: "Cat",
  name: "Kiki",
  sex: "Female",
  description: "My eyes are blue like the sky.
  I am elegant and delicate. I like teaching and I dream a lot about being a mother.
  I was the inspiration for Drake's song.",
  on_heat: false,
  birthday: Faker::Date.birthday,
  breed: "Siamese",
  address: "Rua Júlio César Machado, Lisboa"
)
pet.photo.attach(
  io: File.open(Rails.root.join("app/assets/images/cat_siamese.png")),
  filename: 'pet.jpg'
)

pet = Pet.new(
  user_id: user.id,
  pet_type: "Dog",
  name: "Grace",
  sex: "Female",
  pedigree_number: Faker::IDNumber.valid,
  description: "All fall to my Grace. I'm too sleepy. I wake up full of energy and a huge smile.
  I like to be accompanied and to invent new games. I am very excited to be joining Breed Me.",
  on_heat: false,
  birthday: Faker::Date.birthday,
  breed: "Beagle",
  address: "Rua Cassiano Branco Bairro dos Loios, Lisboa"
)
pet.photo.attach(
  io: File.open(Rails.root.join("app/assets/images/dog_beagle.png")),
  filename: 'pet.jpg'
)

pet = Pet.new(
  user_id: user.id,
  pet_type: "Dog",
  name: "Ice",
  sex: "Male",
  pedigree_number: Faker::IDNumber.valid,
  description: "I'm addicted to fashion. it's very important for me to be well dressed.
  I like to be noticed, I have charisma.",
  on_heat: false,
  birthday: Faker::Date.birthday,
  breed: "Chihuahua",
  address: "Rua Carlos Gentil Bairro do Condado, Lisboa"
)
pet.photo.attach(
  io: File.open(Rails.root.join("app/assets/images/dog_chihuahua.png")),
  filename: 'pet.jpg'
)

pet = Pet.new(
  user_id: user.id,
  pet_type: "Dog",
  name: "Jimmy",
  sex: "Male",
  pedigree_number: Faker::IDNumber.valid,
  description: "Hi, my name is Jimmy. I'm known for the color of my tongue being dark.
  When I eat, I have difficulty feeling satisfied, I always want more.
  Therefore, I force myself to exercise regularly to be in shape.",
  on_heat: false,
  birthday: Faker::Date.birthday,
  breed: "Chow Chow",
  address: "Rua Capitão-Mor Lopes Sequeira Bairro das Amendoeiras, Lisboa"
)
pet.photo.attach(
  io: File.open(Rails.root.join("app/assets/images/dog_chow_chow.png")),
  filename: 'pet.jpg'
)

pet = Pet.new(
  user_id: user.id,
  pet_type: "Dog",
  name: "Igor",
  sex: "Male",
  pedigree_number: Faker::IDNumber.valid,
  description: "I don't know where I'm going from here but I promise it won't be boring.
  I find myself adventurous and always available to help.
  I like to take care of my physical appearance and my mental health. I am very positive.",
  on_heat: false,
  birthday: Faker::Date.birthday,
  breed: "Dachshund",
  address: "Praça da Ribeira, Porto"
)
pet.photo.attach(
  io: File.open(Rails.root.join("app/assets/images/dog_dachshund.png")),
  filename: 'pet.jpg'
)

pet = Pet.new(
  user_id: user.id,
  pet_type: "Dog",
  name: "Pongo",
  sex: "Male",
  pedigree_number: Faker::IDNumber.valid,
  description: "With me it´s black and white. There is no middle ground. I try to make new friends.
  Who knows, find a love for life. I am sociable, intelligent but a little anxious.",
  on_heat: false,
  birthday: Faker::Date.birthday,
  breed: "Dalmatian",
  address: "Rua Conselheiro Jerónimo Pimentel, Braga"
)
pet.photo.attach(
  io: File.open(Rails.root.join("app/assets/images/dog_dalmatian.png")),
  filename: 'pet.jpg'
)

pet = Pet.new(
  user_id: user.id,
  pet_type: "Dog",
  name: "Bold",
  sex: "Male",
  pedigree_number: Faker::IDNumber.valid,
  description: "Bold, is known for his genuineness and directness. Enjoy outdoor activities and rules.
  He is hopeful of finding a partner to make a family.",
  on_heat: false,
  birthday: Faker::Date.birthday,
  breed: "French Bulldog",
  address: "Avenida Engenheiro Pinheiro Braga Gavião, Vila Nova de Famalicão"
)
pet.photo.attach(
  io: File.open(Rails.root.join("app/assets/images/dog_french_bulldog.png")),
  filename: 'pet.jpg'
)

pet = Pet.new(
  user_id: user.id,
  pet_type: "Dog",
  name: "Kira",
  sex: "Female",
  pedigree_number: Faker::IDNumber.valid,
  description: "Hi my dears, my name is Kira.
  I am a high competition athlete, I have won several medals all over the world.
  When I'm not training, I like to take long walks by the sea. I like the comfort of home and being accompanied.",
  on_heat: true,
  birthday: Faker::Date.birthday,
  breed: "Galgo Español",
  address: "Rua de Linhares, Matosinhos"
)
pet.photo.attach(
  io: File.open(Rails.root.join("app/assets/images/dog_galgo_español.png")),
  filename: 'pet.jpg'
)

pet = Pet.new(
  user_id: user.id,
  pet_type: "Dog",
  name: "Brutos",
  sex: "Male",
  pedigree_number: Faker::IDNumber.valid,
  description: "I work as a Police. But don't think my name is Max. My best quality is my scent. I help close a lot
  of cases. For me it is important to contribute to the development of a fairer and safer society.",
  on_heat: false,
  birthday: Faker::Date.birthday,
  breed: "German Shepherd",
  address: "Rua da Oliveira do Carmo, Porto"
)
pet.photo.attach(
  io: File.open(Rails.root.join("app/assets/images/dog_german_shepherd.png")),
  filename: 'pet.jpg'
)

pet = Pet.new(
  user_id: user.id,
  pet_type: "Dog",
  name: "Joy",
  sex: "Female",
  pedigree_number: Faker::IDNumber.valid,
  description: "Joy, are addicted to picking up sticks. It's very competitive.
  Every morning she practice run because she like to feel good physically and mentally.She is fun and sweet.",
  on_heat: false,
  birthday: Faker::Date.birthday,
  breed: "Jack Russell",
  address: "Rua Guilherme da Silva, Alhandra"
)
pet.photo.attach(
  io: File.open(Rails.root.join("app/assets/images/dog_jack_russell.png")),
  filename: 'pet.jpg'
)

pet = Pet.new(
  user_id: user.id,
  pet_type: "Dog",
  name: "Nina",
  sex: "Female",
  pedigree_number: Faker::IDNumber.valid,
  description: "I was born to steal smiles. I am passionate about life. I like to make new friends and go on adventures.
  I am protective of nature and playful. Breed Me has brought me better opportunities to find a perfect match for me.",
  on_heat: false,
  birthday: Faker::Date.birthday,
  breed: "Labrador Retriever",
  address: "Rua do Boror, Lisboa"
)
pet.photo.attach(
  io: File.open(Rails.root.join("app/assets/images/dog_labrador_retriever.png")),
  filename: 'pet.jpg'
)

pet = Pet.new(
  user_id: user.id,
  pet_type: "Dog",
  name: "Jasmin",
  sex: "Female",
  pedigree_number: Faker::IDNumber.valid,
  description: "A country girl who loves to be surrounded by flowers, more specifically sunflower.
  Blue-eyed, Jasmin manages to melt hearts with her sweet air. it's quiet and homey.",
  on_heat: false,
  birthday: Faker::Date.birthday,
  breed: "Landseer",
  address: "Rua do Lobito, Lisboa"
)
pet.photo.attach(
  io: File.open(Rails.root.join("app/assets/images/dog_landseer.png")),
  filename: 'pet.jpg'
)

pet = Pet.new(
  user_id: user.id,
  pet_type: "Dog",
  name: "Nala",
  sex: "Female",
  pedigree_number: Faker::IDNumber.valid,
  description: "Funny fact, I always fall asleep with a pink pig
  I'm interested in emotional intelligence and everything related to the mind.
  I play sports regularly and love taking naps throughout the day.",
  on_heat: false,
  birthday: Faker::Date.birthday,
  breed: "Pit Bull Terrier",
  address: "Praça dos Restauradores, Lisboa"
)
pet.photo.attach(
  io: File.open(Rails.root.join("app/assets/images/dog_pit_bull_terrier.png")),
  filename: 'pet.jpg'
)

pet = Pet.new(
  user_id: user.id,
  pet_type: "Dog",
  name: "King",
  sex: "Male",
  pedigree_number: Faker::IDNumber.valid,
  description: "I joined Breed Me because I want to find my dream match. I want to live a romance and create a legacy.
  I consider myself optimistic and romantic.",
  on_heat: false,
  birthday: Faker::Date.birthday,
  breed: "Pug",
  address: "Praça da Galiza, Porto"
)
pet.photo.attach(
  io: File.open(Rails.root.join("app/assets/images/dog_pug.png")),
  filename: 'pet.jpg'
)

pet = Pet.new(
  user_id: user.id,
  pet_type: "Dog",
  name: "Kayla",
  sex: "Female",
  pedigree_number: Faker::IDNumber.valid,
  description: "Kayla is a hurricane. It has an eye of every color, which makes it unforgettable whoever stumbles upon it.
  Is naughty to play. When it snows, she can spend hours jumping between layers of snow.",
  on_heat: false,
  birthday: Faker::Date.birthday,
  breed: "Siberian Husky",
  address: "Rua 1º de Maio, Manteigas"
)
pet.photo.attach(
  io: File.open(Rails.root.join("app/assets/images/dog_siberian_husky.png")),
  filename: 'pet.jpg'
)

pet = Pet.new(
  user_id: user.id,
  pet_type: "Dog",
  name: "Woody",
  sex: "Male",
  pedigree_number: Faker::IDNumber.valid,
  description: "Hello, my name is Woody and I live in the city.
  I like to spend weekends in the countryside where I can be closer to nature.
  I consider myself affectionate, detailed, happy and faithful.",
  on_heat: false,
  birthday: Faker::Date.birthday,
  breed: "Welsh Corgi Pembroke",
  address: "Rua do Sacramento, Lisboa"
)
pet.photo.attach(
  io: File.open(Rails.root.join("app/assets/images/dog_welsh_corgi_pembroke.png")),
  filename: 'pet.jpg'
)
pet.save!

puts '****** 🐱‍🏍Finished🎉 ******'
