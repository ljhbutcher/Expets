puts "Cleaning the DB"

User.destroy_all
ExoticPet.destroy_all

# Create users
user1 = User.create!(
  username: 'liam',
  email: 'liam@mail.com',
  password: 'password'
)

user2 = User.create!(
  username: 'edward',
  email: 'edward@mail.com',
  password: 'password'
)

user3 = User.create!(
  username: 'marcel',
  email: 'marcel@mail.com',
  password: 'password'
)

user4 = User.create!(
  username: 'melany',
  email: 'melany@mail.com',
  password: 'password'
)

user5 = User.create!(
  username: 'sapana',
  email: 'sapana@mail.com',
  password: 'password'
)

# Create exotic pets
pet1 = ExoticPet.create!(
  name: 'Hamster',
  age: 3,
  description: 'A wild hamster with majestic stripes.',
  image_url: 'pcdcn97x7wnknxex6wxm',
  user: user1
)

pet2 = ExoticPet.create!(
  name: 'Parrot',
  age: 2,
  description: 'A colorful parrot with vibrant feathers.',
  image_url: 'menkdsp6fwagupqfzuot',
  user: user2
)

pet3 = ExoticPet.create!(
  name: 'Hedgehog',
  age: 5,
  description: 'A playful hedgehog with a long, bushy tail.',
  image_url: 'jsxm0xcgfngboqlrjhpv
',
  user: user3
)

pet4 = ExoticPet.create!(
  name: 'Chameleon',
  age: 4,
  description: 'A chameleon that can change its colors.',
  image_url: 'bxagytxbidlqqsnxm8s5',
  user: user4
)

pet5 = ExoticPet.create!(
  name: 'Iguana',
  age: 2,
  description: 'A majestic iguana to keep you company.',
  image_url: 'jsxm0xcgfngboqlrjhpv',
  user: user5
)

puts "Creating users ..."
puts "Creating pets ..."

puts "Done! #{User.count} users created!"
puts "Done! #{ExoticPet.count} pets created!"
