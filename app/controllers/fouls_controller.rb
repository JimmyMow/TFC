class FoulsController < ApplicationController

  def index
    @fouls = Foul.all
  end

  def show
    @foul = Foul.find_by_id(params[:id])
  end

  def new
    @foul = Foul.new
  end

  def create
    @foul = Foul.new
    @foul.fouls_type = params[:fouls_type]
    
    if @foul.save
      redirect_to fouls_url
    else
      render 'new'
    end
  end

  def edit
    @foul = Foul.find_by_id(params[:id])
  end

  def update
    @foul = Foul.find_by_id(params[:id])
    @foul.fouls_type = params[:fouls_type]
    
    if @foul.save
      redirect_to fouls_url
    else
      render 'new'
    end
  end

  def destroy
    @foul = Foul.find_by_id(params[:id])
    @foul.destroy
    redirect_to fouls_url
  end
end
