class ReviewsController < ApplicationController

  def new
    @review = Review.new
    @user = User.find_by(id: session[:user_id])
    @appointment = Appointment.find_by(id: params[:id])
  end

  def create
    @appointment = Appointment.find_by(id: params[:id])
    @user = User.find_by(id: session[:user_id])
    @review = Review.new(review_params)

    if @review.save
      redirect_to appointment_review_path
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