class LessonsController < ApplicationController
    before_action :authorize
    skip_before_action :authorize ,only:[:index,:show]
  # GET /lessons or /lessons.json
  def index
    @lessons = Lesson.all
    render json: @lessons
  end

  # GET /lessons/1 or /lessons/1.json
  def show
    @lesson = set_lesson
    render json: @lesson
  end

  # POST /lessons or /lessons.json
  def create
    @lesson = Lesson.create!(lesson_params)
    render json: @lesson, status: :created
     
  end

  # PATCH/PUT /lessons/1 or /lessons/1.json
  def update
    @lesson = set_lesson
    @lesson.update(lesson_params)
    render json: @lesson,status: :created
  end

  # DELETE /lessons/1 or /lessons/1.json
  def destroy
    @lesson = set_lesson
    @lesson.destroy
    head :no_content 
  end

  private
    # Use callbacks to share common setup or constraints between actions.
  def set_lesson
    @lesson = Lesson.find(params[:id])
  end

    # Only allow a list of trusted parameters through.
    def lesson_params
      params.permit(:name, :phase_id, :educator_id, :student_id)
    end
    
    def authorize
      return render json: { error: "Not authorized" }, status: :unauthorized unless session.include? :educator_id
    end
end
