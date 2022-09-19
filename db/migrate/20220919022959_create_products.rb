class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.float :price, null: false
      t.integer :quantity, null: false
      t.string :description
      t.string :origin
      t.string :color
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
