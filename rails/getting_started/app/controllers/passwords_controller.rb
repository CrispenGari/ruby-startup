
class PasswordsController < ApplicationController
  before_action :require_user_logged_in!

  def edit
  end

  def update
    if Current.user.update(password_params)
      flash.keep(:notice)
      redirect_to root_path, notice: "Password has been updated!!"
    else
      render :edit, status: :unprocessable_entity, content_type: "text/html"
    end
  end

  private
  def password_params
    params.require(:user).permit(:password, :password_confirmation)
  end
end
