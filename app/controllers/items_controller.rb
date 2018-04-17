class ItemsController < ApplicationController
  decorates_assigned :demands, :items

  def index
    @demands = Demand.unmet
    @items = Item.order(created_at: :desc)
  end
end
