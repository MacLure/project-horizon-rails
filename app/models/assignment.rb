class Assignment < ApplicationRecord
  belongs_to :cohort
  belongs_to :admin through :cohort 
end
