class CreatePickups < ActiveRecord::Migration
  def change
    create_table :pickups do |t|
      t.integer :order_id
      t.integer :retriever_id
      t.boolean :fulfilled, default: false
      t.timestamps
    end
  end
end
