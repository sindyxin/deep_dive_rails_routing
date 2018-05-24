class PagesController < ApplicationController
  def about
  end

  def contact
  end
  def home
  end
  def something 
    @else = params[:else] #else this word must same as routes.rb after query/
    @anther_else = params[:anther_else] #anther_else this word must same as routes.rb after query/else/
  end
end
