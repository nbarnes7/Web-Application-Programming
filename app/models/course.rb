class Course < ApplicationRecord
  has_many :sections

  validates :name, presence: true
  validates :department, presence: true
  validates :number, presence: true
  validates :credithours, presence: true
end
