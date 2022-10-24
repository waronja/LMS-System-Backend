class StudentsController < ApplicationController
  
  # GET /students or /students.json
  def index
    students = Student.all
    render json: students,include: [:school, :course, :lessons]

  
  end

  # GET /students/1 or /students/1.json
  def show
    students = Student.find_by(id: params[:id])
     if students 
      render json: students
     else 
      render json: {error: "student not found"}, status: :not_found
    end
  end

  # POST /students or /students.json
  def create
    students = Student.create(student_params)
    # if students 
      render json: students, status: :created
  end

  def show
    student = Student.find_by(id: session[:student_id])
    if student
      render json: student
    else
      render json: { error: "unauthorized" }, status: :unauthorized
    end
  end



  private

    def student_params
      params.permit(:first_name, :last_name, :email, :password_digest, :school_id, :isadmin)
  end

  
end
