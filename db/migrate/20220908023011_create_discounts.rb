class CreateDiscounts < ActiveRecord::Migration[7.0]
  def change
    create_table :discounts do |t|
      t.string :name
      t.string :code
      t.float :money

      t.timestamps
    end
  end
end
