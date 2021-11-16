
User.destroy_all
puts "destroying"
puts "Cleaning database..."
Organ.destroy_all

User.create(
  username: 'donaldtrump',
  password: 'blablabla',
  blood_type: 'A+',
  email: "fakeemail6@email.com"
)

User.create!(
  username: 'mickeymouse',
  password: 'disney',
  blood_type: 'O+',
  email: "fakeemail5@email.com"
)

User.create(
  username: 'minniemouse',
  password: "mickey",
  blood_type: "B-",
  email: "fakeemail4@email.com"
)

User.create(
  username: "bambi",
  password: "hunter",
  blood_type: "A+",
  email: "fakeemail3@email.com"
)

User.create(
  username: "winniethepooh",
  password: "honey",
  blood_type: "AB+",
  email: "fakeemail2@email.com"
)

User.create(
  username: "Ivan",
  password: "ihateclowns",
  blood_type: "O+",
  email: "fakeemail1@email.com"
)
puts "users created"


puts "Creating organs..."
fresh_liver = { name: "fresh liver for a weekend full of drinks", description: "first-hand well-preserved liver of a 22-year-old non-drinking student", user: 1 }
second_hand_kidney =  { name: "reused kidney for some nice peeing", description: "reused kidney of a 45-year-old janitor", user: 2 }
super_brain = { name: "fresh brain of a 22-year-old law graduate from Havard", description: "you wanna reach the top of the world? pick my brain!"}

[ fresh_liver, second_hand_kidney, super_brain ].each do |attributes|
  organ = Organ.create!(attributes)
  puts "Created #{organ.name}"
end
puts "Finished!"
