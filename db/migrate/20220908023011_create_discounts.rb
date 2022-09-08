class CreateDiscounts < ActiveRecord::Migration[7.0]
  def change
    create_table :discounts do |t|
      t.string :name, null: false
      t.string :code, null: false
      t.float :money, null: false

      t.timestamps
    end
  end
end
