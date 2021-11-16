Organ.destroy_all
User.destroy_all
puts "destroying"
puts "Cleaning database..."


User.create!(
  username: 'donaldtrump',
  password: 'blablabla',
  blood_type: 'A+',
  email: "fakeemail6@email.com"
)

user1 = User.create!(
  username: 'mickeymouse',
  password: 'disney',
  blood_type: 'O+',
  email: "fakeemail5@email.com"
)

User.create!(
  username: 'minniemouse',
  password: "mickey",
  blood_type: "B-",
  email: "fakeemail4@email.com"
)

User.create!(
  username: "bambi",
  password: "hunter",
  blood_type: "A+",
  email: "fakeemail3@email.com"
)

user2 = User.create!(
  username: "winniethepooh",
  password: "honeymoon",
  blood_type: "AB+",
  email: "fakeemail2@email.com"
)

User.create!(
  username: "Ivan",
  password: "ihateclowns",
  blood_type: "O+",
  email: "fakeemail1@email.com"
)
puts "users created"


puts "Creating organs..."
fresh_liver = { name: "fresh liver for a weekend full of drinks", description: "first-hand well-preserved liver of a 22-year-old non-drinking student", user_id: user1.id }
second_hand_kidney =  { name: "reused kidney for some nice peeing", description: "reused kidney of a 45-year-old janitor", user_id: user2.id }
super_brain = { name: "fresh brain of a 22-year-old law graduate from Havard", description: "you wanna reach the top of the world? pick my brain!", user_id: user1.id }

[ fresh_liver, second_hand_kidney, super_brain ].each do |attributes|
  organ = Organ.create!(attributes)
  puts "Created #{organ.name}"
end
puts "Finished!"
