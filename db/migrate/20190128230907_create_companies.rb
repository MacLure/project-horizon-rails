class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :address
      t.string :website
      t.bigint :phone

      t.timestamps
    end
  end
end
