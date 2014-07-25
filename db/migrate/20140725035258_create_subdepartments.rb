class CreateSubdepartments < ActiveRecord::Migration
  def change
    create_table :subdepartments do |t|
      t.string :title
      t.string :abbr
      t.integer :order_number
      t.references :faculty, index: true

      t.timestamps
    end
  end
end
