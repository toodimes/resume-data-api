# README

First things first:

run `rails db:create`

run `rails db:migrate`

run `rails db:seed`

Your DB will now be seeded. 

Calls for students can be made to .."/api/v1/students.json"

All routes for skills and education and experience are nested within the students routes. 

So to get the skills for a student make a call to "/api/v1/students/#{student_id}/skills"
