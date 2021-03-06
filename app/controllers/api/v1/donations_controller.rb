module Api
  module V1
    class DonationsController < ApplicationController
      def index
        render json: Donation.all, include: ['dancer', 'donor']
      end

      def show
        render json: Donation.find(params[:id])
      end

      def update
        @donation =  Donation.find(donation_params[:id])
        @donation.save
        render json: {message: "Updated Donation!", status: 201}
      end

      def create
        @donation = Donation.new(donation_params)
        if @donation.save
          render json: {message: "Created Donation!", donation: @donation, status: 201}
        else
          render json: {errors: @donation.errors.full_messages}
        end
      end

      private

      def donation_params
        params.require(:donation).permit(:id, :amount, :message, :created_at, :updated_at, :donor_id, :dancer_id)
      end
    end
  end
end
