class AddTitleToAdmins < ActiveRecord::Migration[5.2]
  def change
  
    add_column :admins ,:title, :string
  end
end
