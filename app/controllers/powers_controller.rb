class PowersController < ApplicationController
    def index
        render json: Power.all, status: :ok
    end

    def show
        power = Power.find(params[:id])

        render json: power, status: :ok, serializer: PowerHeroPowerSerializer
    end
end
