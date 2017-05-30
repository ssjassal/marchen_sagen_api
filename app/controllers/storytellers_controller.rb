class StorytellersController < ApplicationController
  before_action :set_storyteller, only: [:show, :update, :destroy]

  # GET /storytellers
  def index
    @storytellers = Storyteller.all

    render json: @storytellers
  end

  # GET /storytellers/1
  def show
    render json: @storyteller
  end

  # POST /storytellers
  def create
    @storyteller = Storyteller.new(storyteller_params)

    if @storyteller.save
      render json: @storyteller, status: :created, location: @storyteller
    else
      render json: @storyteller.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /storytellers/1
  def update
    if @storyteller.update(storyteller_params)
      render json: @storyteller
    else
      render json: @storyteller.errors, status: :unprocessable_entity
    end
  end

  # DELETE /storytellers/1
  def destroy
    @storyteller.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_storyteller
      @storyteller = Storyteller.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def storyteller_params
      params.require(:storyteller).permit(:name, :email, :username, :password, :total)
    end
end
