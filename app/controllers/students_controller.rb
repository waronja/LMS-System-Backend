class StudentsController < ApplicationController
  # before_action :set_student, only: %i[ show edit update destroy ]

  # GET /students or /students.json
  def index
    students = Student.all
    render json: students
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


  private

    def student_params
      params.permit(:first_name, :last_name, :email, :password_digest, :school_id, :isadmin)
    end
end
