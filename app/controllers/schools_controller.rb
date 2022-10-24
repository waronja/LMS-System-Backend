
class SchoolsController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

    def index
        @schools = School.all
        render json: @schools, include: [:school_owner]
    end

    def show
        @school = set_schools
        if @schools
            render json: @schools, status: :ok
        else
            render json: { error: "School not found" }
        end
    end

    def new
        @schools = School.new
    end

    def edit
    end

    def create
        @schools = School.create!(school_params)
        render json: @schools, status: :created
    end
    
    def update
        @schools = set_schools
        @schools.update!(school_params)
        render json: @schools
    end

    def destroy
        @schools = set_schools
        @schools.destroy
        head :no_content
    end

    private

    def set_schools
        @schools = School.find_by(id: params[:id])
    end

    def render_unprocessable_entity_response(exception)
        render json: { errors: exception.record.errors.full_messages }, status: :unprocessable_entity
    end

    def school_params
        params.require(:school).permit(:name, :description)
    end
end


