class UsersController < ApplicationController
    def index
        users = User.all
        render json: users
    end

    def create
        render json: params 
    end

    def show
        user = User.find(params[:id])
        render json: user
    end

    def update
      user = User.find(params[:id]) # user = User.find(params[:id])

      if user.update(user_params)
        redirect_to "/users/#{user.id}"
        render json: user
      else
        render json: user.errors.full_messages, status: :unprocessable_entity
      end
    end

    def create
      user = User.new(user_params)
        if user.save
          render json: user
        else
          render json: user.errors.full_messages, status: :unprocessable_entity
        end
    end

    def delete
      user = User.find(params[:id])
      user.destroy
      render json: user
    end

    private

    def user_params
      params.require(:user).permit(:username, :email)
    end
end