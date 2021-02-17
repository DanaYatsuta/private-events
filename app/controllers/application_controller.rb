class ApplicationController < ActionController::Base
  helper_method :current_user

  def current_user
    begin
      current_user = User.find(session[:current_user_id])
    rescue
    end
  end

  def user_signed_in?
    return current_user.nil? ? false : true
  end
end
