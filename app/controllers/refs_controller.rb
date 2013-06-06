class RefsController < ApplicationController

  def index
    @refs = Ref.all
  end

  def show
    @ref = Ref.find_by_id(params[:id])
    @refs = Ref.all
  end

  def new
    @ref = Ref.new
  end

  def create
    @ref = Ref.new
    @ref.name = params[:name]
    @ref.number = params[:number]
    @ref.game_id = params[:game_id]

    if @ref.save
      redirect_to refs_url
    else
      render 'new'
    end
  end

  def edit
    @ref = Ref.find_by_id(params[:id])
  end

  def update
    @ref = Ref.find_by_id(params[:id])
    @ref.name = params[:name]
    @ref.number = params[:number]
    @ref.game_id = params[:game_id]

    if @ref.save
      redirect_to refs_url
    else
      render 'new'
    end
  end

  def destroy
    @ref = Ref.find_by_id(params[:id])
    @ref.destroy
    redirect_to refs_url
  end
end
