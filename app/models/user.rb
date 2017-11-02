class User < ApplicationRecord
  has_many :lessons, dependent: :destroy
  has_many :lessons_attending, class_name: 'Lesson', foreign_key: :student_id
  has_attached_file :image, styles: { medium: "500x500", thumb: "250x250"}, presence: true
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  has_secure_password
  validates :email, presence: true, uniqueness: true
  validates :password, length: { minimum: 4 }
end
