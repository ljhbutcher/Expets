puts "Cleaning the DB"

User.destroy_all
ExoticPet.destroy_all

# Create users
user1 = User.create!(
  username: 'amina_smith',
  email: 'amina@mail.com',
  password: 'password111'

)

user2 = User.create!(
  username: 'saul_james',
  email: 'saul@mail.com',
  password: 'password222'
)

user3 = User.create!(
  username: 'abdul_kimbo',
  email: 'abdul@example.com',
  password: 'password333'
)

user4 = User.create!(
  username: 'eddy_the_eagle',
  email: 'eddy@yahuu.com',
  password: 'password444'
)

# Create exotic pets
pet1 = ExoticPet.create!(
  name: 'Hamster',
  age: 3,
  description: 'A wild hamster with majestic stripes.',
  image_url: 'https://plus.unsplash.com/premium_photo-1695410374501-43ba3c8ebca4?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8aGFtc3RlcnxlbnwwfHwwfHx8MA%3D%3D',
  user: user1
)

pet2 = ExoticPet.create!(
  name: 'Parrot',
  age: 2,
  description: 'A colorful parrot with vibrant feathers.',
  image_url: 'https://images.unsplash.com/photo-1452570053594-1b985d6ea890?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGFycm90fGVufDB8fDB8fHww',
  user: user2
)

pet3 = ExoticPet.create!(
  name: 'Hedgehog',
  age: 5,
  description: 'A playful hedgehog with a long, bushy tail.',
  image_url: 'https://images.unsplash.com/photo-1669400945108-675229c1b70d?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjB8fGhlZGdlaG9nc3xlbnwwfHwwfHx8MA%3D%3D',
  user: user3
)

pet4 = ExoticPet.create!(
  name: 'Chameleon',
  age: 4,
  description: 'A chameleon that can change its colors.',
  image_url: 'https://plus.unsplash.com/premium_photo-1687773506111-615a26684e1f?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8Q2hhbWVsZW9uJ3xlbnwwfHwwfHx8MA%3D%3D',
  user: user4
)

puts "Creating users ..."
puts "Creating pets ..."

puts "Done! #{User.count} users created!"
puts "Done! #{ExoticPet.count} pets created!"
