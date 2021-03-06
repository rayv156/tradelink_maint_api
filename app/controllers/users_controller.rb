class UsersController < ApplicationController
    before_action :authorized, only: [:auto_login]
  
      # REGISTER
    def create
    @user = User.create(user_params)
    if @user.valid?
        token = encode_token({user_id: @user.id, is_admin: @user.is_admin})
        render json: {user: @user, token: token}
    else
        render json: {error: "Invalid username or password"}
    end
    end

    # LOGGING IN
    def login
    @user = User.find_by(username: params[:username])

    if @user && @user.authenticate(params[:password])
        token = encode_token({user_id: @user.id, is_admin: @user.is_admin})
        render json: {user: @user, token: token, is_admin: @user.is_admin}
    elsif @user && !@user.authenticate(params[:password])
        render json: {error: "User exists but invalid password"}
    else 
        render json: {error: "Username does not exist"}
    end
    end


    def auto_login
    render json: @user
    end

    private

    def user_params
    params.permit(:username, :password, :is_admin, :user)
    end
end
