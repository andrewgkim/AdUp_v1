class AdViewsController < ApplicationController
  def index
    @ad_views = AdView.user_id
  end


  def show
    @holler = Ad_View.find(params[:id])

  end

  def index
    @ad_views = AdView.all
  end


  def new
    @ad_view = AdView.new
  end

  def create
    @ad_view = AdView.new
    @ad_view.ad_id = params[:ad_id]
    @ad_view.user_id = params[:user_id]

    if @ad_view.save
      redirect_to "/ads/#{@ad_view.ad_id}", :notice => "Happy Viewing!"
    else
      render 'new'
    end
  end

  def edit
    @ad_view = AdView.find(params[:id])
  end

  def update
    @ad_view = AdView.find(params[:id])

    @ad_view.ad_id = params[:ad_id]
    @ad_view.user_id = params[:user_id]

    if @ad_view.save
      redirect_to "/ad_views", :notice => "Ad view updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @ad_view = AdView.find(params[:id])

    @ad_view.destroy

    redirect_to "/ad_views", :notice => "Ad view deleted."
  end


  def my_ad_views
      @views = current_user.ad_views
      @current_ads =current_user.ads
  end


end
