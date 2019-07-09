class NotesController < ApplicationController
  before_action :set_client
  before_action :set_note, only: [:show, :edit, :update, :destroy]

  def index
    @notes = @client.notes.all
  end

  def show
  end

  def new
    @note = @client.notes.new
  end

  def edit
  end

  def create
    @note = @client.notes.create!(note_params)
    
    if @note.save
      flash[:sucess] = 'Note was successfully created.'
      redirect_to client_note_path(@client, @note)
    else
      render :new
      flash[:failure] = 'Note note created.'
    end

  end

  def update
    if @note.update(note_params)
      flash[:success] = 'Note was successfully updated.'
      redirect_to client_note_path(@client, @note)
    else
      render :edit 
      flash[:failure] = 'Note not updated.'
    end
  end

  def destroy
    @note.destroy
    flash[:success] = 'Note deleted.'
    redirect_to client_notes_path(@client, @note)
  end

  private

    def set_client
      @client = Client.find(params[:client_id])
    end

    def set_note
      @note = Note.find(params[:id])
    end

    def note_params
      params.require(:note).permit(:title, :content, :client_id)
    end
end
