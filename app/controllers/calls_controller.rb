class CallsController < ApplicationController
 layout nil

 before_filter :find_user, except:[:create, :update]

  def find_user
    @u = User.all
    @user = User.find_by_id(params[:id])
  end

  def index
    @calls = Call.all
    @rank = Call.order(:vote_counter).reverse
  end

  def show
    @call = Call.find_by_id(params[:id])
    @player = Player.find_by_id(params[:id])
    @comments = Comment.all
    @comment = Comment.find_by_id(params[:id])
  end

  def new
    @call = Call.new
  end

  def create
    @call = Call.new
    @call.comit_player_id = params[:comit_player_id]
    @call.fouled_player_id = params[:fouled_player_id]
    @call.comit_team_id = params[:comit_team_id]
    @call.fouled_team_id = params[:fouled_team_id]
    @call.game_id = params[:game_id]
    @call.ref_id = params[:ref_id]
    @call.foul_id = params[:foul_id]
    @call.vote_id = params[:vote_id]
    @call.quarter = params[:quarter]
    @call.time = params[:time]

    if @call.save

      redirect_to calls_url
    else
      render 'new'
    end
  end

  def edit
    @call = Call.find_by_id(params[:id])
  end

  def update
    @call = Call.find_by_id(params[:id])
    @call.comit_player_id = params[:comit_player_id]
    @call.fouled_player_id = params[:fouled_player_id]
    @call.team_id = params[:team_id]
    @call.game_id = params[:game_id]
    @call.ref_id = params[:ref_id]
    @call.foul_type_id = params[:foul_type_id]
    @call.vote_id = params[:vote_id]
    @call.quarter = params[:quarter]
    @call.time = params[:time]

    if @call.save
      redirect_to calls_url
    else
      render 'new'
    end
  end

  def destroy
    @call = Call.find_by_id(params[:id])
    @call.destroy
    redirect_to calls_url
  end
end
