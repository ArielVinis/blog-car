class ClientsController < ApplicationController
  before_action :set_client, only: %i[ show edit update destroy ]

  def index
    @clients = Client.all
  end

  def show; end

  def new
    @client = Client.new
  end

  def edit; end

  def create
    @client = Client.new(client_params)

    return redirect_to @client, notice: "Client was successfully created." if @client.save

    render :new, status: :unprocessable_entity
  end

  def update
    @client.update(client_params)
      
    return redirect_to @client, notice: "Client was successfully updated." if @client.save

    render :edit, status: :unprocessable_entity
  end

  def destroy
    @client.destroy!

    redirect_to clients_path, status: :see_other, notice: "Client was successfully destroyed." if @client.destroy

    render :edit, status: :unprocessable_entity
  end

  private
  
    def set_client
      @client = Client.find(params.expect(:id))
    end

    def client_params
      params.require(:client).permit(:name, :age)
    end
end
