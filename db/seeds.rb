#Skill 1
dungeon = Dungeon.create!(title: 'Web Development Mastery')

skill1 = Skill.create!(dungeon_id: dungeon.id, title: 'HTML', description: 'The main language for creating web pages, HTML is written in the form of tags enclosed in angle brackets (like &lt;html&gt;).', maxPoints: 2)
Link.create!(skill_id: skill1.id, label: 'HTML.net Tutorials', url: 'http://www.html.net/tutorials/html/')
Link.create!(skill_id: skill1.id, label: 'Sublime Text 3, a great code editor', url: 'http://www.sublimetext.com/')
Statistic.create!(skill_id: skill1.id, title: 'Intellect', value: 1)
Statistic.create!(skill_id: skill1.id, title: 'Charisma', value: 1)
Statistic.create!(skill_id: skill1.id, title: 'Strength', value: 1)
Rank.create!(skill_id: skill1.id, description: 'You understand how to create and view a basic web page.')
Rank.create!(skill_id: skill1.id, description: 'You understand how to link pages together, design multi-column layouts, and work with form fields and media elements.')

#Skill 2
skill2 = Skill.create!(dungeon_id: dungeon.id, title: 'CSS', description: 'Cascading Style Sheets (CSS) is a language for styling web pages.  CSS rules target elements in the HTML document to specify the presentation, such as font, color, spacing, and size.', maxPoints: 2)
Link.create!(skill_id: skill2.id, label: 'CSS Tutorials', url: 'http://www.htmldog.com/guides/css/')
Link.create!(skill_id: skill2.id, label: 'Can I use... (browser support)', url: 'http://caniuse.com/#cats=CSS')
Statistic.create!(skill_id: skill2.id, title: 'Charisma', value: 3)
Rank.create!(skill_id: skill2.id, description: 'You are familiar with the basics of CSS formatting and the box model.')
Rank.create!(skill_id: skill2.id, description: 'You are familiar with media queries and responsive design for adapting your design to fit different devices.')
Talent.create!(skill_id: skill2.id, description: 'Stylish')
Depende.create!(skill_id: skill2.id, depend_on: skill1.id)

#Skill 3
skill3 = Skill.create!(dungeon_id: dungeon.id, title: 'CSS Tools', maxPoints: 2, description: 'Preprocessors like LESS and SASS help you write more structured and efficient CSS by adding features like variables, functions, and nesting.')
Link.create!(skill_id: skill3.id, label: 'Sass vs. LESS', url: 'http://css-tricks.com/sass-vs-less/')
Link.create!(skill_id: skill3.id, label: 'LESS', url: 'http://lesscss.org/')
Link.create!(skill_id: skill3.id, label: 'Sass', url: 'http://sass-lang.com/')
Link.create!(skill_id: skill3.id, label: 'Stylus', url: 'http://learnboost.github.io/stylus/')
Statistic.create!(skill_id: skill3.id, title: 'Charisma', value: 2)
Statistic.create!(skill_id: skill3.id, title: 'Dexterity', value: 1)
Rank.create!(skill_id: skill3.id, description: 'You are familiar with variables and nesting.')
Rank.create!(skill_id: skill3.id, description: 'You can use advanced tools like mix-ins and sometimes write your own.')
Depende.create!(skill_id: skill3.id, depend_on: skill2.id)

#Skill 4
skill4 = Skill.create!(dungeon_id: dungeon.id, title: 'Web Design Mastery', maxPoints: 1, description: 'You can bring design ideas to life by translating them into the requisite HTML document with CSS styles.')
Depende.create!(skill_id: skill4.id, depend_on: skill2.id)
Statistic.create!(skill_id: skill4.id, title: 'Charisma', value: 10)

#Skill 5
skill5 = Skill.create!(dungeon_id: dungeon.id, title: 'jQuery Effects', maxPoints: 3, description: 'jQuery provides techniques and methods for client-side manipulation of the web page elements.')
Depende.create!(skill_id: skill5.id, depend_on: skill4.id)
Link.create!(skill_id: skill5.id, label: 'Codecademy jQuery', url: 'http://www.codecademy.com/tracks/jquery')
Link.create!(skill_id: skill5.id, label: 'jQuery Category: Manipulation', url: 'http://api.jquery.com/category/manipulation/')
Link.create!(skill_id: skill5.id, label: 'jQuery Category: Effects', url: 'http://api.jquery.com/category/effects/')
Rank.create!(skill_id: skill5.id, description: 'You are familiar with manipulating the document object model (DOM) - modifying values, content, properties, entire elements, etc.')
Rank.create!(skill_id: skill5.id, description: 'You are familiar with adding standard animation to a web page.')
Rank.create!(skill_id: skill5.id, description: 'You are familiar with creating and adding custom effects to a web page.')
Talent.create!(skill_id: skill5.id, description: 'Sizzlin')
Statistic.create!(skill_id: skill5.id, title: 'Charisma', value: 2)
Statistic.create!(skill_id: skill5.id, title: 'Dexterity', value: 1)

#Skill 6
skill6 = Skill.create!(dungeon_id: dungeon.id, title: 'Search Engine Optimization (SEO)', maxPoints: 1, description: 'The process of affecting the ranking/visibility of a website or web page in a search engines results.')
Depende.create(skill_id: skill6.id, depend_on: skill1.id)
Link.create!(skill_id: skill6.id, label: 'Search Engine Optimization (Google)', url: 'https://support.google.com/webmasters/answer/35291')
Link.create!(skill_id: skill6.id, label: 'Webmaster Tools (Google)', url: 'http://www.google.com/webmasters/tools/')
Link.create!(skill_id: skill6.id, label: 'Bing - Webmaster Tools', url: 'http://www.bing.com/toolbox/webmaster')
Statistic.create!(skill_id: skill6.id, title: 'Intellect', value: 2)
Statistic.create!(skill_id: skill6.id, title: 'Wisdom', value: 1)

#Skill 7
skill7 = Skill.create!(dungeon_id: dungeon.id, title: 'Analytics', maxPoints: 1, description: 'Analytics provide performance data about a website as well as information that is usable to measure the success of SEO.')
Depende.create(skill_id: skill7.id, depend_on: skill6.id)
Link.create!(skill_id: skill7.id, label: '10 SEO Analysis Tools You Should Be Using', url: 'http://www.webgnomes.org/blog/10-seo-analysis-tools/')
Link.create!(skill_id: skill7.id, label: 'Configuring SEO data in Analytics (Google)', url: 'https://support.google.com/analytics/answer/1308621?hl=en')
Link.create!(skill_id: skill7.id, label: 'Using the SEO Reports (Google)', url: 'http://www.bing.com/toolbox/webmaster')
Link.create!(skill_id: skill7.id, label: 'Bing - SEO Analyzer', url: 'http://www.bing.com/toolbox/seo-analyzer')
Statistic.create!(skill_id: skill7.id, title: 'Intellect', value: 1)
Statistic.create!(skill_id: skill7.id, title: 'Wisdom', value: 2)
Talent.create!(skill_id: skill7.id, description: 'Crafty')

#Skill 8
skill8 = Skill.create!(dungeon_id: dungeon.id, title: 'Javascript', maxPoints: 1, description: 'JavaScript is the dominant language for client-side programming.  It executes in the user&rsquo;s browser to manipulate the HTML document after it has loaded.  This may be as simple as showing hidden elements, or more advanced like contacting the server to load more data.')
Depende.create!(skill_id: skill8.id, depend_on: skill1.id)
Link.create!(skill_id: skill8.id, label: 'JavaScript Tutorial', url: 'http://www.htmldog.com/guides/javascript/')
Link.create!(skill_id: skill8.id, label: 'Codecademy JavaScript', url: 'http://www.codecademy.com/tracks/javascript')
Link.create!(skill_id: skill8.id, label: 'List of Videos for Beginner JavaScript', url: 'http://thenewboston.org/list.php?cat=10')
Link.create!(skill_id: skill8.id, label: 'Douglas Crockford on Javascript', url: 'http://javascript.crockford.com/')
Statistic.create!(skill_id: skill8.id, title: 'Dexterity', value: 3)

#Skill 9
skill9 = Skill.create!(dungeon_id: dungeon.id, title: 'JS Libraries & Frameworks', maxPoints: 2, description: 'Once you&rsquo;re comfortable with the JavaScript language, there&rsquo;s a multitude of libraries and frameworks to accomplish common tasks and enhance your development.')
Depende.create!(skill_id: skill9.id, depend_on: skill8.id)
Rank.create!(skill_id: skill9.id, description: 'You tap into libraries like jQuery, MooTools, Prototype, Dojo, and YUI to streamline your work.')
Rank.create!(skill_id: skill9.id, description: 'You use frameworks like KnockoutJS, Ember.js, AngularJS, and Backbone.js to structure complex frontend functionality.')
Statistic.create!(skill_id: skill9.id, title: 'Dexterity', value: 2)
Statistic.create!(skill_id: skill9.id, title: 'Wisdom', value: 1)
Talent.create!(skill_id: skill9.id, description: 'Nimble')

#Skill 10
#TODO: description can't be blank
skill10 = Skill.create!(dungeon_id: dungeon.id, title: 'Front-end Development Mastery', description: 'test', maxPoints: 1)
Depende.create!(skill_id: skill10.id, depend_on: skill9.id)
Statistic.create!(skill_id: skill9.id, title: 'Dexterity', value: 2)
Statistic.create!(skill_id: skill8.id, title: 'Dexterity', value: 10)

#Skill 11
skill11 = Skill.create!(dungeon_id: dungeon.id, title: 'Server-side Programming', maxPoints: 1, description: 'Developing items (code) that executes on the server (server-side) instead of the user\'s (client\'s) machine.')
Depende.create!(skill_id: skill11.id, depend_on: skill1.id)
Link.create!(skill_id: skill11.id, label: 'Server-side scripting Wiki', url: 'http://en.wikipedia.org/wiki/Server-side_scripting')
Statistic.create!(skill_id: skill11.id, title: 'Strength', value: 3)

#Skill 12
skill12 = Skill.create!(dungeon_id: dungeon.id, title: 'Server-side Frameworks', maxPoints: 1,  description: 'These are software frameworks and collection of packages or modules that allow developers to write applications or services without having to handle the overhead of common activities and lower level details, such as session management, database access, etc.')
Depende.create!(skill_id: skill12.id, depend_on: skill11.id)
Link.create!(skill_id: skill12.id, label: 'Comparison of web application frameworks', url: 'http://en.wikipedia.org/wiki/Comparison_of_web_application_frameworks')
Link.create!(skill_id: skill12.id, label: 'Web development - server side coding', url: 'http://en.wikipedia.org/wiki/Web_development#Server_side_coding')
Statistic.create!(skill_id: skill12.id, title: 'Strength', value: 2)
Statistic.create!(skill_id: skill12.id, title: 'Wisdom', value: 1)
Talent.create(skill_id: skill12.id, description: 'Beefcake')

#Skill 13
skill13 = Skill.create!(dungeon_id: dungeon.id, title: 'Database Authoring', maxPoints: 2, description: 'Databases are powerful engines for storing, organizing, and retrieving data.  There is a wide variety of database platforms to choose from.  The most widely used database language is Structured Query Language (SQL).  Properly architecting your data will facilitate your site&rsquo;s server-side programming.')
Depende.create!(skill_id: skill13.id, depend_on: skill1.id)
Link.create!(skill_id: skill13.id, label: 'w3schools.com SQL Tutorial', url: 'http://www.w3schools.com/sql/')
Link.create!(skill_id: skill13.id, label: 'SQLZOO Interactive SQL Tutorial', url: 'http://sqlzoo.net/wiki/')
Link.create!(skill_id: skill13.id, label: 'Database Normalization Wiki', url: 'https://en.wikipedia.org/wiki/Database_normalization')
Rank.create!(skill_id: skill13.id, description: 'You understand how to setup tables.')
Rank.create!(skill_id: skill13.id, description: 'You understand how relational databases organize data.')
Statistic.create!(skill_id: skill13.id, title: 'Strength', value: 3)

#Skill 14
skill14 = Skill.create!(dungeon_id: dungeon.id, title: 'Advanced DB Management', maxPoints: 2, description: 'Besides creating basic tables and relating data, databases allow for the creation of stored procedures, sets of SQL statements that are stored in the database, and user-defined functions (UDFs) , functions that can be used in SQL statements.  Just architecting the database is not enough.  The database also needs to be optimized or tuned to increase performance.')
Depende.create(skill_id: skill14.id, depend_on: skill13.id)
Link.create!(skill_id: skill14.id, label: 'Stored Procedure - Wiki', url: 'http://en.wikipedia.org/wiki/Stored_procedure')
Link.create!(skill_id: skill14.id, label: 'User-defined function Wiki' , url: 'http://en.wikipedia.org/wiki/User_defined_function')
Link.create!(skill_id: skill14.id, label: 'Database Tuning Wiki', url: 'http://en.wikipedia.org/wiki/Database_tuning')
Link.create!(skill_id: skill14.id, label: 'Performance Monitoring and Tuning How-to Topics (SQL Server)', url: 'http://technet.microsoft.com/en-us/library/ms187830(v=sql.105).aspx')
Link.create!(skill_id: skill14.id, label: 'Sql Server Performance Tuning Tips', url: 'http://www.mssqltips.com/sql-server-tip-category/9/performance-tuning/')
Link.create!(skill_id: skill14.id, label: 'Oracle database Performance Tuning FAQ', url: 'http://www.orafaq.com/wiki/Oracle_database_Performance_Tuning_FAQ')
Rank.create!(skill_id: skill14.id, description: 'You write stored procedures and user-defined functions for more efficient querying.')
Rank.create!(skill_id: skill14.id, description: 'You can detect causes of performance deficiencies and fine tune a database like a rock star.')
Statistic.create!(skill_id: skill14.id, title: 'Strength', value: 2)
Statistic.create!(skill_id: skill14.id, title: 'Dexterity', value: 1)
Talent.create!(skill_id: skill14.id, description: 'XXL Knapsack')

#Skill 15
skill15 = Skill.create!(dungeon_id: dungeon.id, title: 'Server-side Development Mastery', maxPoints: 1, description: 'You are capable of architecting and building an application\'s backend to efficiently store and retrieve data.')
Depende.create!(skill_id: skill15.id, depend_on: skill12.id)
Depende.create!(skill_id: skill15.id, depend_on: skill14.id)
Statistic.create!(skill_id: skill15.id, title: 'Strength', value: 10)

#Skill 16
skill16 = Skill.create!(dungeon_id: dungeon.id, title: 'User Authentication and Authorization', maxPoints: 1, description: 'Authentication is the process determining whether someone or something is who or what it is declared to be. Authorization is the process of determining if a user is allowed to perform an action or has access to a resource.')
Depende.create!(skill_id: skill16.id, depend_on: skill15.id)
Link.create!(skill_id: skill16.id, label: 'ASP.NET authentication and authorization - CodeProject', url: 'http://www.codeproject.com/Articles/98950/ASP-NET-authentication-and-authorization')
Link.create!(skill_id: skill16.id, label: 'OpenID Wiki (authentication)', url: 'http://en.wikipedia.org/wiki/OpenID')
Link.create!(skill_id: skill16.id, label: 'OAuth Community', url: 'http://oauth.net/')
Link.create!(skill_id: skill16.id, label: 'ASP.NET Authorization', url: 'http://msdn.microsoft.com/en-us/library/wce3kxhd(v=vs.100).aspx')
Statistic.create(skill_id: skill16.id, title: 'Fortitude', value: 5)
Talent.create!(skill_id: skill16.id, description: 'Truthseeker')

#TODO: depende is depend
#Skill 17
skill17 = Skill.create!(dungeon_id: dungeon.id, title: 'AJAX & APIs', maxPoints: 1, description: 'Technology exists to allow separate systems to communicate between each other in various ways as well as allowing interfaces to be more intractive.  These include the use of Asynchronous JavaScript and XML (AJAX), usually on the client-side, to communicate with an external system.  Other technologies, such as web services, are used to setup end-points for allowing communication with an external system.')
Depende.create!(skill_id: skill17.id, depend_on: skill10.id)
Depende.create!(skill_id: skill17.id, depend_on: skill15.id)
Link.create!(skill_id: skill17.id, label: 'AJAX (programming) Wiki', url: 'http://en.wikipedia.org/wiki/Ajax_(programming)')
Link.create!(skill_id: skill17.id, label: 'List of Videos for AJAX', url: 'http://thenewboston.org/list.php?cat=61')
Link.create!(skill_id: skill17.id, label: 'Ajax: The Official Microsoft ASP.NET Site', url: 'http://www.asp.net/ajax')
Link.create!(skill_id: skill17.id, label: 'Web Service Wiki', url: 'http://en.wikipedia.org/wiki/Web_service')
Link.create!(skill_id: skill17.id, label: 'Representational state transfer (REST) Wiki', url: 'http://en.wikipedia.org/wiki/Representational_state_transfer')
Statistic.create!(skill_id: skill17.id, title: 'Strength', value: 1)
Statistic.create!(skill_id: skill17.id, title: 'Dexterity', value: 1)
Statistic.create!(skill_id: skill17.id, title: 'Intellect', value: 1)
Talent.create!(skill_id: skill17.id, description: 'Mindweaver')

#Skill 18
skill18 = Skill.create!(dungeon_id: dungeon.id, title: 'User Discovery', maxPoints: 2, description: 'One of the first steps taken before anything is designed is to determine what the client (both the site requestor and the site user) wants and/or needs. Techniques include simple sketching, card-sortting and experience mapping.')
Rank.create!(skill_id: skill18.id, description: 'You know the right questions to ask, and use sketches to confirm your ideas.')
Rank.create!(skill_id: skill18.id, description: 'You use advanced techniques like experience mapping to lead conversations with stakeholders.')
Link.create!(skill_id: skill18.id, label: 'The anatomy of an experience map', url: 'http://www.adaptivepath.com/ideas/the-anatomy-of-an-experience-map')
Statistic.create!(skill_id: skill18.id, title: 'Wisdom', value: 2)
Statistic.create!(skill_id: skill18.id, title: 'Charisma', value: 1)
Talent.create!(skill_id: skill18.id, description: 'Mindreader')

#Skill 19
skill19 = Skill.create!(dungeon_id: dungeon.id, title: 'Graphic Design', maxPoints: 2, description: 'Graphic design is about aesthetics and usability. Good designs are inviting and easy to understand, by solid use of color, typography, balance, hierarchy and white space.')
Rank.create(skill_id: skill19.id, description: 'You can create a balanced, complementary layout with a clear message.')
Rank.create(skill_id: skill19.id, description: 'You understand how to create a strikingly unique design, which supports traditional design values as well as your underlying message.')
Depende.create!(skill_id: skill19.id, depend_on: skill18.id)
Link.create!(skill_id: skill19.id, label: 'Graphic Design Wiki', url: 'http://en.wikipedia.org/wiki/Graphic_design')
Link.create!(skill_id: skill19.id, label: 'Behance', url: 'http://www.behance.net/')
Link.create!(skill_id: skill19.id, label: 'User experience design Wiki', url: 'http://en.wikipedia.org/wiki/User_experience_design')
Link.create!(skill_id: skill19.id, label: 'Awwwards', url: 'http://www.awwwards.com/')
Statistic.create!(skill_id: skill19.id, title: 'Charisma', value: 3)
Talent.create!(skill_id: skill19.id, description: 'Artistic')

#Skill 20
skill20 = Skill.create!(dungeon_id: dungeon.id, title: 'Graphic Design Tools', maxPoints: 1, description: 'Software such as Photoshop and devices like drawing tablets are used to create layouts, work with type, touch-up photos, and other activities to add professional polish to your designs.')
Depende.create!(skill_id: skill20.id, depend_on: skill19.id)
Link.create!(skill_id: skill20.id, label: '100 Top Tools for Graphic Designers | Graphic Design Classes', url: 'http://graphicdesignclasses.net/design-tools/')
Statistic.create!(skill_id: skill20.id, title: 'Charisma', value: 2)
Statistic.create!(skill_id: skill20.id, title: 'Intellect', value: 1)

#Skill 21
skill21 = Skill.create!(dungeon_id: dungeon.id, title: 'Prototypes', maxPoints: 1, description: 'Modeling a new design without building all the underlying functionality is a fast and efficient way to convey ideas, test a new concept, and identify problems you didn\'t anticipate.')
Depende.create!(skill_id: skill21.id, depend_on: skill18.id)
Link.create!(skill_id: skill21.id, label: 'Design Better And Faster With Rapid Prototyping', url: 'http://www.smashingmagazine.com/2010/06/16/design-better-faster-with-rapid-prototyping/')
Link.create!(skill_id: skill21.id, label: '16 Design Tools for Prototyping and Wireframing', url: 'http://www.sitepoint.com/tools-prototyping-wireframing/')
Statistic.create!(skill_id: skill21.id, title: 'Wisdom', value: 1)
Statistic.create!(skill_id: skill21.id, title: 'Intellect', value: 2)
Talent.create!(skill_id: skill21.id, description: 'Conjurer')

#Skill 22
skill22 = Skill.create!(dungeon_id: dungeon.id, title: 'User Experience Design Mastery', maxPoints: 1, description: 'You are capable of converting project requirements to an attractive design that promotes a pleasant user experience.')
Depende.create!(skill_id: skill22.id, depend_on: skill19.id)
Depende.create!(skill_id: skill22.id, depend_on: skill21.id)
Statistic.create!(skill_id: skill22.id, title: 'Wisdom', value: 1)
Statistic.create!(skill_id: skill22.id, title: 'Charisma', value: 2)

#Skill 23
skill23 = Skill.create!(dungeon_id: dungeon.id, title: 'User Testing', maxPoints: 1, description: 'It is a technique, also known as usability testing, that is used to evaluate a website by testing it on users.')
Depende.create!(skill_id: skill23.id, depend_on: skill22.id)
Link.create!(skill_id: skill23.id, label: 'My big list of 24 Web Site Usability Testing Tools', url: 'http://www.usefulusability.com/24-usability-testing-tools/')
Link.create!(skill_id: skill23.id, label: 'Usability Testing Wiki', url: 'http://en.wikipedia.org/wiki/Usability_testing')
Statistic.create!(skill_id: skill23.id, title: 'Charisma', value: 1)
Statistic.create!(skill_id: skill23.id, title: 'Wisdom', value: 2)
Talent.create!(skill_id: skill23.id, description: 'Alchemist')

#Skill 24
skill24 = Skill.create!(dungeon_id: dungeon.id, title: 'Server Administration', maxPoints: 2, description: 'Even the simplest web applications will require a server to run them.  There are several popular and fully-featured web servers to choose from, though your application\'s server-side programming language may limit your options.  Learning to manage and configure your web server will help you keep your site up and running smoothly.')
Link.create!(skill_id: skill24.id, label: 'Comparison of web server software Wiki', url: 'http://en.wikipedia.org/wiki/Comparison_of_web_server_software')
Link.create!(skill_id: skill24.id, label: 'Apache mod_rewrite - Apache HTTP Server', url: 'http://httpd.apache.org/docs/2.4/rewrite/')
Rank.create!(skill_id: skill24.id, description: 'You are capable of setting up your application in a new environment.')
Rank.create!(skill_id: skill24.id, description: 'You are familiar with server-side URL rewriting tools like mod_rewrite.')
Statistic.create!(skill_id: skill24.id, title: 'Fortitude', value: 3)
Talent.create(skill_id: skill24.id, description: 'Stewardship')

#Skill 25
skill25 = Skill.create!(dungeon_id: dungeon.id, title: 'Deployment', maxPoints: 2, description: 'Before sharing your application with the world, follow the best practices for security and performance on the server.')
Depende.create!(skill_id: skill25.id, depend_on: skill24.id)
Link.create!(skill_id: skill25.id, label: 'SSL Certificate Installation', url: 'http://www.sslshopper.com/ssl-certificate-installation.html')
Link.create!(skill_id: skill25.id, label: 'Minimize payload size - Google Developers', url: 'https://developers.google.com/speed/docs/best-practices/payload')
Link.create!(skill_id: skill25.id, label: 'Parallelize downloads across hostnames - Google Developers', url: 'https://developers.google.com/speed/docs/best-practices/rtt#ParallelizeDownloads')
Rank.create!(skill_id: skill25.id, description: 'You minify your public-facing files and serve compressed files to save bandwidth and improve your site\'s speed.')
Rank.create!(skill_id: skill25.id, description: 'You secure sensitive traffic over HTTPS using an SSL certificate.')
Statistic.create!(skill_id: skill25.id, title: 'Fortitude', value: 2)
Statistic.create!(skill_id: skill25.id, title: 'Dexterity', value: 1)
Talent.create!(skill_id: skill25.id, description: 'Spectral Guide')

#Skill 26
skill26 = Skill.create!(dungeon_id: dungeon.id, title: 'Web Development Mastery', maxPoints: 1, description: 'This refers to designing, creating, and maintaining a website.')
Depende.create!(skill_id: skill26.id, depend_on: skill4.id)
Depende.create!(skill_id: skill26.id, depend_on: skill7.id)
Depende.create!(skill_id: skill26.id, depend_on: skill10.id)
Depende.create!(skill_id: skill26.id, depend_on: skill15.id)
Depende.create!(skill_id: skill26.id, depend_on: skill22.id)
Depende.create!(skill_id: skill26.id, depend_on: skill25.id)
Link.create!(skill_id: skill26.id, label: 'Web Development Wiki', url: 'http://en.wikipedia.org/wiki/Web_development')
Statistic.create!(skill_id: skill26.id, title: 'Charisma', value: 3)
Statistic.create!(skill_id: skill26.id, title: 'Dexterity', value: 3)
Statistic.create!(skill_id: skill26.id, title: 'Fortitude', value: 3)
Statistic.create!(skill_id: skill26.id, title: 'Intellect', value: 3)
Statistic.create!(skill_id: skill26.id, title: 'Strength', value: 3)
Statistic.create!(skill_id: skill26.id, title: 'Wisdom', value: 3)
Talent.create!(skill_id: skill26.id, description: 'Demigod')




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
