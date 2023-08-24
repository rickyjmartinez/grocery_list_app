class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :item_name
      t.integer :quantity
      t.integer :user_id
      t.integer :household_id

      t.timestamps
    end
  end
end
