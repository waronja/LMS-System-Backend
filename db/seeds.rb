puts "seeding..."

school1= School.create(name: "School of Software development", description: " Be a professional developer")
school2 = School.create(name: "School of Data science", description: " Be a data analyst")
# student1 = Student.create(first_name: "judy", last_name: "mwai", email: "judy@gmail", password_digest: "", isadmin: false, school_id: school1.id)
# educator1 = Student.create(first_name:"judy",last_name:"mwai",email:"judy@gmail.com",password_digest:"",isadmin:false,school_id:school1.id)

student1 = Student.create(first_name:"innocent",last_name:"Dennis",email:"dennis@gmail.com",password_digest:"",isadmin:false,school_id:school1.id)
educator1 = Educator.create(first_name:"coder",last_name:"success",email:"success@gmail.com",password_digest:"",isadmin:false,school_id:school1.id)
lesson1 = Lesson.create(name:"introduction")
resource1 = Resource.create(name:"Tutorial",lesson_id:lesson1.id )
Course.create(name: "Computer Science", school_id:school1.id, student_id:student1.id, educator_id:educator1.id, resource_id: resource1.id)

puts "done seeding!"