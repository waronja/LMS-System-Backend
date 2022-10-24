class SchoolOwnersController < ApplicationController
     def index
        @owners = SchoolOwner.all
        render json: @owners
    end
end
