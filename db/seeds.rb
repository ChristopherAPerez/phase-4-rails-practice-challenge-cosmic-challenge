# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Clearing db..."
Planet.destroy_all
Scientist.destroy_all
Mission.destroy_all

puts "Making planets..."
mars = Planet.create(name: "Mars",
                            distance_from_earth: "1000 Lightyears",
                            nearest_star: "Red Dwarf",
                            image: "planet#{rand(1..10)}")

puts "Making scientists..."                        
cooper = Scientist.create(name: "Sheldon Cooper",
                            field_of_study: "Theoretical Physicist",
                            avatar: Faker::Avatar.image(size: "200x200", set: "set3"))

puts "Making missions..."                           
apollo = Mission.create(name: "Apollo 13",
                            scientist_id: cooper.id, 
                            planet_id: mars.id)

puts "Done seeding!"                         