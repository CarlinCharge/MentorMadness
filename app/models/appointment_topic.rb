class AppointmentTopic < ActiveRecord::Base
  belongs_to :appointment
  belongs_to :topic
end
