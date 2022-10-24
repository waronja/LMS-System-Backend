class SchoolOwnersController < ApplicationController
<<<<<<< HEAD
    def index
        @owner = SchoolOwner.all
        render json: @owner, include: [:school]
=======
     def index
        @owners = SchoolOwner.all
        render json: @owners
>>>>>>> 308797b36840ce828625ee0bf0b068fa42faecb4
    end
end
