class NotesController < ApplicationController
  load_and_authorize_resource
  before_action :set_note, only: [:show, :update, :destroy]

  # GET /notes
  def index
    if current_user.is_admin
      @notes = Note.all
    render json: @notes
    else
    @notes = Note.where(user_id: @user.id)
    render json: @notes
    end
  end

  # GET /notes/1
  def show
    render json: @note
  end

  # POST /notes
  def create
    @note = Note.new(note_params)
    @note.user_id = current_user.id
    if @note.save
      render json: @note, status: :created, location: @note
    else
      render json: @note.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /notes/1
  def update
    if @note.update(note_params)
      render json: @note
    else
      render json: @note.errors, status: :unprocessable_entity
    end
  end

  # DELETE /notes/1
  def destroy
    @note.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_note
      @note = Note.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def note_params
      params.require(:note).permit(:message, :user_id)
    end
end
