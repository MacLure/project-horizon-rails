class CohortsCourseType < ActiveRecord::Migration[5.2]
  def change
    remove_column :cohorts, :course_type, :integer
    add_column :cohorts, :course_type, :string
  end
end
