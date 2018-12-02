class Student < ApplicationRecord
  has_many :enrollments, dependent: :destroy
  has_many :students, through: :enrollments, dependent: :destroy

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :number, presence: true

  def name
    "#{first_name} #{last_name}"
  end
end
