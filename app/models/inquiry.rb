class Inquiry < ApplicationRecord
  has_one_attached :file
  validates :fname, presence: true, length: {maximum: 15}
  validates :lname, presence: true, length: {maximum: 15}
  validates :mname, presence: true, length: {maximum: 15}
end
