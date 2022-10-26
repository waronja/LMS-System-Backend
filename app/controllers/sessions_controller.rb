class SessionsController < ApplicationController
  def create
    # educator = Educator.find_by(email: params[:email])
    student = Student.find_by(email: params[:email])

    if student&.authenticate(params[:password])
      session[:user_id] = student.id
      session[:is_educ] = 0
      render json: student, status: :ok

      # educator&.authenticate(params[:password])
      # session[:user_id] = educator.id
      # session[:is_educ] = 1
      # render json: educator, status: :ok

  
     
    else
      render json: { errors: 'Invalid Password or Username'}, status: :unauthorized
    end

  end
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
    # def create
    #     educator = Educator.find_by(email: params[:email])
    #      if educator&.authenticate(params[:password])
    #     session[:educator_id] = educator.id
    #     render json: educator,status: :created
    #      else
    #     render json: { error: "Invalid email or password" }, status: :unauthorized
    #      end
    # end

     # destroy action for logging out 
     def destroy 
        session.delete :educator_id 
        head :no_content
    end
end
