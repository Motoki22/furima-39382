class ItemsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update]
  before_action :set_item, only: [:show, :edit, :update]
  before_action :ensure_correct_user, only: [:edit, :update]

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path
    else
      render :new
    end
  end

  def index
    @items = Item.order(created_at: :desc)
  end

  def show
  end

  def edit
  end

  def update
    if @item.update(item_params)
      redirect_to item_path(@item) 
    else
      render :edit  
    end
  end

  private

  def item_params
    params.require(:item).permit(:image, :item_name, :price, :explain, :category_id, :condition_id, :fee_status_id,
                                 :prefecture_id, :delivery_schedule_id).merge(user_id: current_user.id)
  end

  def set_item
    @item = Item.find(params[:id])
  end

  def ensure_correct_user
    unless current_user.id == @item.user_id
      redirect_to root_path 
    end
  end
end
