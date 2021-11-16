User.destroy_all
puts "destroying"

User.create(
  username: 'donaldtrump',
  password: 'blablabla',
  blood_type: 'A+'
)

User.create(
  username: 'mickeymouse',
  password: 'disney',
  blood_type: 'O+'
)

User.create(
  username: 'minniemouse',
  password: "mickey",
  blood_type: "B-"
)

User.create(
  username: "bambi",
  password: "hunter",
  blood_type: "A+"
)

User.create(
  username: "winniethepooh",
  password: "honey",
  blood_type: "AB+"
)

User.create(
  username: "Ivan",
  password: "ihateclowns",
  blood_type: "O+"
)
puts "users created"
