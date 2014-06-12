class AdsController < ApplicationController
  def index
    @ads = Ad.all
  end


 def show
       @ad = Ad.find(params[:id])
  end


  def new
    @ad = Ad.new
  end

  def create
    @ad = Ad.new
    @ad.ad_url = params[:ad_url]
    @ad.cpv = params[:cpv]
    @ad.company = params[:company]

    if @ad.save
      redirect_to "/ads", :notice => "Ad created successfully."
    else
      render 'new'
    end
  end

  def edit
    @ad = Ad.find(params[:id])
  end

  def update
    @ad = Ad.find(params[:id])

    @ad.ad_url = params[:ad_url]
    @ad.cpv = params[:cpv]
    @ad.company = params[:company]

    if @ad.save
      redirect_to "/ads", :notice => "Ad updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @ad = Ad.find(params[:id])

    @ad.destroy

    redirect_to "/ads", :notice => "Ad deleted."
  end

end
