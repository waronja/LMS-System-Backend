class StudentsController < ApplicationController
  
  # GET /students or /students.json
  def index
    students = Student.all
    render json: students

  
  end
  
#signup request
  def create
    student = Student.create(student_params)
    if student
    session[:student_id] = student.id
    render json: student
  else
     render json: { error: educator.errors.full_messages }, status: :unprocessable_entity
  end
end
  

   

  # responds to me request
  # def show
  #   student = Student.find_by(id: session[:student_id])
  #   if student
  #     render json: student
  #   else
  #     render json: { error: "unauthorized" }, status: :unauthorized
  #   end
  # end



  private

    def student_params
      params.permit(:first_name, :last_name, :email, :password, :password_confirmation, :school_id, :isadmin)
  end

  
end
