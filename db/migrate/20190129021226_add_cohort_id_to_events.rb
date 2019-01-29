class AddCohortIdToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events ,:cohort_id, :integer

  end
end
