class CreateAssignments < ActiveRecord::Migration[7.0]
  def change
    create_table :assignments do |t|
      t.references :table, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.datetime :assigned_time

      t.timestamps
    end
  end
end
