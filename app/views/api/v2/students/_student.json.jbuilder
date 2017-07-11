json.id student.id
json.first_name student.first_name
json.last_name student.last_name
json.email student.email
json.phone student.phone
json.bio student.bio
json.linkedin student.link_in
json.twitter student.twitter
json.personal student.personal_url
json.github student.github_url
json.avatar student.avatar
json.skills student.skills.each do |skill|
  json.id skill.id
  json.name skill.name
end
json.educations student.educations.each do |education|
  json.id education.id
  json.start_date education.start_date
  json.end_date education.end_date
  json.details education.details
  json.degree education.degree
  json.university_name education.university_name
end
json.experiences student.experiences.each do |experience|
  json.id experience.id
  json.start_date experience.start_date
  json.end_date experience.end_date
  json.job_title experience.job_title
  json.company experience.company
  json.details experience.details
end
json.capstones student.capstones.each do |capstone|
  json.id capstone.id
  json.name capstone.name
  json.description capstone.description
  json.url capstone.url
  json.screenshot capstone.screenshot
  json.created_on capstone.created_at
end
