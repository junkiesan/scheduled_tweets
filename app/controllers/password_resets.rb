class PasswordResetsController < ApplicationController

  def new
    
  end

  def create
    @user = User.find_by(email: params[:email])

    if @user.present?
      PasswordMailer.with(user: @user).reset.deliver_later
    else
    end
    redirect_to root_path, notice: "Email sent with your password"
  end
end