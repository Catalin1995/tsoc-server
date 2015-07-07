# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!(email: 'admin@example.com', password: 'password', name: 'admin', password_confirmation: 'password', mentor: true)
User.create!(email: 'mentor1@example.com', password: 'password', name: 'mentor1', password_confirmation: 'password', mentor: true)
User.create!(email: 'mentor2@example.com', password: 'password', name: 'mentor2', password_confirmation: 'password', mentor: true)
User.create!(email: 'mentor3@example.com', password: 'password', name: 'mentor3', password_confirmation: 'password', mentor: true)

User.create!(email: 'ionut@example.com', password: 'password', name: 'Ionut', password_confirmation: 'password', mentor: false)
User.create!(email: 'catalina@example.com', password: 'password', name: 'Catalina', password_confirmation: 'password', mentor: false)
User.create!(email: 'adrian@example.com', password: 'password', name: 'Adrian', password_confirmation: 'password', mentor: false)
User.create!(email: 'vasile@example.com', password: 'password', name: 'Vasile', password_confirmation: 'password', mentor: false)
User.create!(email: 'daniela@example.com', password: 'password', name: 'Daniela', password_confirmation: 'password', mentor: false)
User.create!(email: 'alexandru@example.com', password: 'password', name: 'Alexandru', password_confirmation: 'password', mentor: false)
User.create!(email: 'andrei@example.com', password: 'password', name: 'Andrei', password_confirmation: 'password', mentor: false)
User.create!(email: 'roxana@example.com', password: 'password', name: 'Roxana', password_confirmation: 'password', mentor: false)
User.create!(email: 'timea@example.com', password: 'password', name: 'Timea', password_confirmation: 'password', mentor: false)
User.create!(email: 'dan@example.com', password: 'password', name: 'Dan', password_confirmation: 'password', mentor: false)

Course.create!(title: 'Ruby')
Course.create!(title: 'Python', image: 'http://budiirawan.com/wp-content/uploads/2015/04/ruby-logo.png', description: 'tet')
Course.create!(title: 'Jira')
Course.create!(title: 'Android')
Course.create!(title: 'Linux')
Course.create!(title: 'Windows')
Course.create!(title: 'HTML')
Course.create!(title: 'Java')
Course.create!(title: 'iOS')
Course.create!(title: 'Git')
