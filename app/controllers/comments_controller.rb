class CommentsController < ApplicationController

  def index
    @comments = Comment.all
  end

  def show
    @comment = Comment.find_by_id(params[:id])
  end

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new
    @comment.user_comment = params[:user_comment]
    @comment.call_id = params[:call_id]
    
    if @comment.save
      redirect_to comments_url
    else
      render 'new'
    end
  end

  def edit
    @comment = Comment.find_by_id(params[:id])
  end

  def update
    @comment = Comment.find_by_id(params[:id])
    @comment.user_comment = params[:user_comment]
    @comment.call_id = params[:call_id]
    
    if @comment.save
      redirect_to comments_url
    else
      render 'new'
    end
  end

  def destroy
    @comment = Comment.find_by_id(params[:id])
    @comment.destroy
    redirect_to comments_url
  end
end
