class Review < ActiveRecord::Base
  belongs_to :user

  validates :rating, :body, :user_id, :appointment_id, presence: true
end
