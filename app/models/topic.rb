class Topic < ActiveRecord::Base
  has_many :appointment_topics
  has_many :appointments, through: :appointment_topics

  validates :name, presence: true
end
