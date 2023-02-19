class PasswordMailer < ApplicationMailer
  def reset
    @token = params[:user].signed_id(purporse: "password_reset", expires_in: 15.minutes)

    mail to: params[:user].email
  end
end
