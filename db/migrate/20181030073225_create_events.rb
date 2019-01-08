class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.integer :user_id
      t.string :title
      t.text :description
      t.string :image_url
      t.integer :price
      t.integer :stock_quantity

      t.timestamps
    end
  end
end
