class UpvotesController < ApplicationController

  def index
    @upvotes = Upvote.all
  end

  def show
    @upvote = Upvote.find_by_id(params[:id])
  end

  def new
    @upvote = Upvote.new
  end

  def create
    @upvote = Upvote.new
    @upvote.user_id = params[:user_id]
    @upvote.call_id = params[:call_id]

    if @upvote.save
      redirect_to call_url(params[:call_id])
    else
      render 'new'
    end
  end

  def edit
    @upvote = Upvote.find_by_id(params[:id])
  end

  def update
    @upvote = Upvote.find_by_id(params[:id])
    @upvote.user_id = params[:user_id]
    @upvote.call_id = params[:call_id]

    if @upvote.save
      redirect_to upvotes_url
    else
      render 'new'
    end
  end

  def destroy
    @upvote = Upvote.find_by_id(params[:id])
    @upvote.destroy
    redirect_to upvotes_url
  end
end
