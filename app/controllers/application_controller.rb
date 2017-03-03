class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  helper_method :admin_user
  
  def admin_user
  	current_user.admin.present?
  end
end
