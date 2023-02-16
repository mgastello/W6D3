class UsersController < ApplicationController
  def index
    @users = User.all
    render json: @users
    # render plain: "I'm in the index action!"
  end

  def create
    # user = User.new(params.require(:user).permit(:name, :email))
    user = User.new(user_params)
    # User.new(params[:user])

    # if @user.save
    #     redirect_to user_url(@user)
    # else
    #     render json: @user.errors.full_messages, status: 422
    # end
    if user.save
      render json: user
    else
      render json: user.errors.full_messages, status: 422
    end
  end

  def show
    @user = User.find(params[:id])
    render json: @user
  end

  private
  
  def user_params
    params.require(:user).permit(:name, :email)
  end
end