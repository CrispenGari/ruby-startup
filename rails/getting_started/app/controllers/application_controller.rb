class ApplicationController < ActionController::Base
  add_flash_types :info, :warning, :error
  before_action :set_current_user

  def set_current_user
    if session[:user_id]
      Current.user = User.find_by(id: session[:user_id])
    end
  end

  def require_user_logged_in!
    flash.keep(:alert)
    redirect_to sign_in_path, alert: "You need to be authenticated!!" if Current.user.nil?
  end
end
