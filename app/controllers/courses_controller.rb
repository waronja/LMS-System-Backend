class CoursesController < ApplicationController

 

  before_action :set_course, only: %i[ show edit update destroy ]

  # GET /courses or /courses.json
  def index
    @courses = Course.all
    render json: @courses, include: [:phases, :resources]
  end

  # GET /courses/1 or /courses/1.json
  def show
    @course = set_course
    render json: @course
  end

 

  # GET /courses/1/edit
  def edit
  end

  # POST /courses or /courses.json
  def create
    @course = Course.create(course_params)
    render json: @course ,status: :created
  end

  # PATCH/PUT /courses/1 or /courses/1.json
  def update
      @course = set_course
      @course.update(course_params)
      render json: @course,status: :created
      
  end

  # DELETE /courses/1 or /courses/1.json
  def destroy
    @course = set_course
    @course.destroy
    head :no_content
    end
  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course
      @course = Course.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def course_params
      params.require(:course).permit(:name, :school_id, :student_id, :educator_id, :resource_id)
    end
end
