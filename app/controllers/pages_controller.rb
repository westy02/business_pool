class PagesController < ApplicationController
  skip_before_filter :authenticate_user!, :except => :home
  
  def index
    if user_signed_in?
      redirect_to pages_home_path
        end
  end
  
  def home
    @user = current_user
  end
  
  def help
  end
  
end
