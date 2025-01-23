require 'open-uri'

puts "Cleaning the DB"

User.destroy_all
ExoticPet.destroy_all

# Create users
user1 = User.create!(username: 'liam', email: 'liam@mail.com', password: 'password')
user2 = User.create!(username: 'edward', email: 'edward@mail.com', password: 'password')
user3 = User.create!(username: 'marcel', email: 'marcel@mail.com', password: 'password')
user4 = User.create!(username: 'melany', email: 'melany@mail.com', password: 'password')
user5 = User.create!(username: 'sapana', email: 'sapana@mail.com', password: 'password')

# Create exotic pets
pet1 = ExoticPet.create!(name: 'Hamster', age: 3, description: 'A wild hamster with majestic stripes.', image_url: 'https://plus.unsplash.com/premium_photo-1695410374501-43ba3c8ebca4?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8aGFtc3RlcnxlbnwwfHwwfHx8MA%3D%3D', user: user1, address:'1 Plender St, London NW1 0JS')
pet2 = ExoticPet.create!(name: 'Parrot', age: 2, description: 'A colorful parrot with vibrant feathers.', image_url: 'https://images.unsplash.com/photo-1452570053594-1b985d6ea890?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGFycm90fGVufDB8fDB8fHww', user: user2, address: 'Manchester M60 1AY')
pet3 = ExoticPet.create!(name: 'Hedgehog', age: 5, description: 'A playful hedgehog with a long, bushy tail.', image_url: 'https://images.unsplash.com/photo-1669400945108-675229c1b70d?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fEhlZGdlaG9nfGVufDB8fDB8fHww', user: user3, address:'Box Hill Country Pk, Tadworth KT20 7BL')
pet4 = ExoticPet.create!(name: 'Chameleon', age: 4, description: 'A chameleon that can change its colors.', image_url: 'https://plus.unsplash.com/premium_photo-1687773506111-615a26684e1f?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8Y2hhbWVsZW9ufGVufDB8fDB8fHww', user: user4, address: '2 Buck St, London NW1 8NJ')
pet5 = ExoticPet.create!(name: 'Iguana', age: 2, description: 'A majestic iguana to keep you company.', image_url: 'https://images.unsplash.com/photo-1542313337-c6a6ffb1ac12?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aWd1YW5hfGVufDB8fDB8fHww', user: user5, address:'Clevedon Rd, Wraxall, Clevedon BS48 1PG')
pet6 = ExoticPet.create!(name: 'Boa', age: 10, description: 'A friendly but deadly companion.', image_url:'https://images.unsplash.com/photo-1641880669139-d028f45d3453?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fGJvYXxlbnwwfHwwfHx8MA%3D%3D', user: user5, address:'Zoo Project, Blackhorse Hill, Bristol BS10 7TP')


# Attach images to pets within the loop
pets = [pet1, pet2, pet3, pet4, pet5, pet6]

pets.each_with_index do |pet, index|
  case index
  when 0
    file = URI.parse("https://plus.unsplash.com/premium_photo-1695410374501-43ba3c8ebca4?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8aGFtc3RlcnxlbnwwfHwwfHx8MA%3D%3D").open
  when 1
    file = URI.parse("https://images.unsplash.com/photo-1452570053594-1b985d6ea890?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGFycm90fGVufDB8fDB8fHww").open
  when 2
    file = URI.parse("https://images.unsplash.com/photo-1669400945108-675229c1b70d?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fEhlZGdlaG9nfGVufDB8fDB8fHww").open
  when 3
    file = URI.parse("https://plus.unsplash.com/premium_photo-1687773506111-615a26684e1f?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8Y2hhbWVsZW9ufGVufDB8fDB8fHww").open
  when 4
    file = URI.parse("https://images.unsplash.com/photo-1542313337-c6a6ffb1ac12?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aWd1YW5hfGVufDB8fDB8fHww").open
  when 5
    file = URI.parse("https://images.unsplash.com/photo-1641880669139-d028f45d3453?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fGJvYXxlbnwwfHwwfHx8MA%3D%3D").open
  end

  pet.photo.attach(io: file, filename: "#{pet.name.downcase}_image.jpg", content_type: "image/jpeg")
end

puts "Creating users ..."
puts "Creating pets ..."

puts "Done! #{User.count} users created!"
puts "Done! #{ExoticPet.count} pets created!"
