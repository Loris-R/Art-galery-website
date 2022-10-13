puts "Seeds start"
# destroy datas if development

User.destroy_all if Rails.env.development?
Partner.destroy_all if Rails.env.development?
ArtFairExhibitor.destroy_all if Rails.env.development?
ArtFair.destroy_all if Rails.env.development?
DesignExhibitor.destroy_all if Rails.env.development?
Design.destroy_all if Rails.env.development?
puts "destroyed datas if development environment"

#create users
User.create!(
  email: "loris.reynaud@gmail.com", password: "azerty!5", admin: true
)
User.create!(
  email: "fonsecarika@gmail.com", password: "1234567890!5", admin: true
)
User.create!(
  email: "olivier@bienvenue.art", password: "Olivier?75", admin: true
)
puts "Olivier, Lolo & Rika created !"

puts "Seeds terminated !"
