class Api::V1::DestinationsController < ApplicationController

    def index
        destinations = Destination.all
        # render json: destinations
        render json: DestinationSerializer.new(ways)
    end

    def create 
        destination.new(destination_params)
        if destination.save
            render json: destination, status: :accepted
        else
            render json: {errors: destination.errors.full_messages}, status: :unproccessible_entity
        end
    end

    private
    
    def destination_params
        params.require(:destination).permit(:name)
    end
end
