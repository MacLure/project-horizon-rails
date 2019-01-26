class CreateAdmins < ActiveRecord::Migration[5.2]
  def change
    create_table :admins do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password_digest
      t.bigint :phone
      t.string :image_url

      t.timestamps
    end
  end
end
