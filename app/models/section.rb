class Section < ApplicationRecord
  belongs_to :course
  has_many :enrollments, dependent: :destroy
  has_many :students, through: :enrollments, dependent: :destroy

  def name
    "#{course.name} #{number}"
  end

  validates :semester, presence: true
  validates :course, presence: true
  validates :number, presence: true
  validates :roomnumber, presence: true
end
