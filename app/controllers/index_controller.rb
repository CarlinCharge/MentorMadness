class IndexController < ApplicationController

  def index
    if logged_in?
      @user = User.find_by(id: session[:user_id])
      redirect_to user_path(@user)
    else
      redirect_to login_path
    end
  end

end
