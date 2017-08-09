class Api::V1::AuthController < ApplicationController
  before_action :authorize_user!, only: [:show]

  def show
    render json: {
      id: current_user.id,
      email: current_user.email
    }
  end

  def create
    user = User.find_by(email: params[:email])
    if user.present?
      render json: {user: user}
    else
      render json: {
        error: 'Email incorrect'
      }, status: 422
    end
  end
end
