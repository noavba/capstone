class User < ApplicationRecord
  has_many :inquiries
  has_secure_password

  validates :username, presence: true, uniqueness: true
  validates :password_digest, presence: true
  validates :email, presence: true, format: {with: URI::MailTo::EMAIL_REGEXP}

end
