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

    private
    def set_school_owners
        @school_owner = SchoolOwner.find_by(id: params[:id])
    end
    
end
