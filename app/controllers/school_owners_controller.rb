class SchoolOwnersController < ApplicationController
    def index
        @owner = SchoolOwner.all
        render json: @owner, include: [:school]
    end
end
