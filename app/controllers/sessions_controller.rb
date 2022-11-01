class SessionsController < ApplicationController
  #login
   
    # POST '/login'
    def create
      student = Student.find_by(email: params[:email])
      educator = Educator.find_by(email: params[:email])
      school_owner=SchoolOwner.find_by(email:params[:email])
      if educator&.authenticate(params[:password])
        session[:educator_id] = educator.id
        render json: educator, status: :ok

      elsif student&.authenticate(params[:password])
        session[:student_id] = student.id
        render json: student, status: :ok

      elsif school_owner&.authenticate(params[:password])
        session[:school_owner_id] = school_owner.id
        render json: school_owner,status: :ok
 
      else
        render json: { errors: 'Invalid Password or Email'}, status: :unauthorized
      end
    end

 
    # DELETE '/logout'
    # def destroy
    #   session.delete :student_id
    # end

    # # def destroy
    # #   session.delete :school_owner_id 
    # # end

    # # def destroy
    # #   session.delete :educator_id
    # # end

    def destroy
      if session[:educator_id]
        session.delete :educator_id
        head :no_content
      elsif session[:student_id]
        session.delete :student_id
        head :no_content
      elsif session[:school_owner_id]
        session.delete :school_owner_id
        head :no_content
      else
        render json: {errors: ["You must be logged in to access this content"] }, status: :unauthorized
      end
    end


end
