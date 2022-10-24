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
end
