module Api
  module V1
    class TeamsController < ApplicationController
      def index
        render json: Team.all
      end

      def show
        render json: Team.find(params[:id]), include: ['dancers','donations_received']
      end

      def update
        @team =  Team.find(team_params[:id])
        @team.update(team_params)
        render json: {message: "Updated Team!", user: @user, status: 201}
      end

      def create
        @team = Team.new(team_params)
        if @team.save
          render json: {message: "Created Team!", team: @team, status: 201}
        else
          render json: {errors: @team.errors.full_messages}
        end
      end

      private

      def team_params
        params.require(:team).permit(:id, :name, :bio, :photo, :goal)
      end
    end
  end
end
