class Event < ApplicationRecord
  belongs_to :cohort
  belongs_to :student, through :cohort

end
