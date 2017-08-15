module Api
  module V1
    class UsersController < ApplicationController
      def index
        render json: User.all
      end

      def show
        render json: User.find(params[:id])
      end

      def update
        @user =  User.find(user_params[:id])
        @user.update(user_params)
        render json: {message: "Updated User!", user: @user, status: 201}

      end

      def create
        user = User.create(user_params)
        render json: {message: "Created User!", user: user, status: 201}
      end

      def graph
        render json: [User.three, User.five, User.seven_five, User.thousand, User.fifteen, User.two, User.two_two ]
      end

      private

      def user_params
        params.require(:user).permit(:id, :first_name, :last_name, :email, :zip, :photo, :bio, :goal, :team_captain, :team_id)
      end
    end
  end
end
