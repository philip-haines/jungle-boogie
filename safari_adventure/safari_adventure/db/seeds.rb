Photo.destroy_all
Animal.destroy_all
User.destroy_all

User.connection.execute('ALTER SEQUENCE users_id_seq RESTART WITH 1')
Animal.connection.execute('ALTER SEQUENCE animals_id_seq RESTART WITH 1')
Photo.connection.execute('ALTER SEQUENCE photos_id_seq RESTART WITH 1')

lion = Animal.create(name: "Lion", animal_type: "Big Cat", location: "Savana")
antelope = Animal.create(name: "Gazelle", animal_type: "Bovine", location: "Grass Land")

phil = User.create(user_name: "Phil", outfit: "Rambo")
destiny = User.create(user_name: "Destiny", outfit: "Nigle Thornberry")

photo1 = Photo.create(user: phil, animal: antelope)
photo2 = Photo.create(user: phil, animal: lion)
photo3 = Photo.create(user: destiny, animal: lion)

binding.pry
puts "<----- SEEDED ----->"