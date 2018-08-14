class AdvertisementsController < ApplicationController
  def index
    @advertisements = Advertisement.all
  end

  def show
    @advertisements = Advertisement.find(params[:id])
  end

  def new
    @advertisements = Advertisement.new
  end

  def create
    @advertisement = Advertisement.new
    @advertisement.title = params[:advertisement][:title]
    @advertisement.copy = params[:advertisement][:copy]
    @advertisement.price = params[:advertisement][:price]

    if @advertisement.save
      flash[:notice] = "Advertisement successfully saved!"
      redirect_to @advertisement
    else
      flash.now[:alert] = "Advertisement was not saved!"
      render :new
    end
  end
end
