class PhasesController < ApplicationController
  before_action :authorize
  skip_before_action :authorize ,only:[:index,:show]
  # GET /phases or /phases.json
  def index
    @phases = Phase.all
    render json: @phases
  end

  # GET /phases/1 or /phases/1.json
  def show
    @phase = set_phase
    render json: @phase
  end

  # GET /phases/1/edit
  def edit
  end

  # POST /phases or /phases.json
  def create
    @phase = Phase.create(phase_params)
    render json: @phase ,status: :created

  end

  # PATCH/PUT /phases/1 or /phases/1.json
  def update
      @phase = set_phase
      @phase.update(phase_params)
      render json: @phase,status: :created
          
  end

  # DELETE /phases/1 or /phases/1.json
  def destroy
    @phase = set_phase
    @phase.destroy
    head  :no_content
     
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_phase
      @phase = Phase.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def phase_params
      params.require(:phase).permit(:name, :lesson_id, :course_id, :resource_id)
    end
def authorize
  return render json: { error: "Not authorized" }, status: :unauthorized unless session.include? :educator_id
 end
end
