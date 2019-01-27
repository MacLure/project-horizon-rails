class MoreTables < ActiveRecord::Migration[5.2]
  def change
    create_table :submissions do |t|
      t.integer :assignment_id
      t.integer :student_id
      t.string :url
      t.string :body
      t.boolean :is_approved
      t.timestamps
    end

    create_table :student_notes do |t|
      t.integer :admin_id
      t.integer :student_id
      t.string :body
      t.timestamps
    end

    create_table :submission_comments do |t|
      t.integer :admin_id
      t.integer :submission_id
      t.string :body
      t.timestamps
    end

    create_table :events do |t|
      t.string :name
      t.integer :company_id
      t.integer :contact_id
      t.date :date
      t.time :time
      t.string :name
      t.string :body
      t.timestamps
    end

    create_table :contacts do |t|
      t.string :first_name
      t.string :last_name
      t.bigint :phone
      t.string :email
      t.string :title
      t.timestamps
    end

    create_table :contact_notes do |t|
      t.integer :admin_id
      t.integer :contact_id
      t.string :body

      t.timestamps
    end

    create_table :company_notes do |t|
      t.integer :admin_id
      t.string :body

      t.timestamps
    end

  end

  
end
