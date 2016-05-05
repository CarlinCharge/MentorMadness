class Appointment < ActiveRecord::Base
  belongs_to :Mentor
  has_one :Student
  has_many :topics, through: :appointment_topics

  validates :start_time, :end_time, :mentor_id, :phase, :body, presence: true
<<<<<<< HEAD
=======

  validate :length_of_appointment_is_appropriate?
  validate :appointment_is_in_the_future?

  def length_of_appointment_is_appropriate?
    (self.end_time - self.start_time)/60 == 30 || (self.end_time - self.start_time)/60 == 60
  end

  def appointment_is_in_the_future?
    self.start_time > Time.now
  end

>>>>>>> master
end
