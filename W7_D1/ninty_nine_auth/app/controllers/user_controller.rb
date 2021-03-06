class UsersController < ApplicationController

    # def index
    #     users = User.all 
    #     render json: users
    # end

    def new
    # debugger
        user = User.new
        render :user
    end

    def create
        user = User.new(user_params)
        if user.save
            render json: user
        else
            render json: user.errors.full_messages, status: 422
        end
    end

    private

    def user_params
        params.require(:user).permit(:user_name, :password)
    end


end
