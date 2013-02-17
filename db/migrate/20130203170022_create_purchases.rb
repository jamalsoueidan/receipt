class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.string :title
      t.text :description
      t.integer :price
      t.boolean :sold, :default => false
      t.timestamps
    end
  end
end
