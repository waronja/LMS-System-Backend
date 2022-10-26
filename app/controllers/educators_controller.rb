class EducatorsController < ApplicationController

  def index
    educators = Educator.all
    render json: educators,include: [:school]
  end
  

  
  # def show
  #   educators = Educator.find_by(id: params[:id])
  #    if educators
  #     render json: educators
  #    else 
  #     render json: {error: "educator not found"}, status: :not_found
  #   end
  # end

  def create
    educator = Educator.create(educator_params)
    if educator
      session[:educator_id] = educator.id
      render json: educator, status: :created
    else
      render json: { error: educator.errors.full_messages }, status: :unprocessable_entity
    end
  end

  #   def show
  #   educator = Educator.find_by(id: session[:educator_id])
  #   if educator
  #     render json: educator
  #   else
  #     render json: { error: "unauthorized" }, status: :unauthorized
  #   end
  # end

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
