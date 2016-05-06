class AppointmentsController < ApplicationController

	def index
		@appointments = Appointment.all
	end

	def new
		@appointment = Appointment.new
		@user = User.find_by(id: session[:user_id])
	end

	def create
		@appointment = Appointment.new(appointment_params)
		@appointment.mentor_id = current_user.id


		@appointment.topics = params[:topics].split(" ").map do |topic_name|
			Topic.first_or_create(name: topic_name)
		end

		if @appointment.save
			redirect_to @appointment
			else
				render 'new'
			end
	end

	def show
		@appointment = Appointment.find(params[:id])
		@mentor = User.find_by(id: @appointment.mentor_id)
	end

	def update
		@appointment = Appointment.find(params[:id])
		@appointment.student_id = session[:user_id]
		if @appointment.update(student_id: session[:user_id])
			redirect_to appointments_path
		else
			flash.now.alert = "Unable to book appointment."
			render 'index'
		end
	end

	private
		def appointment_params
			params.require(:appointment).permit(:start_time, :end_time, :mentor_id, :student_id, :phase, :body)
		end

end