class RequestsController < ApplicationController
  load_and_authorize_resource
  before_action :set_request, only: [:show, :update, :destroy]

  # GET /requests
  def index
    if current_user.is_admin
    @requests = Request.all

    render json: @requests.to_json(include: :repairs)
    else
      @requests = Request.where(user_id: @user.id)
      render json: @requests.to_json(include: :repairs)
    end
  end

  # GET /requests/1
  def show
    render json: @request.to_json(include: :repairs)
  end

  # POST /requests
  def create
    @request = Request.new(request_params)

    if @request.save
      render json: @request, status: :created, location: @request
    else
      render json: @request.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /requests/1
  def update
    if @request.update(request_params)
      render json: @request
    else
      render json: @request.errors, status: :unprocessable_entity
    end
  end

  # DELETE /requests/1
  def destroy
    @request.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_request
      @request = Request.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def request_params
      params.require(:request).permit(:date, :equipment, :odometer, :status)
    end
end
