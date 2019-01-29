class Student < ApplicationRecord
  has_secure_password
  belongs_to :cohort
  has_one :student_note
  has_many :submissions
  has_many(:events, {through: :cohort})
  has_many(:admins, {through: :cohort})
  has_many(:assignments, {through: :cohort})





end
