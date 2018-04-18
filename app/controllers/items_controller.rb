class ItemsController < ApplicationController
  decorates_assigned :demand, :demands, :items

  def index
    @demand = Demand.new
    @demands = (logged_in? ? Demand.all : Demand.unmet).order(created_at: :desc)
    @items = Item.order(created_at: :desc)
  end
end
