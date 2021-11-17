require "open-uri"

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


file = URI.open('https://image.shutterstock.com/image-vector/strong-cute-healthy-happy-human-260nw-1394896127.jpg')
fresh_liver = Organ.create!(
  name: "fresh liver for a weekend full of drinks",
  description: "first-hand well-preserved liver of a 22-year-old non-drinking student",
  user_id: user1.id)
fresh_liver.photo.attach(io: file, filename: 'fresh_liver.png', content_type: 'image/png')
puts "Created #{fresh_liver.name}"

file = URI.open('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQpTsuw8lzoHgnipdFMQAArrve5ybKGWKrjg&usqp=CAU')
second_hand_kidney = Organ.create!(
  name: "reused kidney for some nice peeing",
  description: "reused kidney of a 45-year-old janitor",
  user_id: user2.id)
second_hand_kidney.photo.attach(io: file, filename: 'second_hand_kidney.png', content_type: 'image/png')
puts "Created #{second_hand_kidney.name}"

file = URI.open('https://image.pngaaa.com/739/309739-middle.png')
super_brain = Organ.create!(
  name: "fresh brain of a 22-year-old law graduate from Havard",
  description: "you wanna reach the top of the world? pick my brain!",
  user_id: user1.id)
super_brain.photo.attach(io: file, filename: 'super_brain.png', content_type: 'image/png')
puts "Created #{super_brain.name}"

file = URI.open('https://st4.depositphotos.com/3842881/20362/i/1600/depositphotos_203621332-stock-photo-render-happy-heart-jumping.jpg')
loving_heart = Organ.create!(
  name: "loving heart",
  description: "Broken up? Get a new heart!",
  user_id: user1.id)
loving_heart.photo.attach(io: file, filename: 'loving_heart.png', content_type: 'image/png')
puts "Created #{loving_heart.name}"

file = URI.open('https://st3.depositphotos.com/11788938/19217/v/600/depositphotos_192179272-stock-illustration-strong-healthy-pancreas-cartoon-character.jpg')
happy_pancreas = Organ.create!(
  name: "happy pancreas",
  description: "happy pancreas",
  user_id: user1.id)
happy_pancreas.photo.attach(io: file, filename: 'happy_pancreas.png', content_type: 'image/png')
puts "Created #{happy_pancreas.name}"

file = URI.open('https://image.shutterstock.com/image-vector/cute-funny-human-lungs-anatomy-260nw-1314207800.jpg')
laughing_lungs = Organ.create!(
  name: "laughing lungs",
  description: "laughing lungs waiting for some fresh air!",
  user_id: user1.id)
laughing_lungs.photo.attach(io: file, filename: 'laughing_lungs.png', content_type: 'image/png')
puts "Created #{laughing_lungs.name}"



puts "Finished!"
