class VehiclesController < ApplicationController
    before_action :set_vehicle, only: [:show, :edit, :update, :destroy]

    # GET /vehicles
    def index
        @vehicles = Vehicle.all.order(created_at: :asc)
    end

    # GET /vehicles/new
    def new
        @vehicle = Vehicle.new
    end

    def create
        @vehicle = Vehicle.create(vehicle_params)

        # If the vehicle is saved, redirect to the vehicle show page
        # Guard clause
        return redirect_to @vehicle if @vehicle.save

        render :new
    end

    # GET /vehicles/:id
    def show; end

    # GET /vehicles/:id/edit
    def edit; end

    # PATCH /vehicles/:id
    def update
        @vehicle.update(vehicle_params)

        return redirect_to @vehicle if @vehicle.save

        render :edit
    end

    # DELETE /vehicles/:id
    def destroy
        @vehicle.destroy

        return redirect_to vehicles_path if @vehicle.destroy

        render :edit
    end

    private

    # GET /vehicles/:id
    def set_vehicle
        @vehicle = Vehicle.find(params[:id])
    end

    # POST /vehicles
    def vehicle_params
        params.require(:vehicle).permit(:brand, :model, :year, :kind)
    end
end
