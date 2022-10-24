class EducatorsController < ApplicationController

  def index
    educators = Educator.all
    render json: educators,include: [:school, :lessons]
  end

  
  def show
    educators = Educator.find_by(id: params[:id])
     if educators
      render json: educators
     else 
      render json: {error: "educator not found"}, status: :not_found
    end
  end

  def create
    educators = Educator.create(educator_params)
    render json: educators, status: :created
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    # def set_educator
    #   @educator = Educator.find(params[:id])
    # end

    # Only allow a list of trusted parameters through.
    def educator_params
      params.require(:educator).permit(:first_name, :last_name, :email, :password_digest, :school_id, :isadmin)
    end
end
