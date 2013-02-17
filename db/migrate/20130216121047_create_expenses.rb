class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.string :title
      t.text :description
      t.integer :price
      t.timestamps
      t.belongs_to :purchase
    end
  end
end
