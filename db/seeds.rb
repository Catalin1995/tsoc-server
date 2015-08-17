# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#Skill 1
skill = Skill.create!(title: 'HTML', description: 'The main language for creating web pages, HTML is written in the form of tags enclosed in angle brackets (like &lt;html&gt;).', maxPoints: 2)
Link.create!(skill_id: skill.id, label: 'HTML.net Tutorials', url: 'http://www.html.net/tutorials/html/')
Link.create!(skill_id: skill.id, label: 'Sublime Text 3, a great code editor', url: 'http://www.sublimetext.com/')
Statistic.create!(skill_id: skill.id, title: 'Intellect', value: 1)
Statistic.create!(skill_id: skill.id, title: 'Charisma', value: 1)
Statistic.create!(skill_id: skill.id, title: 'Strength', value: 1)
Rank.create!(skill_id: skill.id, description: 'You understand how to create and view a basic web page.')
Rank.create!(skill_id: skill.id, description: 'You understand how to link pages together, design multi-column layouts, and work with form fields and media elements.')

#Skill 2
skill = Skill.create!(title: 'CSS', description: 'Cascading Style Sheets (CSS) is a language for styling web pages.  CSS rules target elements in the HTML document to specify the presentation, such as font, color, spacing, and size.', maxPoints: 2)
Link.create!(skill_id: skill.id, label: 'CSS Tutorials', url: 'http://www.htmldog.com/guides/css/')
Link.create!(skill_id: skill.id, label: 'Can I use... (browser support)', url: 'http://caniuse.com/#cats=CSS')
Statistic.create!(skill_id: skill.id, title: 'Charisma', value: 3)
Rank.create!(skill_id: skill.id, description: 'You are familiar with the basics of CSS formatting and the box model.')
Rank.create!(skill_id: skill.id, description: 'You are familiar with media queries and responsive design for adapting your design to fit different devices.')

#Skill 3
skill = Skill.create!(title: 'CSS Tools', maxPoints: 2, description: 'Preprocessors like LESS and SASS help you write more structured and efficient CSS by adding features like variables, functions, and nesting.')
Link.create!(skill_id: skill.id, label: 'Sass vs. LESS', url: 'http://css-tricks.com/sass-vs-less/')
Link.create!(skill_id: skill.id, label: 'LESS', url: 'http://lesscss.org/')
Link.create!(skill_id: skill.id, label: 'Sass', url: 'http://sass-lang.com/')
Link.create!(skill_id: skill.id, label: 'Stylus', url: 'http://learnboost.github.io/stylus/')
Statistic.create!(skill_id: skill.id, title: 'Charisma', value: 2)
Statistic.create!(skill_id: skill.id, title: 'Dexterity', value: 1)
Rank.create!(skill_id: skill.id, description: 'You are familiar with variables and nesting.')
Rank.create!(skill_id: skill.id, description: 'You can use advanced tools like mix-ins and sometimes write your own.')

















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
