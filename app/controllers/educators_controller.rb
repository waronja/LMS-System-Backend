class EducatorsController < ApplicationController
  before_action :authorize
  skip_before_action :authorize ,only:[:show]
  def index
    educators = Educator.all
    render json: educators
  end
  


# signup request for educator
    def create
      educator = Educator.create(educator_params)
      if educator
        session[:educator_id] = educator.id
        render json: educator
      else
        render json: { error: educator.errors.full_messages }, status: :unprocessable_entity
      end
    end

    # request me
    def show
        educator = Educator.find_by(id: session[:educator_id])
        if educator
          session[:educator_id] = educator.id
          render json: educator
        else
          render json: { error: "unauthorized" }, status: :unauthorized
        end
    end

  private
    # Use callbacks to share common setup or constraints between actions.
    # def set_educator
    #   @educator = Educator.find(params[:id])
    # end

    # Only allow a list of trusted parameters through.
    def educator_params
      params.permit(:first_name, :last_name, :email, :password, :password_confirmation, :school_id, :isadmin)
    end

     def authorize
        return render json: { error: "Not authorized" }, status: :unauthorized unless session.include? :school_owner_id
   end
end
