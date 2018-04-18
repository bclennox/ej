class ApplicationController < ActionController::Base
  helper_method :current_user, :logged_in?

  private

  def current_user
    unless defined?(@current_user)
      @current_user = User.where(id: session[:user_id]).first
    end

    @current_user
  end

  def logged_in?
    current_user.present?
  end
end
