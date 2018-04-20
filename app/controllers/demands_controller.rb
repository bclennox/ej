class DemandsController < ApplicationController
  before_action :verify_user
  decorates_assigned :demand

  def create
    Demand.create!(demand_params)
    redirect_to root_path
  end

  def update
    @demand = Demand.find(params[:id])
    @demand.update(met: params[:met])
  end

  def destroy
    @demand = Demand.destroy(params[:id])
  end

  private

  def demand_params
    params.require(:demand).permit(:description)
  end
end
