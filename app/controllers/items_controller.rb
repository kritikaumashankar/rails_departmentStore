class ItemsController < ApplicationController
  before_action :set_departmental
  before_action :set_items, except: [:new, :create, :index]
  def index
    @items = @departmental.items
  end

  def show
    
  end

  def new
    @item = @departmental.items.new
    render partial: "form"
  end

  def create
    @item = @departmental.items.new(item_params)
    if @item.save
      redirect_to departmental_item_path(@departmental.id, @item)
    else
      render :new
    end
  end
  
  def edit
    render partial: "form"
  end

  def update
    if @item.update(item_params)
      redirect_to departmental_item_path(@departmental.id, @item.id)
    else
      render :edit
    end

  end

  def destroy
    @item.destroy
    redirect_to departmental_items_path

  end
  private 
  def set_departmental
    @departmental = Departmental.find(params[:departmental_id])
  end

  def set_items
    @item = Item.find(params[:id])
  end

  def item_params
    params.require(:item).permit(:name, :price)
  end
end
