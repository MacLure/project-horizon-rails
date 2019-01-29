class Submission_comment < ApplicationRecord
belongs_to :submission
belongs_to :student, through :submission
end
