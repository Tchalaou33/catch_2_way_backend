class Api::V1::WaysController < ApplicationController

    def index
        ways = Way.all
        # options = {
        #     # include assocations destination
        #     include: [:destination]
        # }
        # render json: ways
        render json: WaySerializer.new(ways)
        # render json: WaySerializer.new(ways, options)
    end

    def create
        way = Ways.new(way_params)
        if way.save
            render json: way, status: :accepted
        else
            render json: {errors: way.errors.full_messages}, Status: :unprocessible_entity

        end
    end

    private
    
    def way_params
        params.require(:way).permit(:color, :description, :destination_id)
    end


end
