class CreateFaculties < ActiveRecord::Migration
  def change
    create_table :faculties do |t|
      t.string :title
      t.string :abbr
      t.integer :order_number

      t.timestamps
    end
  end
end
