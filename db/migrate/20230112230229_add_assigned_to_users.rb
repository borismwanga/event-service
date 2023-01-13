class AddAssignedToUsers < ActiveRecord::Migration[7.0]
  def change
    add_reference :users, :table, null: false, foreign_key: true
  end
end
