class SignupController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      flash.keep(:notice)
      redirect_to root_path, notice: "You are logged in as #{@user[:username]}"
    else
      puts @user.errors.full_messages
      render :new, status: :unprocessable_entity, content_type: "text/html"
    end
  end

  private
  def user_params
    puts params
    params.require(:user).permit(:email, :password, :password_confirmation, :username)
  end
end
