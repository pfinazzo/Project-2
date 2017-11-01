class Lesson < ApplicationRecord
  belongs_to :user
  belongs_to :student, class_name: 'User', optional: true

  scope :available, -> { where(student_id: nil) }
  scope :booked, -> { where.not(student_id: nil) }
  
end
