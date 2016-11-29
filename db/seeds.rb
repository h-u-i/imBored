# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.email

Event.create(name: 'Protest', description: 'Come protest the protests on Sproul!', month: 'December', day: '25', year: '2016')
Event.create(name: 'Moana', description: 'Friday night showtime!', month: 'December', day: '2', year: '2016')
Event.create(name: 'Bar', description: 'Drink until drunk', month: 'December', day: '31', year: '2016')
Event.create(name: 'Swimming', month: 'June', day: '1', year: '2017')

ThingsToDo.create(name: 'Breakfast')
ThingsToDo.create(name: 'Lunch')
ThingsToDo.create(name: 'Dinner')
ThingsToDo.create(name: 'Study')
ThingsToDo.create(name: 'Bar')

