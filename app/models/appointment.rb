class Appointment < ActiveRecord::Base
  belongs_to :Mentor
  has_one :Student
  has_many :topics, through: :appointment_topics

  validates :start_time, :end_time, :mentor_id, :phase, :body, presence: true
end
