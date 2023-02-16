class UsersController < ApplicationController
    skip_before_action :verify_authenticity_token

    def create
        user = User.new(user_params)

        if user.save
            render json: user
            # status: 'created'
        else
            render json: user.errors.full_messages, status: 422
        end
    end

    private

    def user_params
        params.require(:user).permit(:username)
    end
end