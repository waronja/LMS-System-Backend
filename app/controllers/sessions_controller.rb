class SessionsController < ApplicationController
    def create
        student = Student.find_by(email: params[:email])
        if student&.authenticate(params[:password])
            session[:student_id] = student.id
            render json: student, status: :created
        else
            render json: { error: "Invalid username or password" }, status: :unauthorized
        end
    end

    def create
        educator = Educator.find_by(email: params[:email])
        if student&.authenticate(params[:password])
            session[:educator_id] = educator.id
            render json: educator, status: :created
        else
            render json: { error: "Invalid username or password" }, status: :unauthorized
        end
    end

    def destroy
        session.delete :student_id
        head :no_content
    end
end
