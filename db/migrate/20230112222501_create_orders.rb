class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.references :table, null: false, foreign_key: true
      t.datetime :order_time
      t.string :status

      t.timestamps
    end
  end
end
