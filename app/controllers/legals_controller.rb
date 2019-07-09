class LegalsController < ApplicationController
  before_action :set_client
  before_action :set_legal, only: [:show, :edit, :update, :destroy]

  def index
    @legals = @client.legals.all
  end

  def show
  end

  def new
    @legal = @client.legals.new
  end

  def edit
  end

  def create
    @legal = @client.legals.create!(legal_params)

    if @legal.save
      flash[:success] = 'Legal was successfully created.'
      redirect_to client_legal_path(@client, @legal)
    else
      flash[:failure] = 'Legal not created'
      render :new
    end
  end

  def update
    if @legal.update(legal_params)
      flash[:success] = 'Legal was successfully updated.'
      redirect_to client_legal_path(@client, @legal)
    else
      flash[:failure] = 'Legal not updated'
      render :edit
    end
  end

  def destroy
    @legal.destroy
    flash[:success] = "Note deleted."
    redirect_to client_legal_path(@client, @legal)
  end

  private

    def set_client
      @client = Client.find(params[:client_id])
    end

    def set_legal
      @legal = Legal.find(params[:id])
    end

    def legal_params
      params.require(:legal).permit(:subject, :body, :client_id)
    end
end
