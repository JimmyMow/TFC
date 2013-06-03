class UsersController < ApplicationController



  before_filter :find_user, except:[:new_user, :create_user]

  def find_user
    @user = User.find_by_id(params[:id])
  end
  def index
    @users = User.all
  end

  def show
    @user = User.find_by_id(params[:id])
  end

  def new
    @hide_nav_bar = true
    @user = User.new
  end

  def create
    @user = User.new
    @user.first_name = params[:first_name]
    @user.last_name = params[:last_name]
    @user.username = params[:username]
    @user.email = params[:email]
    @user.password = params[:password]
    @user.password_confirmation = params[:password_confirmation]


    if @user.save
      session[:user_id] = @user.id
      redirect_to locker_room_url(@user.id)
    else
      redirect_to new_user_url, :notice => "Sorry! That username is taken."
    end
  end

  def locker_room
    @user = User.find_by_id(session[:user_id])
  end

  def edit
    @user = User.find_by_id(params[:id])
  end

  def update
    @user = User.find_by_id(params[:id])
    @user.first_name = params[:first_name]
    @user.last_name = params[:last_name]
    @user.username = params[:username]
    @user.email = params[:email]
    @user.challenge_rating = params[:challenge_rating]

    if @user.save
      redirect_to locker_room_url(@user), :notice => 'Account updated successfully.'
    else
      redirect_to edit_account_url, :notice => 'Please make sure all fields are filled out correctly.'
    end
  end

  def destroy
    @user = User.find_by_id(params[:id])
    @user.destroy
    redirect_to new_session_url
  end

  def create_team
    redirect_to locker_room_url(@user)
  end
end
