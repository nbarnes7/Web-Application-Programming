class Enrollment < ApplicationRecord
  belongs_to :section
  belongs_to :student

  validates :student_id, presence: true
  validates :section_id, presence: true

  def name
    "#{section.course.name}"
  end
end
