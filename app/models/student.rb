class Student < ApplicationRecord
  has_secure_password
  belongs_to :cohort
  has_one :student_note
  has_many :submissions 





end
