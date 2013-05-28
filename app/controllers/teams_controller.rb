class TeamsController < ApplicationController

  def index
    @teams = Team.all
  end

  def show
    @team = Team.find_by_id(params[:id])
  end

  def new
    @team = Team.new
  end

  def create
    @team = Team.new
    @team.name = params[:name]
    @team.coach = params[:coach]
    @team.game_id = params[:game_id]
    @team.call_id = params[:call_id]
    
    if @team.save
      redirect_to teams_url
    else
      render 'new'
    end
  end

  def edit
    @team = Team.find_by_id(params[:id])
  end

  def update
    @team = Team.find_by_id(params[:id])
    @team.name = params[:name]
    @team.coach = params[:coach]
    @team.game_id = params[:game_id]
    @team.call_id = params[:call_id]
    
    if @team.save
      redirect_to teams_url
    else
      render 'new'
    end
  end

  def destroy
    @team = Team.find_by_id(params[:id])
    @team.destroy
    redirect_to teams_url
  end
end
