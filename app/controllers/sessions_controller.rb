class SessionsController < ApplicationController
    #login
    # def create
    #     student = Student.find_by(email: params[:email])
    #      if student&.authenticate(params[:password])
    #     session[:student_id] = student.id
    #     render json: student,status: :created
    #      else
    #     render json: { error: "Invalid email or password" }, status: :unauthorized
    #      end
    # end
# login educator
    def create
        educator = Educator.find_by(email: params[:email])
         if educator&.authenticate(params[:password])
        session[:educator_id] = educator.id
        render json: educator,status: :created
         else
        render json: { error: "Invalid email or password" }, status: :unauthorized
         end
    end

     # destroy action for logging out 
     def destroy 
        session.delete :educator_id 
        head :no_content
    end
end
