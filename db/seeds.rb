# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')
TimeBlock.create!(name: "1-2", start: "2000-01-01 08:15:00", end: "2000-01-01 09:45:00")
TimeBlock.create!(name: "3-4", start: "2000-01-01 10:00:00", end: "2000-01-01 11:30:00")
TimeBlock.create!(name: "5-6", start: "2000-01-01 11:45:00", end: "2000-01-01 13:15:00")
TimeBlock.create!(name: "7-8", start: "2000-01-01 14:00:00", end: "2000-01-01 15:30:00")
TimeBlock.create!(name: "9-10", start: "2000-01-01 15:40:00", end: "2000-01-01 17:10:00")
TimeBlock.create!(name: "11-12", start: "2000-01-01 17:20:00", end: "2000-01-01 18:50:00")
TimeBlock.create!(name: "13-14", start: "2000-01-01 19:00:00", end: "2000-01-01 20:30:00")

for timeBlock in TimeBlock.all 
	(1..5).each do |weekday|
		Block.create!(timeBlock: timeBlock, weekday: weekday)
	end
end