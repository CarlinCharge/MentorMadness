class Appointment < ActiveRecord::Base
  belongs_to :Mentor
  has_one :Student
  has_many :appointment_topics
  has_many :topics, through: :appointment_topics

  validates :start_time, :end_time, :mentor_id, :phase, :body, presence: true

  validate :length_of_appointment_is_appropriate?
  validate :appointment_is_in_the_future?

  def length_of_appointment_is_appropriate?
    if (self.end_time - self.start_time)/60 != 30 || (self.end_time - self.start_time)/60 != 60
      self.errors.add(:end_time, "Appointments must be in 30 or 60 minute increments")
    end
  end

  def appointment_is_in_the_future?
    if self.start_time < Time.now
      self.errors.add(:start_time, "Appointments must be in the future")
    end
  end

  def overlap?
    any_overlap = Appointment.where(mentor_id: self.mentor_id).any? do |appt|
      self.start_time < appt.end_time && self.end_time > appt.start_time
    end

    if any_overlap
      self.errors.add(start_time:, "Appointments overlap")
    end
  end

end
