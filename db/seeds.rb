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
pet1 = ExoticPet.create!(name: 'Hamster', age: 3, description: 'A wild hamster with majestic stripes.', image_url: 'https://plus.unsplash.com/premium_photo-1695410374501-43ba3c8ebca4?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8aGFtc3RlcnxlbnwwfHwwfHx8MA%3D%3D', user: user1, address:'1 Plender St, London NW1 0JS', latitude: 51.53663070864441, longitude: -0.13943923007517448)
pet2 = ExoticPet.create!(name: 'Parrot', age: 2, description: 'A colorful parrot with vibrant feathers.', image_url: 'https://images.unsplash.com/photo-1452570053594-1b985d6ea890?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGFycm90fGVufDB8fDB8fHww', user: user2, address: 'Jl. Raya Singapadu, Singapadu, Kec. Sukawati, Kabupaten Gianyar, Bali 80582, Indonesia', latitude: -8.59095692554243, longitude: 115.26574512545425)
pet3 = ExoticPet.create!(name: 'Hedgehog', age: 5, description: 'A playful hedgehog with a long, bushy tail.', image_url: 'https://images.unsplash.com/photo-1669400945108-675229c1b70d?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fEhlZGdlaG9nfGVufDB8fDB8fHww', user: user3, address:'Box Hill Country Pk, Tadworth KT20 7BL', latitude: 51.24870271101549, longitude: -0.3125350598132645)
pet4 = ExoticPet.create!(name: 'Chameleon', age: 4, description: 'A chameleon that can change its colors.', image_url: 'https://plus.unsplash.com/premium_photo-1687773506111-615a26684e1f?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8Y2hhbWVsZW9ufGVufDB8fDB8fHww', user: user4, address: 'R543, Ehlanzeni, South Africa', latitude: -24.875702219952757, longitude: 30.88843522153707)
pet5 = ExoticPet.create!(name: 'Iguana', age: 2, description: 'A majestic iguana to keep you company.', image_url: 'https://images.unsplash.com/photo-1542313337-c6a6ffb1ac12?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aWd1YW5hfGVufDB8fDB8fHww', user: user5 address:'HJ5H+RXV, Carr. Aeropuerto, Punta Cana 23000, Dominican Republic', latitude: 18.559805917117977, longitude: -68.37013471550299)
pet6 = ExoticPet.create!(name: 'Boa', age: 10, description: 'A friednly but deadly companion.', image_url:'https://eadn-wc01-4749605.nxedge.io/wp-content/uploads/2021/10/iStock_000009790565_Medium.jpg', user: user5, address:'RX6M+2W9, San Antonio 10260, Peru', latitude: -9.172347496055867,longitude: -75.0130107811062)


# Attach images to pets within the loop
pets = [pet1, pet2, pet3, pet4, pet5]

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
  end

  pet.photo.attach(io: file, filename: "#{pet.name.downcase}_image.jpg", content_type: "image/jpeg")
end

puts "Creating users ..."
puts "Creating pets ..."

puts "Done! #{User.count} users created!"
puts "Done! #{ExoticPet.count} pets created!"
