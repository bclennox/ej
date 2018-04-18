class DemandsController < ApplicationController
  before_action :verify_user

  def create
    Demand.create!(demand_params)
    redirect_to root_path
  end

  def update
    demand = Demand.find(params[:id])
    demand.update(met: params[:met])
    redirect_to root_path
  end

  private

  def demand_params
    params.require(:demand).permit(:description)
  end

  def verify_user
    head :unauthorized unless logged_in?
  end
end
