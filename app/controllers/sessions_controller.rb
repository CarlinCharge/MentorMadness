class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      # if user.type == 'Mentor'
      #   redirect to user_path(@mentor)
      # elsif user.type == 'Student'
      #   redirect_to student_path(@student)
      # end
      redirect_to user_path(user)
    else
      render 'new'
    end
  end

  def destroy
    session.clear
    redirect_to root_path
  end

end
