class PlantController < ApplicationController

    def index
        all_plants = Plant.all
        render json: all_plants
    end

    def plant
        plant = Plant.find(params[:id])
        render json: plant
    end

    def newplant
        plant = Plant.create!(plant_params)
        render json: plant, status: :created
    end


  private

  def plant_params
    params.permit(:name, :image, :price)
  end


end
