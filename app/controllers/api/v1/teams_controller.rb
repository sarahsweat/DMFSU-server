module Api
  module V1
    class TeamsController < ApplicationController
      def index
        render json: Team.all
      end

      def show
        render json: Team.find(params[:id])
      end

      def update
        @team =  Team.find(team_params[:id])
        @team.save
        render json: {message: "Updated Team!", status: 201}
      end

      def create
        team = Team.create(team_params)
        render json: {message: "Created Team!", team: team, status: 201}
      end

      private

      def team_params
        params.require(:team).permit(:id, :name, :bio, :photo, :goal)
      end
    end
  end
end
