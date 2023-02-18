
class SessionController < ApplicationController
  def destroy
    session[:user_id] = nil
    flash.keep(:notice)
    redirect_to root_path, notice: "You are logged out!"
  end

  def new
  end

  def create
    user = User.find_by(email: params[:email])
    if user.present? && user.authenticate(params[:password])
      session[:user_id] = user.id
      flash.keep(:notice)
      redirect_to root_path, notice: "You are logged in as #{user[:username]}"
    else
      flash[:alert] = "Invalid credentials!!"
      render :new, status: :unprocessable_entity, content_type: "text/html"
    end
  end
end
