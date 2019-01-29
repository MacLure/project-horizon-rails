class Submission < ApplicationRecord
belongs_to :student
belongs_to :cohort, through :student
has_many :submission_comments
end
