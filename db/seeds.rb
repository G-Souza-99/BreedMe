# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

puts '***** Destroying Seeds 💣 *****'
Pet.destroy_all
Chatroom.destroy_all
Message.destroy_all
User.destroy_all

puts '***** Creating Cátia 💕, Gabriel 🦄 & Inês 🖤 *****'

catia = User.create(email: 'catia@breedme.com', password: '123456', first_name: 'Cátia', last_name: 'Falagueira')
catia.photo.attach(
  io: File.open(Rails.root.join("app/assets/images/catia.png")),
  filename: 'catia'
)
gabriel = User.create(email: 'gabriel@breedme.com', password: '123456', first_name: 'Gabriel', last_name: 'Souza')
gabriel.photo.attach(
  io: File.open(Rails.root.join("app/assets/images/gabriel.jpeg")),
  filename: 'gabriel'
)
ines = User.create(email: 'ines@breedme.com', password: '123456', first_name: 'Inês', last_name: 'Louro')
ines.photo.attach(
  io: File.open(Rails.root.join("app/assets/images/ineslouro.jpeg")),
  filename: 'ines'
)

puts '***** Creating 10 Users 👨🏽👩🏼‍💼 *****'

female_names = %w[Kate Sarah Maggie Susan Crista]
male_names = %w[Francis Peter Michael John Carlos]
last_names = %w[Mayweather Smith Taylor Evens Wilson Brown Jones Williams Floyd Garcia]

5.times do
  user_female = User.create(
    first_name: "#{female_names.sample}",
    last_name: "#{last_names.sample}",
    email: Faker::Internet.email,
    password: '123456'
  )
  user_female.photo.attach(
    io: File.open(Rails.root.join("app/assets/images/avatars/female#{rand(1..5)}.png")),
    filename: 'female'
  )
end

5.times do
  user_male = User.create(
    first_name: "#{male_names.sample}",
    last_name: "#{last_names.sample}",
    email: Faker::Internet.email,
    password: '123456'
  )
  user_male.photo.attach(
    io: File.open(Rails.root.join("app/assets/images/avatars/male#{rand(1..5)}.png")),
    filename: 'male'
  )
end

puts '***** Creating 29 pets 🐱🐶 *****'

pet1 = Pet.create(
  user_id: User.all.sample.id,
  pet_type: "cat",
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
pet1.photo.attach(
  io: File.open(Rails.root.join("app/assets/images/cats/cat_angora.png")),
  filename: 'cat'
)
pet1.save

pet2 = Pet.create(
  user_id: User.all.sample.id,
  pet_type: "cat",
  name: "Pucci",
  sex: "male",
  description: "Pucci, doesn't like to expose himself. Taking pictures is not his thing!
  But it's a really fun and smart kitten. He loves to eat fresh hake and take a nap after meals",
  birthday: Faker::Date.birthday,
  breed: "Abyssinian",
  address: "Rua da Junqueira, Lisboa"
)
pet2.photo.attach(
  io: File.open(Rails.root.join("app/assets/images/cats/cat_abyssinian.png")),
  filename: 'cat'
)
pet2.save

pet3 = Pet.create(
  user_id: User.all.sample.id,
  pet_type: "cat",
  name: "Gucci",
  sex: "female",
  pedigree_number: Faker::IDNumber.valid,
  description: "Gucci, is vain and likes a lot of pampering.
  It has sea eyes that delight any cat. Its fur is silky and shiny.
  He loves being at the window to peek at whoever passes by.",
  on_heat: false,
  birthday: Faker::Date.birthday,
  breed: "American Bobtail",
  address: "Rua cidade de Rabat, Lisboa"
)
pet3.photo.attach(
  io: File.open(Rails.root.join("app/assets/images/cats/cat_american_bobtail.png")),
  filename: 'cat'
)
pet3.save

pet4 = Pet.create(
  user_id: User.all.sample.id,
  pet_type: "cat",
  name: "Sebastian",
  sex: "male",
  description: "A natural seducer, Sebastian loves to give kisses, massage her stomach and share food.
  Is very detailed and likes to give pleasure to his partner.",
  birthday: Faker::Date.birthday,
  breed: "Bengal",
  address: "Praça Carlos Alberto, Porto"
)
pet4.photo.attach(
  io: File.open(Rails.root.join("app/assets/images/cats/cat_bengal.png")),
  filename: 'cat'
)
pet4.save

pet5 = Pet.create(
  user_id: User.all.sample.id,
  pet_type: "cat",
  name: "Top Choc",
  sex: "male",
  description: "A fantastic kitten. Don't be intimidated by being black, it's not unlucky!
  Top Chocis is calm and likes classical music.",
  birthday: Faker::Date.birthday,
  breed: "Bombay",
  address: "Rua da Prata, Porto"
)
pet5.photo.attach(
  io: File.open(Rails.root.join("app/assets/images/cats/cat_bombay.png")),
  filename: 'cat'
)
pet5.save

pet6 = Pet.create(
  user_id: User.all.sample.id,
  pet_type: "cat",
  name: "Celine",
  sex: "female",
  pedigree_number: Faker::IDNumber.valid,
  description: "Her eyes are sweet as honey. A fluffy and irresistible fur.
  She is a very sweet and friendly kitten. She likes to be accompanied and play with balls.",
  on_heat: false,
  birthday: Faker::Date.birthday,
  breed: "Chartreux",
  address: "Fontes Pereira de Melo, Lisboa"
)
pet6.photo.attach(
  io: File.open(Rails.root.join("app/assets/images/cats/cat_chartreux.png")),
  filename: 'cat'
)
pet6.save

pet7 = Pet.create(
  user_id: User.all.sample.id,
  pet_type: "cat",
  name: "Gina",
  sex: "female",
  description: "Gina, is a sassy cat. Sweet from birth, she likes to be spoiled with small delicacies.
  She's addicted to beds.",
  on_heat: true,
  birthday: Faker::Date.birthday,
  breed: "European Shorthair",
  address: "Praça Marques de Pombal, Porto"
)
pet7.photo.attach(
  io: File.open(Rails.root.join("app/assets/images/cats/cat_european_shorthair.png")),
  filename: 'cat'
)
pet7.save

pet8 = Pet.create(
  user_id: User.all.sample.id,
  pet_type: "cat",
  name: "Champagne",
  sex: "male",
  description: "Don't be fooled by his grumpy air. is a gentleman, able to provide moments of great fun.
  He loves having company and being in the garden by the pool on sunny days.",
  birthday: Faker::Date.birthday,
  breed: "Exotic",
  address: "Rua dos Fanqueiros, Lisboa"
)
pet8.photo.attach(
  io: File.open(Rails.root.join("app/assets/images/cats/cat_exotic.png")),
  filename: 'cat'
)
pet8.save

pet9 = Pet.create(
  user_id: User.all.sample.id,
  pet_type: "cat",
  name: "Ruca",
  sex: "male",
  pedigree_number: Faker::IDNumber.valid,
  description: "He prefers to sleep in the morning and enjoy the unknown at night.
  He likes adventures and meeting all kinds of kittens. is nice and is looking forward to meeting you!",
  birthday: Faker::Date.birthday,
  breed: "Korat",
  address: "Praça da República, Porto"
)
pet9.photo.attach(
  io: File.open(Rails.root.join("app/assets/images/cats/cat_korat.png")),
  filename: 'cat'
)
pet9.save

pet10 = Pet.create(
  user_id: User.all.sample.id,
  pet_type: "cat",
  name: "Purrfection",
  sex: "male",
  pedigree_number: Faker::IDNumber.valid,
  description: "Take one look at my eyes and tell me you don't see purrfection.
  My rising sign is Leo. I'm a hurricane of seduction, I'll make you purr all night.",
  birthday: Faker::Date.birthday,
  breed: "Maine Coon",
  address: "Rua Miguel Bombarda, Lisboa"
)
pet10.photo.attach(
  io: File.open(Rails.root.join("app/assets/images/cats/cat_maine_coon.png")),
  filename: 'cat'
)
pet10.save

pet11 = Pet.create(
  user_id: User.all.sample.id,
  pet_type: "cat",
  name: "Ava",
  sex: "female",
  description: "I love spending my days in the sun, belly up.
  I was born to be served and live in refinement. I like green-eyed blondes.",
  on_heat: false,
  birthday: Faker::Date.birthday,
  breed: "Manx",
  address: "Praça D. João I, Porto"
)
pet11.photo.attach(
  io: File.open(Rails.root.join("app/assets/images/cats/cat_manx.png")),
  filename: 'cat'
)
pet11.save

pet12 = Pet.create(
  user_id: User.all.sample.id,
  pet_type: "cat",
  name: "Lala",
  sex: "female",
  pedigree_number: Faker::IDNumber.valid,
  description: "Hi my name is Lala, I am very careful with my nails, I spend the day sharpening them on my sofa.
  I like being at home and having routines. If you want a queen you have to earn it,
  but if you want a purr buddy just give me some catnip.",
  on_heat: false,
  birthday: Faker::Date.birthday,
  breed: "Munchkin",
  address: "Rua das Galerias de Paris, Porto"
)
pet12.photo.attach(
  io: File.open(Rails.root.join("app/assets/images/cats/cat_munchkin.png")),
  filename: 'cat'
)
pet12.save

pet13 = Pet.create(
  user_id: User.all.sample.id,
  pet_type: "cat",
  name: "Nívea",
  sex: "female",
  pedigree_number: Faker::IDNumber.valid,
  description: "I'm a homely cat. My favorite season of the year is winter. I love watching the snow.
  I'm often mistaken for Purina's Gourmet food advertising cat.
  And by coincidence it's my favorite brand, I can't resist it.",
  on_heat: true,
  birthday: Faker::Date.birthday,
  breed: "Persian",
  address: "Rua do Salitre, Lisboa"
)
pet13.photo.attach(
  io: File.open(Rails.root.join("app/assets/images/cats/cat_persian.png")),
  filename: 'cat'
)
pet13.save

pet14 = Pet.create(
  user_id: User.all.sample.id,
  pet_type: "cat",
  name: "Kiki",
  sex: "female",
  description: "My eyes are blue like the sky.
  I am elegant and delicate. I like teaching and I dream a lot about being a mother.
  I was the inspiration for Drake's song.",
  on_heat: false,
  birthday: Faker::Date.birthday,
  breed: "Siamese",
  address: "Rua Júlio César Machado, Lisboa"
)
pet14.photo.attach(
  io: File.open(Rails.root.join("app/assets/images/cats/cat_siamese.png")),
  filename: 'cat'
)
pet14.save

pet15 = Pet.create(
  user_id: User.all.sample.id,
  pet_type: "dog",
  name: "Grace",
  sex: "female",
  pedigree_number: Faker::IDNumber.valid,
  description: "All fall to my Grace. I'm too sleepy. I wake up full of energy and a huge smile.
  I like to be accompanied and to invent new games. I am very excited to be joining Breed Me.",
  on_heat: false,
  birthday: Faker::Date.birthday,
  breed: "Beagle",
  address: "Rua Cassiano Branco Bairro dos Loios, Lisboa"
)
pet15.photo.attach(
  io: File.open(Rails.root.join("app/assets/images/dogs/dog_beagle.png")),
  filename: 'dog'
)
pet15.save

pet16 = Pet.create(
  user_id: User.all.sample.id,
  pet_type: "dog",
  name: "Ice",
  sex: "male",
  description: "I'm addicted to fashion. it's very important for me to be well dressed.
  I like to be noticed, I have charisma.",
  birthday: Faker::Date.birthday,
  breed: "Chihuahua",
  address: "Rua Carlos Gentil Bairro do Condado, Lisboa"
)
pet16.photo.attach(
  io: File.open(Rails.root.join("app/assets/images/dogs/dog_chihuahua.png")),
  filename: 'dog'
)
pet16.save

pet17 = Pet.create(
  user_id: User.all.sample.id,
  pet_type: "dog",
  name: "Jimmy",
  sex: "male",
  description: "Hi, my name is Jimmy. I'm known for the color of my tongue being dark.
  When I eat, I have difficulty feeling satisfied, I always want more.
  Therefore, I force myself to exercise regularly to be in shape.",
  birthday: Faker::Date.birthday,
  breed: "Chow Chow",
  address: "Rua Capitão-Mor Lopes Sequeira Bairro das Amendoeiras, Lisboa"
)
pet17.photo.attach(
  io: File.open(Rails.root.join("app/assets/images/dogs/dog_chow_chow.png")),
  filename: 'dog'
)
pet17.save

pet18 = Pet.create(
  user_id: User.all.sample.id,
  pet_type: "dog",
  name: "Igor",
  sex: "male",
  pedigree_number: Faker::IDNumber.valid,
  description: "I don't know where I'm going from here but I promise it won't be boring.
  I find myself adventurous and always available to help.
  I like to take care of my physical appearance and my mental health. I am very positive.",
  birthday: Faker::Date.birthday,
  breed: "Dachshund",
  address: "Praça da Ribeira, Porto"
)
pet18.photo.attach(
  io: File.open(Rails.root.join("app/assets/images/dogs/dog_dachshund.png")),
  filename: 'dog'
)
pet18.save

pet19 = Pet.create(
  user_id: User.all.sample.id,
  pet_type: "dog",
  name: "Pongo",
  sex: "male",
  pedigree_number: Faker::IDNumber.valid,
  description: "With me it´s black and white. There is no middle ground. I try to make new friends.
  Who knows, find a love for life. I am sociable, intelligent but a little anxious.",
  birthday: Faker::Date.birthday,
  breed: "Dalmatian",
  address: "Rua Conselheiro Jerónimo Pimentel, Braga"
)
pet19.photo.attach(
  io: File.open(Rails.root.join("app/assets/images/dogs/dog_dalmatian.png")),
  filename: 'dog'
)
pet19.save

pet20 = Pet.create(
  user_id: User.all.sample.id,
  pet_type: "dog",
  name: "Bold",
  sex: "male",
  pedigree_number: Faker::IDNumber.valid,
  description: "Bold, is known for his genuineness and directness. Enjoy outdoor activities and rules.
  He is hopeful of finding a partner to make a family.",
  birthday: Faker::Date.birthday,
  breed: "French Bulldog",
  address: "Avenida Engenheiro Pinheiro Braga Gavião, Vila Nova de Famalicão"
)
pet20.photo.attach(
  io: File.open(Rails.root.join("app/assets/images/dogs/dog_french_bulldog.png")),
  filename: 'dog'
)
pet20.save

pet21 = Pet.create(
  user_id: User.all.sample.id,
  pet_type: "dog",
  name: "Kira",
  sex: "female",
  pedigree_number: Faker::IDNumber.valid,
  description: "Hi my dears, my name is Kira.
  I am a high competition athlete, I have won several medals all over the world.
  When I'm not training, I like to take long walks by the sea. I like the comfort of home and being accompanied.",
  on_heat: true,
  birthday: Faker::Date.birthday,
  breed: "Galgo Español",
  address: "Rua de Linhares, Matosinhos"
)
pet21.photo.attach(
  io: File.open(Rails.root.join("app/assets/images/dogs/dog_galgo_espanol.png")),
  filename: 'dog'
)
pet21.save

pet22 = Pet.create(
  user_id: User.all.sample.id,
  pet_type: "dog",
  name: "Brutos",
  sex: "male",
  description: "I work as a Police. But don't think my name is Max. My best quality is my scent. I help close a lot
  of cases. For me it is important to contribute to the development of a fairer and safer society.",
  birthday: Faker::Date.birthday,
  breed: "German Shepherd Dog",
  address: "Rua da Oliveira do Carmo, Porto"
)
pet22.photo.attach(
  io: File.open(Rails.root.join("app/assets/images/dogs/dog_german_shepherd.png")),
  filename: 'dog'
)
pet22.save

pet23 = Pet.create(
  user_id: User.all.sample.id,
  pet_type: "dog",
  name: "Joy",
  sex: "female",
  description: "Joy, are addicted to picking up sticks. It's very competitive.
  Every morning she practice run because she like to feel good physically and mentally.She is fun and sweet.",
  on_heat: false,
  birthday: Faker::Date.birthday,
  breed: "Jack Russell Terrier",
  address: "Rua Guilherme da Silva, Alhandra"
)
pet23.photo.attach(
  io: File.open(Rails.root.join("app/assets/images/dogs/dog_jack_russell.png")),
  filename: 'dog'
)
pet23.save

pet24 = Pet.create(
  user_id: User.all.sample.id,
  pet_type: "dog",
  name: "Nina",
  sex: "female",
  pedigree_number: Faker::IDNumber.valid,
  description: "I was born to steal smiles. I am passionate about life. I like to make new friends and go on adventures.
  I am protective of nature and playful. Breed Me has brought me better opportunities to find a perfect match for me.",
  on_heat: false,
  birthday: Faker::Date.birthday,
  breed: "Labrador Retriever",
  address: "Rua do Boror, Lisboa"
)
pet24.photo.attach(
  io: File.open(Rails.root.join("app/assets/images/dogs/dog_labrador_retriever.png")),
  filename: 'dog'
)
pet24.save

pet25 = Pet.create(
  user_id: catia.id,
  pet_type: "dog",
  name: "Jasmin",
  sex: "female",
  pedigree_number: Faker::IDNumber.valid,
  description: "A country girl who loves to be surrounded by flowers, more specifically sunflower.
  Blue-eyed, Jasmin manages to melt hearts with her sweet air. it's quiet and homey.",
  on_heat: false,
  birthday: Faker::Date.birthday,
  breed: "Landseer",
  address: "Rua do Lobito, Lisboa"
)
pet25.photo.attach(
  io: File.open(Rails.root.join("app/assets/images/dogs/dog_landseer.png")),
  filename: 'dog'
)
pet25.save

pet26 = Pet.create(
  user_id: User.all.sample.id,
  pet_type: "dog",
  name: "Nala",
  sex: "female",
  description: "Funny fact, I always fall asleep with a pink pig
  I'm interested in emotional intelligence and everything related to the mind.
  I play sports regularly and love taking naps throughout the day.",
  on_heat: false,
  birthday: Faker::Date.birthday,
  breed: "Pit Bull Terrier",
  address: "Praça dos Restauradores, Lisboa"
)
pet26.photo.attach(
  io: File.open(Rails.root.join("app/assets/images/dogs/dog_pit_bull_terrier.png")),
  filename: 'dog'
)
pet26.save

pet27 = Pet.create(
  user_id: gabriel.id,
  pet_type: "dog",
  name: "King",
  sex: "male",
  pedigree_number: Faker::IDNumber.valid,
  description: "I joined Breed Me because I want to find my dream match. I want to live a romance and create a legacy.
  I consider myself optimistic and romantic.",
  birthday: Faker::Date.birthday,
  breed: "Pug",
  address: "Praça da Galiza, Porto"
)
pet27.photo.attach(
  io: File.open(Rails.root.join("app/assets/images/dogs/dog_pug.png")),
  filename: 'dog'
)
pet27.save

pet28 = Pet.create(
  user_id: ines.id,
  pet_type: "dog",
  name: "Kayla",
  sex: "female",
  pedigree_number: Faker::IDNumber.valid,
  description: "Kayla is a hurricane. It has an eye of every color, which makes it unforgettable whoever stumbles upon it.
  Is naughty to play. When it snows, she can spend hours jumping between layers of snow.",
  on_heat: false,
  birthday: Faker::Date.birthday,
  breed: "Siberian Husky",
  address: "Rua 1º de Maio, Manteigas"
)
pet28.photo.attach(
  io: File.open(Rails.root.join("app/assets/images/dogs/dog_siberian_husky.png")),
  filename: 'dog'
)
pet28.save

pet29 = Pet.create(
  user_id: User.all.sample.id,
  pet_type: "dog",
  name: "Woody",
  sex: "male",
  description: "Hello, my name is Woody and I live in the city.
  I like to spend weekends in the countryside where I can be closer to nature.
  I consider myself affectionate, detailed, happy and faithful.",
  birthday: Faker::Date.birthday,
  breed: "Pembroke Welsh Corgi",
  address: "Rua do Sacramento, Lisboa"
)
pet29.photo.attach(
  io: File.open(Rails.root.join("app/assets/images/dogs/dog_welsh_corgi_pembroke.png")),
  filename: 'dog'
)
pet29.save

puts '****** Finished 🎉 ******'
