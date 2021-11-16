# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Organ.destroy_all

puts "Creating organs..."
fresh_liver = { name: "fresh liver for a weekend full of drinks", description: "first-hand well-preserved liver of a 22-year-old non-drinking student", user: 1 }
second_hand_kidney =  { name: "reused kidney for some nice peeing", description: "reused kidney of a 45-year-old janitor", user: 2 }
super_brain = { name: "fresh brain of a 22-year-old law graduate from Havard", description: "you wanna reach the top of the world? pick my brain!"}

[ fresh_liver, second_hand_kidney, super_brain ].each do |attributes|
  organ = Organ.create!(attributes)
  puts "Created #{organ.name}"
end
puts "Finished!"
