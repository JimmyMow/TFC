class TextsController < ApplicationController

  def index
    @texts = Text.all
  end

  def show
    @text = Text.find_by_id(params[:id])
  end

  def new
    @text = Text.new
  end

  def create
    @text = Text.new
    @text.comment = params[:comment]
    @text.call_id = params[:call_id]

    if @text.save
      redirect_to texts_url
    else
      render 'new'
    end

     respond_to do |format|
      if @text.save
        format.js
        format.html { redirect_to @text, notice: 'text was successfully created.' }
        format.json { render json: @text, status: :created, location: @text }
      else
        format.html { render action: "new" }
        format.json { render json: @text.errors, status: :unprocessable_entity }
      end

  end

  def edit
    @text = Text.find_by_id(params[:id])
  end

  def update
    @text = Text.find_by_id(params[:id])
    @text.comment = params[:comment]
    @text.call_id = params[:call_id]

    if @text.save
      redirect_to texts_url
    else
      render 'new'
    end
  end

  def destroy
    @text = Text.find_by_id(params[:id])
    @text.destroy
    redirect_to texts_url
  end
end
