class ReviewsController < ApplicationController

  def new
    @review = Review.new
    @user = User.find_by(id: session[:user_id])
    @appointment = Appointment.find_by(id: params[:id])
  end

  def create
    @review = Review.new(review_params)
    @appointment = Appointment.find_by(id: params[:id])
    if @review.save
      redirect_to @review
    else
      render 'new'
    end
  end

  def show
    @review = Review.find(params[:id])
    @appointment = Appointment.find(params[:id])
    redirect_to @appointment
  end

end