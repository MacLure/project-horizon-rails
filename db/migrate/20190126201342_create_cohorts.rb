class CreateCohorts < ActiveRecord::Migration[5.2]
  def change
    create_table :cohorts do |t|
      t.date :start_date
      t.date :end_date
      t.string :name
      t.integer :course_type

      t.timestamps
    end
  end
end
