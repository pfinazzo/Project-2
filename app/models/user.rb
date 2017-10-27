class User < ApplicationRecord
  has_many :lessons
  has_attached_file :image, styles: { medium: "500x500", thumb: "250x250"}, presence: true
  has_secure_password
  validates :email, presence: true, uniqueness: true
  validates :password, length: { minimum: 4 }
end
