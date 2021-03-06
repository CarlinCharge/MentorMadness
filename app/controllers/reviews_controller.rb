class ReviewsController < ApplicationController

  def new
    @user = User.find_by(id: session[:user_id])
    @appointment = Appointment.find_by(id: params[:id])
    @review = Review.new
  end

  def create
    @appointment = Appointment.find_by(id: params[:appointment_id])
    @user = User.find_by(id: session[:user_id])
    @new_review = Review.new(rating: params[:review][:rating], body: params[:review][:body], user_id: session[:user_id], appointment_id: params[:appointment_id])
    @reviews = Review.all

    if @new_review.save
      redirect_to appointment_path(@appointment)
    else
      render 'new'
    end
  end

  def show
    @review = Review.find(params[:id])
    @appointment = Appointment.find(params[:id])
    redirect_to @appointment
  end

  private
    def review_params
      params.require(:review).permit(:rating, :body, :user_id, :appointment_id)
    end

end