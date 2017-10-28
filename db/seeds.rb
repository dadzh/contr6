# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
admin_user = User.create!(name:"Dari",email:"tata@gmail.com",password:"123123",password_confirmation:"123123",admin:"true")
second_user = User.create!(name:"Murat",email:"renja@gmail.com",password:"123123",password_confirmation:"123123",admin:"false")
third_user = User.create!(name:"Chimmy",email:"shook@gmail.com",password:"123123",password_confirmation:"123123",admin:"false")

3.times do
	first_image = Photo.create(name:"Mio", user:admin_user)
	first_image.avatar = Rails.root.join("app/assets/images/fixtures/mio3.jpeg").open
	first_image.save!
end
3.times do
	second_image = Photo.create(name:"MoreMio", user:second_user)
	second_image.avatar = Rails.root.join("app/assets/images/fixtures/mio2.png").open
	second_image.save!
end
3.times do
	third_image = Photo.create(name:"MioMio", user:third_user)
	third_image.avatar = Rails.root.join("app/assets/images/fixtures/mio.jpg").open
	third_image.save!
end