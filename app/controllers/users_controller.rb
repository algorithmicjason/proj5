class UsersController < ApplicationController
    def index 
        users = User.all
        render json: users
    end

    def create
        byebug
    end

    def show
        byebug
    end

    def update
    end

end
