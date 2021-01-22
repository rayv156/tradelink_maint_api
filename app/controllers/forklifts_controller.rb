class ForkliftsController < ApplicationController
  load_and_authorize_resource
  before_action :set_forklift, only: [:show, :update, :destroy]

  # GET /forklifts
  def index
    @forklifts = Forklift.all

    render json: @forklifts
  end

  # GET /forklifts/1
  def show
    render json: @forklift
  end

  # POST /forklifts
  def create
    @forklift = Forklift.new(forklift_params)

    if @forklift.save
      render json: @forklift, status: :created, location: @forklift
    else
      render json: @forklift.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /forklifts/1
  def update
    if @forklift.update(forklift_params)
      render json: @forklift
    else
      render json: @forklift.errors, status: :unprocessable_entity
    end
  end

  # DELETE /forklifts/1
  def destroy
    @forklift.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_forklift
      @forklift = Forklift.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def forklift_params
      params.require(:forklift).permit!
    end
end
