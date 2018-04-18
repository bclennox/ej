class ItemsController < ApplicationController
  decorates_assigned :demand, :demands, :item, :items

  def index
    @demand = Demand.new
    @demands = (logged_in? ? Demand.all : Demand.unmet).order(created_at: :desc)

    @item = Item.new(sender: session[:sender])
    @items = Item.order(created_at: :desc)
  end

  def create
    item = Item.create!(item_params)
    session[:sender] = item.sender

    redirect_to root_path
  end

  private

  def item_params
    params.require(:item).permit(:sender, :description)
  end
end
