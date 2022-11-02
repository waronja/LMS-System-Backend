class SchoolOwnersController < ApplicationController
    def index
        @owners = SchoolOwner.all
        render json: @owners
    end
    
    def create
        school_owner = SchoolOwner.create!(school_owner_params)
        session[:school_owner_id] = school_owner.id
        render json: school_owner
    end
    def destroy
        school_owner = find_school_params
        school_owner.destroy
        head :no_content
    end

    def show
      school_owner = SchoolOwner.find_by(id: session[:school_owner_id])
      if school_owner
        render json: school_owner
      else
      render json: { error: "unauthorized" }, status: :unauthorized
      end
    end


    private
    def school_owner_params
        params.permit(:first_name,:last_name,:email,:password,:password_confirmation,:isadmin)
    end

    def find_school_params
        SchoolOwner.find(params[:id])
    end
end
