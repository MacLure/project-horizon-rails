class CreateAssignments < ActiveRecord::Migration[5.2]
  def change
    create_table :assignments do |t|
      t.integer :cohort_id
      t.string :name
      t.text :body
      t.date :due_date

      t.timestamps
    end
  end
end
