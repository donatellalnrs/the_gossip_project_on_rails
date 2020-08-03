require 'faker'
I18n.reload!

10.times do 
  my_user = User.new(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::Lorem.sentence, email: Faker::Internet.email, age: Faker::Number.between(from: 15, to: 90))
  my_city = City.create(name: Faker::Address.city, zipcode: Faker::Address.zip_code)
  my_user.city = my_city #on assigne une ville à un user
  my_user.save
end

20.times do 
  my_gossip = Gossip.new(title: Faker::Lorem.sentence, content: Faker::Lorem.paragraph)
  random = rand (1..10) 
  my_user = User.find(random) #on choisit un user de manière aléatoire
  my_gossip.user = my_user #on l'assigne à un gossip
  my_gossip.save
end 

10.times do 
  my_tag = Tag.create(title: "##{Faker::Lorem.word}") #on crée des hashtags
end 