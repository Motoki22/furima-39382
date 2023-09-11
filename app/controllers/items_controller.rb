class ItemsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path
    else
      render :new # バリデーションエラー時には再び出品ページを表示します。
    end
  end

  private

  def item_params
    params.require(:item).permit(:item_name, :price, :explain, :category_id, :condition_id, :fee_status_id, :prefecture_id, :delivery_schedule_id).merge(user_id: current_user.id)
  end
end
