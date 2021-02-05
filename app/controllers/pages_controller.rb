class PagesController < ApplicationController

  def home
    flash[:notice] = "Welcome bro"
  end

  def about
  end

end