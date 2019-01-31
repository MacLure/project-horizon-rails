class Student < ApplicationRecord
  has_secure_password
  belongs_to :cohort
  has_many :student_notes
  has_many :submissions
  has_many(:events, {through: :cohort})
  has_many(:admins, {through: :cohort})
  has_many(:assignments, {through: :cohort})
  has_many(:sibmission_comments, {through: :submissions})


  def self.from_token_payload payload
    self.find payload["sub"]
  end

end
