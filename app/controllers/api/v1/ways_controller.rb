class Api::V1::WaysController < ApplicationController

    def index
        ways = Way.all
        render json: ways
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
