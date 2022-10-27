class LessonsController < ApplicationController
  
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
    @lesson = Lesson.create(lesson_params)
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
    params.require(:lesson).permit(:name, :chat_id, :assessment_id, :phase_id)
  end

end
