puts "seeding"

#school_owner instance
school_owner1 =SchoolOwner.create(first_name:"Gideon",last_name:"Langat",email:"langat@gmail.com",password_digest:"", isadmin:true)

#school instance
school1 = School.create(name:"School of Software development", description:"Be a professional developer", school_owner_id:school_owner1.id)
school2 = School.create(name:"School of Data science", description:"Be a data analyst")

#student instance
student1 = Student.create(first_name:"innocent",last_name:"Dennis",email:"dennis@gmail.com",password_digest:"",isadmin:false,school_id:school1.id)
educator1 =Educator.create(first_name:"coder",last_name:"success",email:"success@gmail.com",password_digest:"",is_prof:true)

#educator instance
educator1 = Educator.create(first_name:"coder",last_name:"success",email:"success@gmail.com",password_digest:"",is_prof:false,school_id:school1.id)

#lesson instance
lesson1 =Lesson.create(name:"introduction")

#course instance
course1= Course.create(name: "Computer Science", school_id:school1.id, student_id:student1.id)

#resource instance
resource1 = Resource.create(name:"Tutorial",lesson_id:lesson1.id,course_id:course1.id )

#phase instance
phase1 =Phase.create(name:"phase 1",course_id:course1.id)

puts "Done seeding"

# , educator_id:educator1.id
