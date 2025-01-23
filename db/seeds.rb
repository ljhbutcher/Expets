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
pet1 = ExoticPet.create!(name: 'Nathaniel', species:"Hamster", age: 3, description: 'A chill hamster with majestic stripes.', image_url: 'https://plus.unsplash.com/premium_photo-1695410374501-43ba3c8ebca4?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8aGFtc3RlcnxlbnwwfHwwfHx8MA%3D%3D', price: 5.00, user: user1, address:'1 Plender St, London NW1 0JS')
pet2 = ExoticPet.create!(name: 'Rebecca', species: "Parrot", age: 2, description: 'A colorful parrot with vibrant feathers.', image_url: 'https://images.unsplash.com/photo-1452570053594-1b985d6ea890?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGFycm90fGVufDB8fDB8fHww', price: 8.00, user: user2, address: 'Manchester M60 1AY')
pet3 = ExoticPet.create!(name: 'Toto', species: "Hedgehog", age: 5, description: 'A playful hedgehog with a long, bushy tail.', image_url: 'https://images.unsplash.com/photo-1669400945108-675229c1b70d?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fEhlZGdlaG9nfGVufDB8fDB8fHww', price: 6.00, user: user3, address:'Box Hill Country Pk, Tadworth KT20 7BL')
pet4 = ExoticPet.create!(name: 'Mr Churchill', species: "Chameleon", age: 4, description: 'A chameleon that can change its colors.', image_url: 'https://plus.unsplash.com/premium_photo-1687773506111-615a26684e1f?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8Y2hhbWVsZW9ufGVufDB8fDB8fHww', price: 11.00, user: user4, address: '2 Buck St, London NW1 8NJ')
pet5 = ExoticPet.create!(name: 'Theresa', species: "Iguana", age: 2, description: 'A majestic iguana to keep you company.', image_url: 'https://images.unsplash.com/photo-1542313337-c6a6ffb1ac12?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aWd1YW5hfGVufDB8fDB8fHww', price: 15.00, user: user5, address:'Clevedon Rd, Wraxall, Clevedon BS48 1PG')
pet6 = ExoticPet.create!(name: 'Hermione', species: "Boa", age: 10, description: 'A friendly but deadly companion.', image_url:'https://images.unsplash.com/photo-1641880669139-d028f45d3453?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fGJvYXxlbnwwfHwwfHx8MA%3D%3D', price: 25.00, user: user5, address:'Zoo Project, Blackhorse Hill, Bristol BS10 7TP')


# Attach images to pets within the loop
pets = [pet1, pet2, pet3, pet4, pet5, pet6]

pets.each_with_index do |pet, index|
  case index
  when 0
    file = URI.parse("https://plus.unsplash.com/premium_photo-1695410374501-43ba3c8ebca4?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8aGFtc3RlcnxlbnwwfHwwfHx8MA%3D%3D").open
    file2 = URI.parse("https://images.unsplash.com/photo-1676918555382-fcd06a483e25?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjB8fGhhbXN0ZXIlMjB3aXRoJTIwc3RyaXBlc3xlbnwwfHwwfHx8MA%3D%3D").open
    file3 = URI.parse("https://images.unsplash.com/photo-1588331086909-9861b6e15a30?q=80&w=2371&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D").open
    file4 = URI.parse("https://images.unsplash.com/photo-1655527264900-263ff1c66b24?q=80&w=2370&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D").open
  when 1
    file = URI.parse("https://images.unsplash.com/photo-1452570053594-1b985d6ea890?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGFycm90fGVufDB8fDB8fHww").open
    file2 = URI.parse("https://images.unsplash.com/photo-1519003458034-e188874bb745?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8cGFycm90fGVufDB8fDB8fHww").open
    file3 = URI.parse("https://images.unsplash.com/photo-1504579264001-833438f93df2?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8cGFycm90fGVufDB8fDB8fHww").open
    file4 = URI.parse("https://images.unsplash.com/photo-1470081766425-a75c92adff0b?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fHBhcnJvdHxlbnwwfHwwfHx8MA%3D%3D").open
  when 2
    file = URI.parse("https://images.unsplash.com/photo-1669400945108-675229c1b70d?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fEhlZGdlaG9nfGVufDB8fDB8fHww").open
    file2 = URI.parse("https://plus.unsplash.com/premium_photo-1706533222450-f76ed5904df9?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8aGVkZ2Vob2d8ZW58MHx8MHx8fDA%3D").open
    file3 = URI.parse("https://images.unsplash.com/photo-1541949432307-5b17dd371cf4?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fGhlZGdlaG9nfGVufDB8fDB8fHww").open
    file4 = URI.parse("https://plus.unsplash.com/premium_photo-1723874396899-681323b389e1?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8aGVkZ2Vob2d8ZW58MHx8MHx8fDA%3D").open
  when 3
    file = URI.parse("https://plus.unsplash.com/premium_photo-1687773506111-615a26684e1f?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8Y2hhbWVsZW9ufGVufDB8fDB8fHww").open
    file2 = URI.parse("https://images.unsplash.com/photo-1456489546743-d58605863e05?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8Y2hhbWVsZW9ufGVufDB8fDB8fHww").open
    file3 = URI.parse("https://images.unsplash.com/photo-1502641960251-c175da3bf508?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTZ8fGNoYW1lbGVvbnxlbnwwfHwwfHx8MA%3D%3D").open
    file4 = URI.parse("https://images.unsplash.com/photo-1541377607488-a4165ca4fb85?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8Y2hhbWVsZW9ufGVufDB8fDB8fHww").open
  when 4
    file = URI.parse("https://images.unsplash.com/photo-1542313337-c6a6ffb1ac12?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aWd1YW5hfGVufDB8fDB8fHww").open
    file2 = URI.parse("https://images.unsplash.com/photo-1532606252447-6bd3f899de60?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fGlndWFuYXxlbnwwfHwwfHx8MA%3D%3D").open
    file3 = URI.parse("https://images.unsplash.com/photo-1446971114861-a3d76baf1cbc?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTV8fGlndWFuYXxlbnwwfHwwfHx8MA%3D%3D").open
    file4 = URI.parse("https://images.unsplash.com/photo-1567459092904-0fd49a7265e5?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8aWd1YW5hfGVufDB8fDB8fHww").open
  when 5
    file = URI.parse("https://images.unsplash.com/photo-1641880669139-d028f45d3453?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fGJvYXxlbnwwfHwwfHx8MA%3D%3D").open
    file2 = URI.parse("https://images.unsplash.com/photo-1613176875265-8d8da7d7674f?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fGJvYSUyMHNuYWtlfGVufDB8fDB8fHww").open
    file3 = URI.parse("https://images.unsplash.com/photo-1613176875012-13e151ecc307?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTZ8fGJvYSUyMHNuYWtlfGVufDB8fDB8fHww").open
    file4 = URI.parse("https://media.istockphoto.com/id/184948524/photo/boa-constrictor-descending-from-tree.webp?a=1&b=1&s=612x612&w=0&k=20&c=tRyuSyHW_Y3zrRigV_bbTYebMeV_51apVN_cavdAWcQ=").open
  end

  pet.photos.attach(io: file, filename: "#{pet.name.downcase}_image.jpg", content_type: "image/jpeg")
end

puts "Creating users ..."
puts "Creating pets ..."

puts "Done! #{User.count} users created!"
puts "Done! #{ExoticPet.count} pets created!"
