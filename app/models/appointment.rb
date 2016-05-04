class Appointment < ActiveRecord::Base
  belongs_to :Mentor
  has_one :Student
  has_many :topics, through: :appointment_topics
end
