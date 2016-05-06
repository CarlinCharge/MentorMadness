class User < ActiveRecord::Base
  has_secure_password
  has_many :reviews

validates :full_name, :type, presence: true
validates :email, presence: true, uniqueness: true

  def is_mentor?
    self.type == "Mentor"
  end

end
