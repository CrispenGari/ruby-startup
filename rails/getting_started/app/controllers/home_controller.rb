
class HomeController < ApplicationController
  def index
    flash.now.alert = "This is an alert message!!"
    flash.now.notice = "This is a notice"
    flash.now[:info] = "This is infomation message"
    flash.now[:warning] = "This is warning message"
    flash.now[:error] = "This is error message"
  end
end
