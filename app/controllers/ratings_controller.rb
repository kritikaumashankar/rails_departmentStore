class RatingsController < ApplicationController
  before_action :set_item
  
  def new
    @rating = Rating.new
  end

  def create
    @rating = @item.ratings.new(rating_params)
    if @rating.save
      redirect_to departmental_item_path(@item.departmental_id, @item)
    else
      render :new
    end
  end
  private

    def set_item
      @item = Item.find(params[:item_id])
    end

    def rating_params
      params.require(:rating).permit(:rate)
    end
end
