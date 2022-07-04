class SpicesController < ApplicationController
    def index 
        spices = Spice.all 
        render json: spices
    end

    def create 
        spice = Spice.create(spices_params)
        render json: spice, status: :created
    end

    def update
        spice = Spice.find(params[:id])
        spice.update(spices_params)
        render json: spice
    end

    def destroy 
        spice = Spice.find(params[:id])
        spice.destroy 
        head :no_content
    end 

    private

    def spices_params
        params.permit(:id, :spice, :title, :image, :description, :notes, :rating, :created_at, :updated_at)
    end
end
