class CreateDrinks < ActiveRecord::Migration[7.0]
  def change
    create_table :drinks do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.string :status

      t.timestamps
    end
  end
end
