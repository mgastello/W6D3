class UsersController < ApplicationController
  def index
    @users = User.all
    render json: @users
    # render plain: "I'm in the index action!"
  end

  def create
    user = User.new(params.require(:user).permit(:name, :email))
    # User.new(params[:user])

    # if @user.save
    #     redirect_to user_url(@user)
    # else
    #     render json: @user.errors.full_messages, status: 422
    # end
    user.save!
    render json: user
  end

  def show
    def show
        @user = User.find(params[:id])
        render json: @user
    end
  end
end