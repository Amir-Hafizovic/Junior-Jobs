# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
u1 = User.create email: 'milo@ga.co', name: 'Mi Lo', password: 'chicken', user_type:'employer', employer_title: 'CEO', company: 'Milo Inc', image: 'https://www.asist.org/wp-content/plugins/all-in-one-seo-pack/images/default-user-image.png', bio: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'
u2 = User.create email: 'luke@ga.co', name: 'Lu Ke', password: 'chicken', user_type: 'junior', junior_title: 'Web Developer', image: 'https://www.asist.org/wp-content/plugins/all-in-one-seo-pack/images/default-user-image.png', bio: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'
u3 = User.create email: 'joel@ga.co', name: 'Jo El', password: 'chicken', user_type: 'junior', junior_title: 'Web Developer', image: 'https://www.asist.org/wp-content/plugins/all-in-one-seo-pack/images/default-user-image.png', bio: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'
u4 = User.create email: 'hafizovic.amir@gmail.com', name: 'Amir Hafizovic', password: 'chicken', user_type: 'junior', junior_title: 'Student Web Developer', image: 'https://www.asist.org/wp-content/plugins/all-in-one-seo-pack/images/default-user-image.png', bio: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'

puts "Created #{ User.all.length } users."

Job.destroy_all

j1 = Job.create title: 'Junior Web Developer', description:'Your new company
A market leader in their field this highly innovative Gold Coast company manufacturing and distribute a range of high performance products across Australia and the world. With a large platform upgrade currently underway my client is looking to take on a web developer to join their highly experienced team.

Your new role
Reporting to the Lead developer, t he successful candidate will work with the business developing a range of landing pages for various products ensuring new products are reaching their target market within desired time-frames. Working with the marketing team you will assist in multiple digital campaigns ensuring product and web launches run smoothly and also work with the business on other web based activities.', job_location: 'Sydney', job_date: '01/03/2018', job_company: 'Milo Inc', contract_type: 'Permanent', logo_image: 'http://www.free-money.tv/wp-content/uploads/2014/12/company-name-vector-logo1.jpg', salary: '$75,000'

j2 = Job.create title: 'Junior Web Developer', description:'Your new company
A market leader in their field this highly innovative Gold Coast company manufacturing and distribute a range of high performance products across Australia and the world. With a large platform upgrade currently underway my client is looking to take on a web developer to join their highly experienced team.

Your new role
Reporting to the Lead developer, t he successful candidate will work with the business developing a range of landing pages for various products ensuring new products are reaching their target market within desired time-frames. Working with the marketing team you will assist in multiple digital campaigns ensuring product and web launches run smoothly and also work with the business on other web based activities.', job_location: 'Sydney', job_date: '01/03/2018', job_company: 'Milo Inc', contract_type: 'Permanent', logo_image: 'http://www.free-money.tv/wp-content/uploads/2014/12/company-name-vector-logo1.jpg', salary: '$75,000'

j3 = Job.create title: 'Junior Web Developer', description:'Your new company
A market leader in their field this highly innovative Gold Coast company manufacturing and distribute a range of high performance products across Australia and the world. With a large platform upgrade currently underway my client is looking to take on a web developer to join their highly experienced team.

Your new role
Reporting to the Lead developer, t he successful candidate will work with the business developing a range of landing pages for various products ensuring new products are reaching their target market within desired time-frames. Working with the marketing team you will assist in multiple digital campaigns ensuring product and web launches run smoothly and also work with the business on other web based activities.', job_location: 'Sydney', job_date: '01/03/2018', job_company: 'Milo Inc', contract_type: 'Permanent', logo_image: 'http://www.free-money.tv/wp-content/uploads/2014/12/company-name-vector-logo1.jpg', salary: '$55,000'

puts "Created #{ Job.all.length} Jobs: #{Job.pluck(:title).join "\n" }"

n1 = Note.create title: 'Potentially employable', content:'I like Amir, he seems to meet the job requirements'

n2 = Note.create title: 'Milo Inc rocks!', content:'I would luv to work there'

puts "Created #{ Note.all.length} Notes: #{Note.pluck(:title).join "\n" }"



u1.jobs << j1 << j2 << j3
u1.notes << n1
u2.notes << n2
# j1.favourites << u2 << u3
