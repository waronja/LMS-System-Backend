# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "seeding..."

school1 = School.create(name:"School of software development", description:"Be a Professional dev")
school2 = School.create(name:"School of Data Science", description:"Be a data analyst")

student1 = Student.create(first_name:"innocent",last_name:"Dennis",email:"dennis@gmail.com",password_digest:"",isadmin:false,school_id:school1.id)

educator1 = Educator.create(first_name:"coder",last_name:"success",email:"sucess@gmail.com",password_digest:"",isadmin:false,school_id:school1.id)

lesson1 = Lesson.create(name:"Introduction")

resource1 = Resource.create(name:"Tutorial", lesson_id:lesson1.id)

Course.create(name:"Computer Scince",school_id:school1.id,student_id:student1.id,educator_id:educator1.id,resource_id:resource1.id)

puts "done seeding!"