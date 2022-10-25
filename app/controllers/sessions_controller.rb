class SessionsController < ApplicationController

    def create
        student = Student.find_by(email: params[:email])
         if student&.authenticate(params[:password])
        session[:student_id] = student.id
        render json: student,status: :created
         else
        render json: { error: "Invalid email or password" }, status: :unauthorized
         end
    end

     # destroy action for logging out 
     def destroy 
        session.delete :student_id 
        head :no_content
    end
end
