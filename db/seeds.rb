# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).


puts '***** Destroying Seeds *****'
User.destroy_all
Pet.destroy_all

puts '***** Creating User *****'

user = User.create(email: 'test@test.com', password: '123456', first_name: 'First', last_name: 'User')

puts '***** Creating 30 pets *****'

30.times do
  pet = Pet.new(
    user_id: user.id,
    pet_type: ["cat", "dog"].sample,
    name: ["Mel", "Gucci", "Sebastião", "Pucci", "Fendi", "Celine", "Dior", "Pearl", "Gina", "Lua", "Batman", "Wintour", "Marc", "Kim", "Nívea", "Xena", "Kiki", "Eva", "Agnes", "Hera", "Patty", "Penny", "Bonnie", "Alice", "Dalila", "Jean-Paul", "Westwood", "Pucci", "Wang", "Ballmer"].sample,
    sex: ["male", "female"].sample,
    pedigree_number: Faker::IDNumber.valid,
    description: " Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    on_heat: false,
    birthday: Faker::Date.birthday,
    breed: Faker::Creature::Dog.breed
  )
  pet.photo.attach(
    io: File.open(Rails.root.join("app/assets/images/dog_#{rand(1..9)}.jpg")),
    filename: 'pet.jpg'
  )
  pet.save!
end

puts '****** Finished ******'
