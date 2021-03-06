class ItemsController < ApplicationController
  before_action :verify_user, only: [:destroy]
  decorates_assigned :demand, :demands, :item, :items

  def index
    @demand = Demand.new
    @demands = Demand.order(:met).order(created_at: :desc)

    @item = Item.new(sender: session[:sender])
    @items = Item.order(created_at: :desc)
  end

  def create
    item = Item.create!(item_params)
    session[:sender] = item.sender

    redirect_to root_path
  end

  def destroy
    @item = Item.destroy(params[:id])
  end

  private

  def item_params
    params.require(:item).permit(:sender, :description)
  end
end
