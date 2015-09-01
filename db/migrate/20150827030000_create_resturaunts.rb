class CreateResturaunts < ActiveRecord::Migration
  def change
    create_table :resturaunts do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.string :website

      t.timestamps
    end
  end
end
