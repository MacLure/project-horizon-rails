class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.bigint :phone
      t.string :email
      t.string :password_digest
      t.string :image_url

      t.timestamps
    end
  end
end
