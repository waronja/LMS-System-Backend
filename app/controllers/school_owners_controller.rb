class SchoolOwnersController < ApplicationController
    def index
        @school_owner = SchoolOwner.all
        render json: @school_owner, status: :ok
    end

    def show
        @school_owner = set_school_owners
        if @school_owner
            render json: @school_owner, status: :ok
        else
            render json: { error: "School_Owners not found" }
        end
    end

    def create
        @school_owner = SchoolOwner.create!(school_owner_params)
        render json: @school_owner, status: :created
    end

    private
    def set_school_owners
        @school_owner = SchoolOwner.find_by(id: params[:id])
    end

    def school_owner_params
        params.permit(:first_name, :last_name, :email, :password_digest, :isadmin)
    end

end
