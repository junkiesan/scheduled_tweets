class PagesController < ApplicationController

  def home
    flash[:notice] = "Welcome bro"
    if session[:user_id]
      @user = User.find_by(id: session[:user_id])
    end
  end

  def about
  end

end