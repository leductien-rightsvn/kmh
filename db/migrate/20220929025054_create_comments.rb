class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.references :user, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true
      t.string :content
      t.integer :status

      t.timestamps
    end
  end
end
