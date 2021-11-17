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
  name: "Healthy liver for a weekend full of drinks",
  description: "Well-preserved liver, non-drinker, 22 years-old",
  user_id: user1.id)
fresh_liver.photo.attach(io: file, filename: 'fresh_liver.png', content_type: 'image/png')
puts "Created #{fresh_liver.name}"

file = URI.open('https://t3.ftcdn.net/jpg/03/07/56/74/360_F_307567493_dvQdFL5HqYzDYZ94JFZ4lK5AMoCO3ErW.jpg')
second_hand_kidney = Organ.create!(
  name: "Highly profficient kidney for some quick relief!",
  description: "Used but rapid kidney, 45 years-old",
  user_id: user2.id)
second_hand_kidney.photo.attach(io: file, filename: 'second_hand_kidney.png', content_type: 'image/png')
puts "Created #{second_hand_kidney.name}"

file = URI.open('https://media.istockphoto.com/vectors/cartoon-brain-lifting-dumbbells-vector-vector-id1208760136?k=20&m=1208760136&s=170667a&w=0&h=xS9nVYewbTCqtkPvw208BfA5XO-Jk420w0tWglmOBzM=')
super_brain = Organ.create!(
  name: "Brain fresh out of college!",
  description: "Harvard Law graduate, 22 years-old, highly absorbant!",
  user_id: user1.id)
super_brain.photo.attach(io: file, filename: 'super_brain.png', content_type: 'image/png')
puts "Created #{super_brain.name}"

file = URI.open('https://www.trincoll.edu/spiritualandreligiouslife/wp-content/uploads/sites/23/2020/10/5G1A0105small-1-scaled-e1601579285122.jpg')
laughing_lungs = Organ.create!(
  name: "High quality organ",
  description: "With brand new pipes,this church organ can be used both in small concert rooms or big churches",
  user_id: user1.id)
laughing_lungs.photo.attach(io: file, filename: 'laughing_lungs.png', content_type: 'image/png')
puts "Created #{laughing_lungs.name}"

file = URI.open('https://static.vecteezy.com/system/resources/previews/002/286/136/original/cute-cartoon-smiling-healthy-human-heart-character-happy-emoji-emotion-funny-circulatory-organ-cardiology-eps-illustration-vector.jpg')
loving_heart = Organ.create!(
  name: "Loving heart",
  description: "This heart has gotten over many breakups and is highly resilitent. Let me help you out!",
  user_id: user1.id)
loving_heart.photo.attach(io: file, filename: 'loving_heart.png', content_type: 'image/png')
puts "Created #{loving_heart.name}"

file = URI.open('https://cdn3.vectorstock.com/i/1000x1000/21/27/strong-healthy-pancreas-cartoon-character-isolated-vector-20632127.jpg')
happy_pancreas = Organ.create!(
  name: "Sweet pancreas",
  description: "I can help with the sweetness in your life",
  user_id: user1.id)
happy_pancreas.photo.attach(io: file, filename: 'happy_pancreas.png', content_type: 'image/png')
puts "Created #{happy_pancreas.name}"

file = URI.open('https://image.shutterstock.com/image-vector/cute-funny-human-lungs-anatomy-260nw-1314207800.jpg')
laughing_lungs = Organ.create!(
  name: "Laughing lungs",
  description: "Super lungs of a highly trained athlete, 32 years-old",
  user_id: user1.id)
laughing_lungs.photo.attach(io: file, filename: 'laughing_lungs.png', content_type: 'image/png')
puts "Created #{laughing_lungs.name}"



puts "Finished!"
