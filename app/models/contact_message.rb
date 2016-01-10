class ContactMessage < ActiveRecord::Base
  before_save { self.email = email.downcase }
  validates :name, presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email,
            format:     { with: VALID_EMAIL_REGEX }
  validates :message, presence: true
end
