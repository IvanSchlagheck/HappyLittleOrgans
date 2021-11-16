# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
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
