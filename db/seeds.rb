
50.times do 

  student = Student.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, phone: Faker::PhoneNumber.phone_number, email: Faker::Internet.email, link_in: "www.linkedin/#{Faker::Name.first_name}#{Faker::Name.last_name}", twitter: "www.twitter.com/#{Faker::Name.last_name}", personal_url: "www.#{Faker::Name.first_name}#{Faker::Name.last_name}", resume_url: "www.sharemyresume/#{Faker::Name.first_name}", github_url: "www.github/#{Faker::Name.first_name}#{Faker::Name.last_name}", avatar: Faker::Avatar.image, bio: Faker::HarryPotter.quote)

end

# 50.times do 
#   student = Student.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, phone: Faker::PhoneNumber.phone_number, email: Faker::Internet.email, link_in: "www.linkedin/#{Faker::Name.first_name}#{Faker::Name.last_name}", twitter: "www.twitter.com/#{Faker::Name.last_name}", personal_url: "www.#{Faker::Name.first_name}#{Faker::Name.last_name}", resume_url: "www.sharemyresume/#{Faker::Name.first_name}", github_url: "www.github/#{Faker::Name.first_name}#{Faker::Name.last_name}", avatar: Faker::Avatar.image, bio: Faker::HarryPotter.quote)
# end


# Student.all.each do | student |
#   5.times do
#     experience = Experience.create(start_date: Faker::Date.between(360.days.ago, Date.today), end_date: Faker::Date.birthday(18, 65), job_title: Faker::Job.title, company: Faker::Company.name , details: Faker::Company.catch_phrase, student_id: student.id)
#     education = Education.create(start_date: Faker::Date.between(360.days.ago, Date.today), end_date: Faker::Date.birthday(18, 65), degree: Faker::Job.field , university_name: Faker::University.name, details: Faker::Company.catch_phrase, student_id: student.id)
#   end
#   10.times do
#     skill = Skill.create(skill: Faker::Job.key_skill, student_id: student.id)
#   end
#   1.times do
#     capstone = Capstone.create(name: Faker::Company.name , description: Faker::Lorem.paragraph , url:Faker::Internet.domain_name , screenshot:Faker::LoremPixel.image, student_id: student.id )
#   end

# end



# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
