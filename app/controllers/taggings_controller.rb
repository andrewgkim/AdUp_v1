class TaggingsController < ApplicationController
  def index
    @taggings = Tagging.all
  end

  def show
    @tagging = Tagging.find(params[:id])
  end

  def new
    @tagging = Tagging.new
  end

  def create
    @tagging = Tagging.new
    @tagging.category_id = params[:category_id]
    @tagging.ad_id = params[:ad_id]

    if @tagging.save
      redirect_to "/taggings", :notice => "Tagging created successfully."
    else
      render 'new'
    end
  end

  def edit
    @tagging = Tagging.find(params[:id])
  end

  def update
    @tagging = Tagging.find(params[:id])

    @tagging.category_id = params[:category_id]
    @tagging.ad_id = params[:ad_id]

    if @tagging.save
      redirect_to "/taggings", :notice => "Tagging updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @tagging = Tagging.find(params[:id])

    @tagging.destroy

    redirect_to "/taggings", :notice => "Tagging deleted."
  end
end
