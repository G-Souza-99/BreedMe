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
    patience and a lot of affection to be conquered. Your blue eyes hypnotize anyone cat!",
    on_heat: true,
    birthday: Faker::Date.birthday,
    breed: "Angora",
    address: "Avenida da Liberdade, Lisboa",
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
    address: "Rua da Junqueira, Lisboa",
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
    address: "Rua cidade de Rabat, Lisboa",
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
    description: "Sebastian, is a natural seducer! He loves to give kisses, massage her stomach and share food.
    Is very detailed and likes to give pleasure to his partner.",
    on_heat: false,
    birthday: Faker::Date.birthday,
    breed: "Bengal",
    address: "Praça Carlos Alberto, Porto",
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
    description: "A fantastic kitten. Don't be intimidated by being black, it's not unlucky!
    Top Chocis is calm and likes classical music.",
    on_heat: false,
    birthday: Faker::Date.birthday,
    breed: "Bombay",
    address: "Rua da Prata, Porto",
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
    description: "Her eyes are sweet as honey. A fluffy and irresistible fur.
    She is a very sweet and friendly kitten. She likes to be accompanied and play with balls.",
    on_heat: false,
    birthday: Faker::Date.birthday,
    breed: "Chartreux",
    address: "Fontes Pereira de Melo, Lisboa",
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
    description: "Gina, is a sassy cat. Sweet from birth, she likes to be spoiled with small delicacies. She's addicted to beds.",
    on_heat: true,
    birthday: Faker::Date.birthday,
    breed: "European Shorthair",
    address: "Praça Marques de Pombal, Porto",
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
    description: "Don't be fooled by his grumpy air. is a gentleman, able to provide moments of great fun.
    He loves having company and being in the garden by the pool on sunny days.",
    on_heat: false,
    birthday: Faker::Date.birthday,
    breed: "Exotic",
    address: "Rua dos Fanqueiros, Lisboa",
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
    description: "He prefers to sleep in the morning and enjoy the unknown at night.
    He likes adventures and meeting all kinds of kittens. is nice and is looking forward to meeting you!",
    on_heat: false,
    birthday: Faker::Date.birthday,
    breed: "Korat",
    address: "Praça da República, Porto",
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
    description: "Take one look at my eyes and tell me you don't see purrfection.
    My rising sign is Leo. I'm a hurricane of seduction, I'll make you purr all night.",
    on_heat: false,
    birthday: Faker::Date.birthday,
    breed: "Maine Coon",
    address: "Rua Miguel Bombarda, Lisboa",
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
    description: "I love spending my days in the sun, belly up.
    I was born to be served and live in refinement. I like green-eyed blondes.",
    on_heat: false,
    birthday: Faker::Date.birthday,
    breed: "Manx",
    address: "Praça D. João I, Porto",
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
    description: "Hi my name is Lala, I am very careful with my nails, I spend the day sharpening them on my sofa.
    I like being at home and having routines. If you want a queen you have to earn it,
    but if you want a purr buddy just give me some catnip.",
    on_heat: false,
    birthday: Faker::Date.birthday,
    breed: "Munchkin",
    address: "Rua das Galerias de Paris, Porto",
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
    description: "I'm a homely cat. My favorite season of the year is winter. I love watching the snow.
    I'm often mistaken for Purina's Gourmet food advertising cat.
    And by coincidence it's my favorite brand, I can't resist it.",
    on_heat: true,
    birthday: Faker::Date.birthday,
    breed: "Persian",
    address: "Rua do Salitre, Lisboa",
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
    I am elegant and delicate. I like teaching and I dream a lot about being a mother. I was the inspiration for Drake's song.",
    on_heat: false,
    birthday: Faker::Date.birthday,
    breed: "Siamese",
    address: "Rua Júlio César Machado, Lisboa",
  pet.photo.attach(
    io: File.open(Rails.root.join("app/assets/images/cat_siamese.png")),
    filename: 'pet.jpg'
  )
  pet.save!

puts '****** 🐱‍🏍Finished🎉 ******'
