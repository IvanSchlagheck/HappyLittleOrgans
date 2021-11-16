User.destroy_all
puts "destroying"

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
