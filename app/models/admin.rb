class Admin < ApplicationRecord
  has_secure_password
  has_many  :cohorts

  validates :email, uniqueness: true, presence: true
  validates :password_digest, presence: true, length: { minimum: 6 }






end
